---
nid: '3778'
title: 'Prettify Your Server with h5ai'
authors: 'Dmitri Popov'
published: '2012-06-19 6:45:59'
tags: 'apache,server,php5'
license: cc-by-sa
section: end_users
main_image: 20120217_180420.jpg
listed: 'true'

---
[h5ai](http://larsjung.de/h5ai/) is a "modern web server index." What's that, you may ask? Basically, it's a simple software that prettifies the default interface the Apache web server uses to list files in a directory. This may not sound like much, but if you want to publish files on the web using Apache (or any other supported web server, for that matter), this unassuming tool can make the whole experience of browsing and downloading files more pleasant -- which is a positively good thing.

<!--break-->

Another good thing about h5ai is that deploying it on a web server is a rather straightforward procedure. Grab the latest release of the software from the project's website or [GitHub repository](https://github.com/lrsjng/h5ai), unpack the downloaded archive, and move the `_h5ai` directory to the document root of your server. To enable caching, make the `_h5ai/cache` directory writable by the server (this step is optional). Assuming you are running Apache with the htaccess feature enabled, create a `.htaccess` file in the directory containing the files you want to publish. Open then the file in the text editor, and enter the following line:

	DirectoryIndex  index.html  index.php  /_h5ai/php/h5ai-index.php

Save the file, and you are done. Point your browser to the published directory, and you should see a prettified version of it.

=IMG=h5ai.png=Web server index prettified with h5ai=

h5ai is definitely a one-trick pony, but the trick it does is a rather clever one -- which makes it a useful tool for anyone running a web server.