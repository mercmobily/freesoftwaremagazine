---
nid: '3775'
title: 'Generation of one-page, domain-oriented sites using PHP'
authors: 'David Jonathan'
published: '2012-03-20 0:00:00'
tags: 'sites,templates,php'
license: verbatim_only
section: hacking
main_image: main.png
listed: 'true'

---
A web site is a set of pages on a specific subject. It normally has sub-pages, and normally valuable information about the topic it covers.
What if a web site is dedicated to a property? Could you create a web site focused on a specific property, and also _named_ after the property? (something like 22birtonsthamiltonhill.com)? How would you create such a think based on free software?
(At the end of this article, you should be able to create a complete template system and a site containing the full list of sites, for [property sites](http://www.freesoftwaremagazine.com/sites/www.freesoftwaremagazine.com/files/re/index.html).

<!--break-->

First of all, is it ethically correct creating such a site? This is an interesting question, especially because there are many discussions going on about coming up in Google searches, and whether mini-sites should even be allowed.

My take is that a single property web site is a completely valid site since:

* The topic is the property the site covers, with a domain name that makes sense
* It has real, unique information about something specific
* It's doesn't have spam

# Apache's configuration

First of all, you will need to make sure that you put the configuration file in Apache as the "default" domain name and as the _first_ virtual domain; this way, Apache will use that configuration for any host that is _not_ listed as a ServerName now ServerAlias:

=CODE_START=
<VirtualHost *:80>
    DocumentRoot /home/www/minisites/htdocs
    CustomLog logs/minisites.log combined
    ErrorLog logs/minisites.err.log
</Virtualhost>
=CODE_END=

Again, make sure that this is the very first entry in your `httpd.conf`

# Making the CSS dynamic

For this exercise, you will need to make the CSS dynamic.
You can easily do that  by adding this to the code above:

=CODE_START=
    # Make CSS files interpreted
    AddHandler application/x-httpd-php .css
    <filesMatch "\.css$">
      FileETag None
      Header set Content-type "text/css"
    </filesMatch>
=CODE_END=

Note that the headers are important here.

# The site

There will obviously only be one `htdocs` directory for the whole thing.
This is what `index.php` will be like:

=CODE_START=
<?php 

  global $info;

  // Includes Markdown, which is always useful
  include('markdown.php');

  check_server_name();

  // Load the $info variable
  read_site_data();

  // Apply theme-wide changes
  include("theme/".$info->theme."/change_info.php");

  // Include the page
  include("theme/".$info->theme."/page.php");
  exit();

  function check_server_name(){
    $server_name = $_SERVER{'SERVER_NAME'};

    if(! preg_match('/^www\./',$server_name) && is_dir("../data/www.$server_name")){
      header( "Location: http://www.$server_name" );
      exit(1);
    }
  }

  function read_site_data(){
    global $info;

    $server_name = $_SERVER{'SERVER_NAME'};
    $info = new stdClass();
    $data_path = "../data/$server_name";

    // Check that the domain is actually managed
    if(!is_dir($data_path)){
      print "File not found";
      header("HTTP/1.0 404 Not Found");
      exit(1);
    }

    // Load each .txt file in the info directory in the respective variable
    //
    $files = glob("$data_path/*.txt");
    foreach($files as $file){
      $attribute = basename($file,'.txt');
      $info->$attribute = trim(file_get_contents($file));
    }

    // Default ones. These will be available in the template
    $info->url = "http://$server_name/";
  }

?>
=CODE_END=

This could also called "A poor man's templating system".
It's based on the fact that there is a directory called `data` which then contains the data for that particular mini-site.
In that directory, there will be several .txt files. For each file, the script will create a variable (or, actually, an attribute of the $info variable).
Note that it will also issue a `404 File not found` error if the mini-site is not there.

Also, in this poorman's templating system, there will need to be a `theme.txt` file which will contain the name of the theme used. Then, with the command   `include("theme/".$info->theme."/page.php")`, the theme is then loaded.

The `page.php` site in the theme would have something like this:

=CODE_START=
 <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="theme/green/style.css" />
    <title><?php print $info->name ?></title>
=CODE_END=

Where `$info->name` would obviously be translated into the contents of the file `name.txt`.

# A listing site

Having all of the info in separate .txt files might seem strange. However, it does have some advantages: for example, you can easily have a script that reads all of the property's sites and creates a "summary" mini-site which lists them all.

The site shown here, with [property sites](http://www.freesoftwaremagazine.com/sites/www.freesoftwaremagazine.com/files/re/index.html), was created with a simple PHP script in the `Downloads` section of this article. It's very basic, but it will definitely do the job!

# Conclusion

You might have single-page template-based sites for different reasons. The most important thing is to remember that the sites need to be "real", have unique contents and improve the world in general.

Happy hacking!

