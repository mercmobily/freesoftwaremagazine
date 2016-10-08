---
nid: '2455'
title: 'Gaia Ajax Widgets: no-JavaScript Ajax'
authors: 'Thomas Hansen'
published: '2007-10-22 10:34:50'
tags: 'ajax,programming,mono,asp.net,gaia'
issue: issue_20
license: gfdl
section: opinions
listed: 'true'

---
Imagine you need to create an Ajax application, and you’re scratching your head in frustration since you don’t understand `prototype.js`, you think using ASP.NET Ajax feels like building a car with scissors and paperclips and you don’t know enough Java to use GWT. If this is your problem, Gaia Ajax Widgets could solve your problem: Gaia abstracts away JavaScript, feels like normal ASP.NET, works on both ASP.NET and Mono—and it’s free software.


<!--break-->


Gaia Ajax Widgets GPL version is complete and also comes with support (if you register) but you must purchase a commercial license from Frost Innovation to be able to develop proprietary applications with it. Read the details here: [Gaia License Explained](http://ajaxwidgets.com/Blogs/thomas/gaia_license_explained.bb)


# Gaia Ajax Widgets puts the fun back into Ajax

Gaia Ajax Widgets is a GPL licensed library (a commercial license available from the company behind it). It is a 100% _Hijax library_, which means that you don’t need to write JavaScript at all to use it. You use components as if they where Qt Widgets, and you declare which events you wish to handle by setting the proper handlers.

Before you can start using it, you must [download Gaia Ajax Widgets](http://ajaxwidgets.com/Downloads/Gaia_Ajax_Web_Widgets_Q2_2007_GPL_Version.tar.gz). For this tutorial, I will be using MonoDevelop running on GNU/Linux and the GPL version of Gaia Ajax Widgets.

One word of warning though! The download link above is for the Q2 2007 release of Gaia Ajax Widgets. If you [register at AjaxWidgets.com](http://ajaxwidgets.com) you will receive update notifications and have an easier way to get updated versions of Gaia. You will also be able to post in our forums and get free support. Though you’re not forced to register, AjaxWidgets encourages you to do so. AjaxWidgets promises to only send you 8 to 10 emails per year with “extras” in the form of links to tutorials, videos, etc.


# Creating a new project


=IMAGE=create_project.jpg=Create new project=

Create a new _Web Project_ in MonoDevelop and add a reference to the `Gaia.WebWidgets.dll` file, which should be underneath the `Library` folder of the Gaia package.


=IMAGE=add_reference.jpg=Add a reference to Gaia=


=IMAGE=default.aspx.jpg=Default.aspx=

Then, open your `Default.aspx` web form and register the Gaia Widgets assembly using the following code:


=CODE_START=

<%@ Register Assembly="Gaia.WebWidgets" Namespace="Gaia.WebWidgets" TagPrefix="gaia">

=CODE_END=

And add a new Gaia Button using the following code:


=CODE_START=

<gaia:Button id="button1" runat="server" Text="Show Window" OnClick="onButtonClick" />

=CODE_END=

Also add a Gaia Window like this:


=CODE_START=

<gaia:Window id="window1" runat="server" Visible="false">Hello World!</gaia:Window>

=CODE_END=


<!--pagebreak-->


Notice that the Window’s `Visible` property is set to `false`. Also notice that the button’s `OnClick` event is attached to an event handler called `onButtonClick`. This handler in the code found in the file `Default.aspx.cs` should look like this:


=CODE_START=

public void onButtonClick(object sender, EventArgs e){
    window1.Visible = true;
}

=CODE_END=


=IMAGE=default.aspx.cs.jpg=Default.aspx.cs=

Now make sure that Gaia library file `Gaia.WebWidgets.dll` is located under the `bin` folder of the website; if not, copy it there. Using a command shell, change to the directory of the web site and type XSP2; then hit enter to execute the Mono XSP2 server. This will start a new instance of the XSP2 web server which is included with Mono. The server will listen to port 8080. Now open up Firefox on your GNU/Linux system and type the address `http://localhost:8080/Default.aspx`. Right now, you should be running your Gaia Application on GNU/Linux.


=IMAGE=result.jpg=Final result=

C# is a language almost like Java in that it is _binary compatible_ for most systems. This means that the code you now have created can in fact run on GNU/Linux, 64 bits CPUs, 32 bits CPUs, Mac OS X, Windows, etc...


# A nicer look

If you’d like to have a prettier skin for your Gaia Window, you can go to the folder named `Skin` in the `TestWebWidgets` folder. Now, if you include the `mac_os_x.css` file in your `Default.aspx` file and add the CssClass `mac_os_x` to your Window object, you will see a better looking Gaia window.


=IMAGE=mac_os_x.jpg=Mac OS X Skin=


# Final words

Gaia is 100% Mono and ASP.NET compatible. This means you can use _any_ of the .Net and Mono programming languages. This example assumes you’ve built your Web Application using C#, but you could just as easily use VB.NET, IronPython, Boo, JScript, C++, Eiffel, etc. There are about 50 languages available, although not all of them exists on both Mono and .Net; so, C# is the “safe bet” if you must have both Mono and ASP.NET compatibility.

