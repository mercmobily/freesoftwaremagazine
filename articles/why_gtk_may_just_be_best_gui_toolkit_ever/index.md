---
nid: '3152'
title: 'Why Gtk+ May Just be the Best GUI toolkit ever'
authors: code.guru
published: '2009-06-02 3:17:01'
tags: 'programming,gui,gtk,c/c++'
license: verbatim_only
section: opinions
listed: 'true'

---
When it comes to programming a lot of people look to C/C++ for answers. They're pretty straightforward languages that are general-purpose(they aren't really good at anything in particular, but can be used to do just about anything). The only strike against these languages is that unlike Java, they don't bring a GUI API built in. Instead, C/C++ coders must rely on other libraries and even system APIs to get the job done. 
<!--break-->

# Introduction
Nowadays almost every application has to have a GUI. Users rely on graphical interfaces, and a programmers job isn't only to code up an app, but to also make it best for the consumer. Now this leads one to wonder, "What should I use to make the GUI part of my program?". 

Well, the answer isn't always straightforward, but there is one toolkit that looks a little better than the rest. It's Gtk+. GTK+, or The GIMP Toolkit, is a cross-platform GUI toolkit and, is one of the most popular toolkits for the X Window System, along with Qt. 

So what makes Gtk+ so speacial? Why could it possibly deserve the title of "Greatest GUI Toolkit Ever"? That is the point of this article. Here we will discuss a little bit about it, and see why it is a very good choice for developers.

# 1. Simple Syntax    
One of the best features of Gtk+ is its simplicity of syntax. Almost everything is predefined, you just gotta point everything in the right direction. 

For example, this little snippet below creates a pretty basic window (300px wide, 150px high, aligned to the center of screen, and says "A Window" in the titlebar):
=CODE_START=
#include <gtk/gtk.h>

int main( int argc, char *argv[])
{
 GtkWidget *window; // creates the window object

 gtk_init(&argc, &argv); // this handles commandline arguments, don't worry to much about it

  /* Here we setup the window */
  window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
  gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
  gtk_window_set_default_size(GTK_WINDOW(window), 300, 150);
  gtk_window_set_title(GTK_WINDOW(window), "A Window");

  gtk_widget_show(window); // this makes it appear

  gtk_main(); // this puts the program in a loop waiting for events

  return 0;
}
=CODE_END=

Amazing. That was all done in about twenty lines of code, and you could even reduce that more by getting rid of whitespace. Just for fun, I tried making something similar in Win32; my result was more than 70 lines of code, and that was just for the basics.

In case you're wondering why you would choose a toolkit just because of syntax ease (or if you should even care), you must consider that the easier it is to write a program, the easier it would be to take care of it, as well as find bugs. As you will see later, Gtk+ has many features that help to make maintenance easier.

# 2. Great Structure
Not does only does Gtk+ have sytax that's easy to follow, but is also designed in a way that makes it easier to work with. For example, you define the objects and widgets (a button or window, or dialogue), you pass it parameters and set it up, and you then either pack it into the window, or a box etc. Then all that's left is to make it show up. Of course a real application would have callbacks so that widgets would respond to events, but still that's pretty good. 

It's structure like this that helps programs for becoming "code soup" and lets developers worry less about "how they're gonna setup the application", and more about "when they are gonna code that badboy up".

# 3. Lightweight and Fast
One of the best things about Gtk+ is its weight and execution times. This toolkit is especially good if resources are a concern to you. Applications written with Gtk+ are far less likely to crash due to not enough memory, freeze up, etc. 

Here's a good example: I'm working on creating a open source project right now. So far all I've coded is the GUI, and while I still have a long way to go before it has full functionality, the bare-bones app is only 30.4KB and executes in well under a second. Now it's been a while since I've done a lot in Win32, but from what I remember even very simple applications were in the "200KB" range. That's more than 6 times as big. In the long run, that could really add up.

# 4. Portable
Last but not least is the fact that Gtk+ is portable. It's pretty much write once, work anywhere (Of course the users have to have the right stuff to run you're program, but this generally wouldn't be an issue).

This is a great thing for programmers. A lot of programmers are turning to Java because of its "multi-platformism" (so many that it has risen to be the most used programming language. See resource 2); but this gives C/C++ coders a real alternative to learning a whole new language, or having to be greatly limited by another language. The portability of Gtk+ is a truly great advantage and is also a good explanation for success of toolkits like "WxWidgets" and "QT"

# Conclusion
In conclusion I hope you considered many of the things I've mentioned here, and are now looking into getting to know/use Gtk+. My goal here was to show you that Gtk+ is an amazing resource for C/C++ developers, and I hope I did so in as best as I could. If you find any errors, or have any suggestions, etc. please comment (I love it when people comment :D).

~ mike

# Resources
Here are just some resources that I used to write this article, or that I thought could help you:

1. [Gtk+ on Wikipedia](http://en.wikipedia.org/wiki/Gtk%2B)
1. [List of Most Used Programming Languages](http://www.tiobe.com/index.php/content/paperinfo/tpci/index.html)
1. [Gtk+ Tutorial on Zetcode](http://zetcode.com/tutorials/gtktutorial/)

# License
This article is published under the GNU Free Documentation License. 

  