---
nid: '2601'
title: 'Prism: bringing web applications to the desktop'
authors: 'Scott Nesbitt'
published: '2008-07-08 2:25:02'
tags: 'firefox,web-applications,browser'
issue: issue_22
license: cc-by-nc-nd
section: end_users
listed: 'true'

---
Are you still using a web browser to access your favourite online applications? Why not do things the easy way, and make those applications part of your desktop with Prism.

<!--break-->

# Introduction

Web-based applications--ranging from office suites to communications tools to wikis--have become immensely popular in the last two or three years. Of course, getting to those applications means launching a browser, navigating to a URL, and logging in. 

What if you could start those web applications in the same way that you would an application that is installed on your computer? That's where [Prism](http://labs.mozilla.com/featured-projects/#prism) comes in. 

Prism enables you to create desktop shortcuts that open web applications in their own windows--just like you would [OpenOffice.org Calc](http://www.openoffice.org/product/calc.html) or [The GIMP](http://www.gimp.org). And you don't have to worry about all the distractions that exist in a browser window.

# What is Prism Anyway?

Prism is a project from [Mozilla Labs](http://labs.mozilla.com/) and is, obviously, based on the Firefox web browser. Prism was originally called Webrunner, and was a tad difficult to use. You had to run it from the command line with a URL. Not the most user-friendly way of accessing your favorite web applications! Now, Prism has a graphical user interface (albeit a simple one) and makes it easy to bring web applications to your desktop.

Since it's based on Mozilla, Prism will work with just about any web application out there. Keep in mind, however, that some web applications require Flash or Java. If you have Flash and Java installed, then Prism will use them.

=ZOOM=Prism makes it easy to bring web applications to your desktop=

I've found that Prism is especially well suited for use with the following types of web applications:

* Web-based email; 
* Online productivity tools like word processors or spreadsheets;
* Task management tools;
* Wikis.

Of course, those are personal preferences based on the way I use the web. You really need to try Prism out with as many web applications as you can to find out what works best for you. 

# Why Use Prism?

So, why use Prism instead of bookmarking sites in a web browser, or putting links on your desktop? A few reasons. First, Prism loads a web application faster than just about any web browser. My main computer is a ThinkPad T41 notebook, with a 1.6 GHz processor and 1 GB of memory. I compared the start times of various web applications launched in Prism against the launch times of several web browsers, including Firefox and Opera. In every instance, Prism loaded faster by several seconds.

<!--pagebreak-->

On top of that, you don't get all of the clutter that you find in a web browser. No tool or menu bars, or anything else to distract you. All you see are the controls for whatever web application you're using. As I always stress, working with Prism is a lot like working with your favourite desktop software.

# Downloading and Installing the Software

You can't install Prism using the Synaptic Package Manager or, to my knowledge, any other Linux package management system. At least, not yet. You need to get the software the old fashioned way, by [downloading an archive](http://people.mozilla.org/~mfinkle/prism/prism-0.8-linux.tar.bz2). Once you've downloaded it, all you have to do is extract the contents of the archive somewhere on your computer using the GNOME archive manager, or whatever utility that you use to created and decompress archives.

Where to the Prism software is up to you. I installed it in a directory named `/bin' in my `/home' directory. That's probably not the recommended way to do this; many Linux users prefer to install software in directories like `/usr/local' or `/opt'. I just don't like having to deal with all the potential permission problems that come with installing software by hand into system directories.

Next, put a shortcut to Prism on your desktop. This is an optional step, but I find it convenient to double-click a desktop icon whenever I want to install a web application. In GNOME, right-click on the desktop and select Create Launcher from the menu that appears. On the Create Launcher dialog box, type Prism in the Name field, and then click Browse to search for the directory in which you installed the software--for example, `/home/scott/bin/prism/prism'. Then, click OK.

=IMAGE=Create_Launcher.jpg=Figure 1: adding a shortcut to Prism to the desktop=

Now, you're ready to go.

# Adding Web Applications, the Hard Way

When I say _hard_, I don't mean that adding web applications is difficult. It's not. You'll just have to do a bit of work yourself. An easier, though less flexible, way of adding links to web applications is discussed later in this article.

To get started, double click on the Prism icon that you added to your desktop. A dialog box appears.

=IMAGE=prism_add.jpg=Figure 2: adding a link to a web application=

There are really only three items that you need to fill in on this dialog box. The first, obviously, is the address of the web application that you want to use. The second is the name of the application--say, Gmail. This will be the label of the icon on your desktop. The third is to click the _Desktop_ option to add the shortcut to your desktop. 

The other options on the dialog box may or may not be useful to you. Clicking the Show location bar option displays the URL of the web application at the top of the window. To be honest, I find this quite distracting. The Show status messages and progress option adds a progress bar to the bottom of the application window. Again, it's a bit distracting. On the other hand, a number of web applications have keyboard shortcut keys which, for example, enable you to move to the next message or to quickly page up or down. If you use these shortcuts, then click the Enable navigation keys option.

Once you've set up the web application, click OK. The icon appears on your desktop. To launch the application, just double click a shortcut and the application opens in its own window. 

=IMAGE=webapp.jpg=Figure 3: a web application launched from the desktop=

# Adding Web Applications, the Easy Way

That's quite a bit of work. Why do all of that when you can take advantage of pre-packaged links? 

<!--pagebreak-->

The folks behind Prism call these packages [_bundles_](http://wiki.mozilla.org/Prism#Bundles), and they're simply a set of configuration information and icons for a particular web application collected in a small archive.

=ZOOM=With bundles, you set up a web application quickly and easily=

To use a bundle, just download it and copy it to your desktop. Then, double click on it. With many Linux distributions, the Prism bundles (which have the extension `.webapp') should be automatically associated with Prism. You experience might vary from distribution to distribution. I wasn't able to, for example, get any bundles to work under Xubuntu.

As of this writing, there are only a small number of Prism bundles available. Most of them are for popular web applications like Gmail, Facebook, Bloglines, Twitter, and Flickr. This [list](http://wiki.mozilla.org/WebRunner#Bundles) is gradually increasing in size.

# Tips, Tricks, and Gotchas

There are a few things that you can do with Prism to make your experience with it even better. And there are a couple of things that you need to watch out for.

## Changing the desktop icon

You may notice that after you install a web application, the desktop shortcut uses the default Prism icon: a blue globe. Not that it's a bad icon, but you probably want an icon of the logo of a particular web application or one that indicates the function of the web application that you're using -- for example, an envelope for a web-based mail application.

It's easy enough to change the icon. Just right-click on shortcut and select Properties from the menu that appears. When the Properties dialog box opens, click the application icon in the upper left. Then, navigate to the directory `/usr/share/icons', which is the default location of system icons in GNOME. You'll have to navigate through a few directories to find an icon that you like.

=IMAGE=Select_Custom_Icon.jpg=Figure 4: choosing a new icon=

The set of icons that comes pre-installed with GNOME (or any other window manager) may not be quite what you're looking for. However, you can find icons for a variety of web applications by doing a search using Google or your favourite search engine. When you find the icons that suit your needs, just copy them to a folder in your `/home' directory and the point to that directory instead of `/usr/share/icons'.

=IMAGE=prism_icons.jpg=Figure 5: custom Prism icons on the author's desktop=

## Make Logging In Easier

A lot of web sites and applications use splash pages, which are introductory pages that you have to navigate past in order to log in. I don't know about you, but I find splash pages annoying. When setting up your Prism shortcuts, you can bypass a splash page by specifying the address of the log in page rather than the site or application's main page. For example, I use an online photo editor called Picnik which has a splash page. The log in page is `http://www.picnik.com/app'. When I set up Picnik as a Prism shortcut, I pointed directly to the log in page.

For better or for worse, Prism doesn't pass your user name and password to the web application to which you're connecting. If you don't want to continually enter your user name and password when launching an application in Prism, click the option that enables the web application to remember you. This could be labelled _Remember me_ or _Keep me logged in_ depending on the application. Not all web applications support this feature, and it doesn't always work with Prism. 

## Hitting a Couple of Snags

While Prism is a fairly solid application, you may run into problems while using it. I've consistently run into the following two.

=ZOOM=Prism, while solid, does have a few problems=

First, when using a web-based mail application or an online word processor I've found that I can't edit the body of a message or whatever it is I'm writing. If Prism hasn't hung, I've found that the best way around this problem is to save my work, close the Prism window, and then restart the application. It doesn't always work, though.

You can run two or more applications at the same time using Prism. But every so often, you may get an error message complaining that another copy of Prism is running. When this happens, wait a few seconds and then try launching the application again. if the problem persists, you'll have to resort to drastic measures. Open a terminal window, and then type `ps -u user_name`, where `user_name` is your user name. A list of all the processes that are running on your computer appears. Note the number beside Prism, and then type `kill` followed by the number. That will shut down all running instances of Prism, so use the kill command with extreme care.

# Conclusion

With the web becoming such an integral part of our lives, it's only natural that many of our computing needs are moving to the web. With Prism, you can seamlessly access and use your favourite web applications in the same way that you do the software that's installed on your computer.