
// This is how Ryver plugins load ryver
var ryver = module.parent.exports.ryver;
var fs = module.parent.require('fs-extra');
var p = require('path');

var ryverLister = module.parent.require('../core_plugins/ryver-lister');

var eventEC = ryver.eventEC;

/*

* PREPROCESS STAGES

beforePreProcessFilters // HOOK
preProcessFilters //  FILTER. DEFINED BY HOOK "filter"
afterPreProcessFilters // HOOK

* FILTERING STAGES

beforeFilters // HOOK
preFilters, filters, postFilters // FILTER. DEFINED BY HOOK "filter"
afterFilters // HOOK

* POSTPROCESS STAGES

beforeDelayedPostProcess // HOOK. ONLY if processing had been delayed
beforePostProcessFilters // HOOK
postProcessFilters //  FILTER. DEFINED BY HOOK "filter"
afterPostPocessFilters // HOOK
afterEverything // HOOK
afterDelayedPostProcess // HOOK. ONLY if processin had been delayed

* FINAL AND AFTER-CREATOON STAGES

allDone // HOOK
alsoRefilter // HOOK
watch // HOOK

*/

// INITIAL STAGES: PREPROCESS FILTER (SURROUNDED BY HOOKS)
// The beforePreProcessFilter is particularly important as
// it runs BEFORE the filtering pipeline is establish. this
// enables the frontmatter module to change fileData.filter and
// actually have an effect

// HOOK
eventEC.onCollect( 'beforePreProcessFilters', function( cb ){
  var f = function( fileData, cb ){
      cb( null );
  }
  // Return the function just defined as the filter
  cb( null, { name: 'custom', executor: f } );
});

// At this point, the changes to filter variables in fileData will no longer have
// any effect as the processing pipeline is already created

// HOOK
eventEC.onCollect( 'afterPreProcessFilters', function( cb ){
  var f = function( fileData, cb ){
      cb( null );
  }
  // Return the function just defined as the filter
  cb( null, { name: 'custom', executor: f } );
});


// FILTERING STAGES: PREFILTER, FILTER AND POSTFILTER (SURROUNDED BY HOOKS)
// preFilters, filter, postFilters are where users normally set their own
// filtering.

//HOOK
eventEC.onCollect( 'beforeFilters', function( cb ){
  var f = function( fileData, cb ){
      cb( null );
  }
  // Return the function just defined as the filter
  cb( null, { name: 'custom', executor: f } );
});

// FILTER: make summary 
eventEC.onCollect( 'filter', function( cb ){
  var f = function( fileData, cb ){
    fileData.info.summary = fileData.contents.toString().split('<!--break-->')[0].replace(/<\/?[^>]+(>|$)/g, "").substr(0, 200 ) + ' ...';   
    cb( null );
  }
  // Return the function just defined as the filter
  cb( null, { name: 'make-summary', executor: f } );
});

// FILTER: explode FSM tags
eventEC.onCollect( 'filter', function( cb ){
  var f = function( fileData, cb ){

    if( ! fileData.contents.replace || ! fileData.info.listed ) return cb( null );

    //console.log("CONTENTS BEFORE THE CURE:", fileData.contents );

    // CODE_START AND CODE_END
    fileData.contents = fileData.contents.replace( /=CODE_START=[\r\n]+([\s\S]*?)=CODE_END=[\r\n]+/gm, function( matches, code ){
      return "\n\n" + code.replace(/^/gm,'    ') + "\n\n";
    });

    // TEXTBOX_START AND TEXTBOX_END
    fileData.contents = fileData.contents.replace( /=TEXTBOX_START=(.*?)=[\r\n]+([\s\S]*?)=TEXTBOX_END=[\r\n]+/gm, function( matches, heading, contents ){
      return `\n\n<div class="TEXTBOX">\n<h2>\n\n${heading}\n\n</h2>\n<div class="textbox-contents">\n\n${contents}\n\n</div>\n</div>` + "\n\n";
    });

    // IMG "FAMILY" (to be fixed later)
    fileData.contents = fileData.contents.replace( /=(IMAGE|IMG|IMG_CLEAR|IMAGE_BIG|IMG_PRIVATE)=(.*?)=(.*?)=[\r\n]+/gm, function( matches, dummy, src, caption ){
      return `\n\n<div class="image">\n<div class="caption">\n\n${caption}\n\n</div>\n<div class="img"><img src="${src}"></img>\n</div>\n</div>` + "\n\n";
    });


    // TABLE CAPTION
    fileData.contents = fileData.contents.replace( /=TABLE_CAPTION=(.*?)=[\r\n]+/gm, function( matches, caption ){
      return `\n\n<div class="table-caption">\n\n${caption}\n\n</div>\n\n`;
    });


    // ZOOM
    fileData.contents = fileData.contents.replace( /=ZOOM=(.*?)=[\r\n]+/gm, function( matches, caption ){
      return `\n\n<div class="zoom">\n\n${caption}\n\n</div>\n\n`;
    });

    // YOUTUBE 
    fileData.contents = fileData.contents.replace( /=VIDEO=YOUTUBE=(.*?)=/gm, function( matches, id ){
      return `\n\n<div style="embedded-youtube"><object width="425" height="355"><param name="movie" value="http://www.youtube.com/v/${id}&rel=1"></param><param name="wmode" value="transparent"></param><embed src="http://www.youtube.com/v/${id}&rel=1" type="application/x-shockwave-flash" wmode="transparent" width="425" height="355"></embed></object></div>\n\n`;
    });

    // BLIP
    fileData.contents = fileData.contents.replace( /=VIDEO=YOUTUBE=(.*?)=/gm, function( matches, id ){
      return `\n\n<div style="embedded-blip"><embed src="http://blip.tv/play/${id}" type="application/x-shockwave-flash" width="425" height="355" allowscriptaccess="always" allowfullscreen="true"></embed></div>\n\n\n`;
    });

    //console.log("CONTENTS TO BE PASSED TO MARKDOWN IS:", fileData.contents );

    cb( null );
  }
  // Return the function just defined as the filter
  cb( null, { name: 'fsm-tags', executor: f } );
});




// HOOK
eventEC.onCollect( 'afterFilters', function( cb ){
  var f = function( fileData, cb ){
      cb( null );
  }
  // Return the function just defined as the filter
  cb( null, { name: 'custom', executor: f } );
});


// DELAYED FILTERING -- FIRST (BEFORE) HOOK
// Some filters are "delayed", which means that their processing will
// actually SUSPEND till ALL of the files to be processes have gone through the
// filters above.
// This is crucial for filters that need to gather information about ALL that
// was filter to function properly (see: lister)
// This happens when `fileData.info.delayPostProcess` is `true`
// If that is the case, 'beforeDelayedPostProcess will be triggered'

// HOOK
eventEC.onCollect( 'beforeDelayedPostProcess', function( cb ){
  var f = function( fileData, cb ){

    // This will make the full listData available to sitemap.xml, sitemap_news.xml, rss.xml
    var s = fileData.system;
    if( s.filePath == '' && ['sitemap', 'sitemap_news', 'rss'].indexOf( s.fileName ) != -1 ){
      fileData.info.fullList = ryverLister.listData._ALL_;
      cb( null );
    } else {
      cb( null );
    }

  }
  // Return the function just defined as the filter
  cb( null, { name: 'custom', executor: f } );
});


// POST PROCESS FILTERS (SURROUNDED BY HOOKS)
// postProcessFilter is where users will normally put templating things,
// since they will need ALL of the gathered information to be available.

// HOOK
eventEC.onCollect( 'beforePostProcessFilters', function( cb ){
  var f = function( fileData, cb ){
      cb( null );
  }
  // Return the function just defined as the filter
  cb( null, { name: 'custom', executor: f } );
});

// HOOK
eventEC.onCollect( 'afterPostProcessFilters', function( cb ){
  var f = function( fileData, cb ){

    var parts = fileData.system.filePath.split('/');

    if( parts[0] === 'articles' && parts[ 1 ] && fileData.info.nid ){
      var src = parts[1];

      var fullDest = p.join( ryver.getDst(), fileData.info.nid );
      fs.mkdir( fullDest, function( err ){
        //if( err ) return cb( err );

        var url = 'http://www.freesoftwaremagazine.com/articles/' + parts[1];

        fs.writeFile( p.join(fullDest, 'index.html'), `<html xmlns="http://www.w3.org/1999/xhtml">    
  <head>      
    <title>Free Software Magazine</title>      
    <meta http-equiv="refresh" content="0;URL='${url}'" />    
  </head>    
  <body> 
    <p>This page is actually located on <a href="${url}">
      www.freesoftwaremagazine.com</a>.</p> 
  </body>  
</html>    
`, function(err) {
          if( err ) return cb( err );

          cb( null );
        });
      });

    } else {
      cb( null );
    }

  }
  // Return the function just defined as the filter
  cb( null, { name: 'custom', executor: f } );
});

// HOOK
eventEC.onCollect( 'afterEverything', function( cb ){
  var f = function( fileData, cb ){
    cb( null );
  }
  // Return the function just defined as the filter
  cb( null, { name: 'custom', executor: f } );
});

// DELAYED FILTERING -- SECOND (AFTER) HOOK
// This hook is called in case the file's processing was effectively delayed

// HOOK
eventEC.onCollect( 'afterDelayedPostProcess', function( cb ){
  var f = function( fileData, cb ){

    cb( null );
  }
  // Return the function just defined as the filter
  cb( null, { name: 'custom', executor: f } );
});


// ALLDONE hook. This will trigger once _everything_ is done

// HOOK
eventEC.onCollect( 'allDone', function( cb ){
  var f = function( cb ){
      return cb( null );
  }
  // Return the function just defined as the filter
  cb( null, { name: 'custom', executor: f } );
});


// POST_CHANGES HOOKS.
// These hooks are used to help ryver re-generate files if needed

// HOOK
eventEC.onCollect( 'alsoRefilter', function( cb ){
  var f = function( affectedOrigins, cb ){
      return cb( null, [] );
  }
  // Return the function just defined as the filter
  cb( null, { name: 'custom', executor: f } );
});

// HOOK
eventEC.onCollect( 'watch', function( cb ){
  var f = function( op, URL, cb ){
    return cb( null, r );
  }
  // Return the function just defined as the filter
  cb( null, { name: 'custom', executor: f } );
});
