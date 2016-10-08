
// This is how Ryver plugins load ryver
var ryver = module.parent.exports.ryver;

var eventEC = ryver.eventEC;


/*

* PREPROCESS STAGES

beforePreProcessFilters // HOOK
preProcessFilters // FILTER
afterPreProcessFilters // HOOK

* FILTERING STAGES

beforeFilters // HOOK
preFilters // FILTER
filter // FILTER
postFilters // FILTER
afterFilters // HOOK

* POSTPROCESS STAGES

beforeDelayedPostProcess // HOOK. ONLY if processing had been delayed
beforePostProcessFilters // HOOK
postProcessFilters // FILTER
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

// FILTER
eventEC.onCollect( 'preProcessFilters', function( cb ){
  var f = function( fileData, cb ){
      cb( null );
  }
  // Return the function just defined as the filter
  cb( null, { name: 'custom', executor: f } );
});

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

// FILTER
eventEC.onCollect( 'preFilters', function( cb ){
  var f = function( fileData, cb ){
      cb( null );
  }
  // Return the function just defined as the filter
  cb( null, { name: 'custom', executor: f } );
});

// FILTER
eventEC.onCollect( 'filter', function( cb ){
  var f = function( fileData, cb ){
      cb( null );
  }
  // Return the function just defined as the filter
  cb( null, { name: 'custom', executor: f } );
});

// FILTER
eventEC.onCollect( 'postFilters', function( cb ){
  var f = function( fileData, cb ){
      cb( null );
  }
  // Return the function just defined as the filter
  cb( null, { name: 'custom', executor: f } );
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
      cb( null );
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

// FILTER
eventEC.onCollect( 'postProcessFilters', function( cb ){
  var f = function( fileData, cb ){
      cb( null );
  }
  // Return the function just defined as the filter
  cb( null, { name: 'custom', executor: f } );
});

// HOOK
eventEC.onCollect( 'afterPostPocessFilters', function( cb ){
  var f = function( fileData, cb ){
      cb( null );
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
