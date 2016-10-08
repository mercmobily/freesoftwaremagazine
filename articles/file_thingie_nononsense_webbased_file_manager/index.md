---
nid: '3760'
title: 'File Thingie: A No-Nonsense Web-Based File Manager'
authors: 'Dmitri Popov'
published: '2012-05-17 1:37:19'
license: verbatim_only
section: hacking
main_image: main.jpeg
listed: 'true'

---
[File Thingie](http://www.solitude.dk/filethingie/) is not the sleekest or feature-richest web-based file manager out there, but it's a perfect fit for those who need a no-frills solution that is easy to deploy and use. This is not to say that File Thingie skimps on features. All the essential functionality is there, including the ability to upload multiple files in one go, support for users and groups, file access control based on black and white lists, and more.

#Installing File Thingie

Deploying File Thingie on your server couldn't be easier. Grab the latest release of the application and unpack the downloaded archive. Rename the *config.sample.php* to *config.php*, open it in a text editor, and specify the desired user name and password as follows:

    define("USERNAME", "user");
    define("PASSWORD", "password");

Next you should specify the root directory. By default, it is set to ".", but it's a good idea to create a dedicated directory for storing files and documents, or point File Thingie to an existing folder. There are other settings you can tweak, too. For example, you can adjust the maximum file size allowed to upload as well as specify users and groups. Also, you can tweak the default file types in the black list, if necessary.

Once you've configured the basic settings, save the *config.php* file, and move the entire File Thingie directory to the document root of your server. Make the root directory writable by the server. One way to do this is to change the directory's owner using the following chown command:

	chown -R www-data:www-data /path/to/filethingie/root/directory

That's all there is to it. Point your browser to *http://127.0.0.1/filethingie* (replace *127.0.0.1* with the actual IP address or domain name of your server), and log in to the file browser using the specified credentials.

#Using File Thingie

File Thingie's interface is rather spartan and supremely easy to use. In fact, you can figure out how to use all File Thingie's features in a matter of minutes.

=IMG=filethingie.png=File Thingie=

Besides the ability to upload files and documents and search through them, File Thingie allows you to add new folders as well as create empty text files. Better yet, you can use the **From URL** option to fetch a file from a remote host. File Thingie also comes with a basic text editor which you can use to edit text and HTML files.

All in all, despite its rather bare-bones interface and complete lack of fancy trimmings, File Thingie is a genuinely useful web-based file manager that lets you manage files and documents with a minimum of fuss.