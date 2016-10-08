---
nid: '2724'
title: 'gedit plugins: What they are and how to use them'
authors: 'Andrew Min'
published: '2008-03-04 18:50:25'
tags: 'ubuntu,gedit'
license: verbatim_only
section: end_users
listed: 'true'

---
In my last [article](http://www.freesoftwaremagazine.com/columns/gedit_powerful_underrated_text_editor_everybody), I talked about using the powerful gedit text editor. But no program is perfect, mainly because too many features imply too much bloat. That's where gedit's plugins come into play. In this article, I'm will explain how to install and use some of my favorite gedit plugins.

<!--break-->

# Shipped Plugins

gedit (the Ubuntu edition) comes with a whopping 13 plugins. My favorite is definitely _External_ Tools. As I noted in my previous article, you can run any program under the sun using the file that you're editing as a parameter. While External Tools comes with a bunch of handy programs pre-installed, it's so much more fun if you add your own. Open up External Tools: go to Edit→Preferences, click on the Plugins tab, select External Tools, and click `Configure`. You will be able to come back to this screen through Tools→External Tools. I'll explain how to create a plugin that will open Frozen-Bubble, the popular game. (We don't want programmers dying from stress, do we?). If you don't have Frozen-Bubble installed, then I urge you to run the command `sudo apt-get install frozen-bubble` (or to install Frozen-Bubble through Synaptic's interface). First of all, hit the big New button in the External Tool configuration window, and name it `Frozen-Bubble` (or whatever you want to call it). Type in a description (`Stress Reliever` is what I put in). Then click inside "Shortcut Key" and type in your hotkey (though this is optional). Under _command_, type in the command you want to run for this new script (for example, `frozen-bubble`). Now, hit close and run your script from Tools→Frozen-Bubble. Your favorite game will now launch.

Another really great plugin is Snippets. It inserts little "snippets" of text into your file. It's really handy for inserting weird characters (like "→", demanded by Free Software Magazine's editors!) or commonly used phrases (like often used loops or variables).

Once activated, open the configuration: click on Edit→Preferences, then choose on the Plugins tab, select Snippets, and click `Configure`. Then hit the "New" button. As before, name it (I'll call it `→` because that's what it'll insert). The "Edit" field is the area where you put what will be inserted at the hotkey (for my example, `→`). Then add a shortcut key (for me, Ctrl -) and hit close. Test it out by hitting your shortcut combination.

# gedit-plugins Plugins

gedit has quite a few more official plugins, but unfortunately they're not all shipped with gedit. Luckily, it's easy to get them. Just look in your distribution's package manager for `gedit-plugins` or something similar. You can also get the source from the [GeditPlugins page](http://live.gnome.org/GeditPlugins).

One of my favorite extra plugins is Color Picker. Unlike External Tools and Snippets, you don't need to configure it. Instead, you can simply enable it (Edit→Preferences, click the Plugins tab, and check `Color Picker`) and then launch it from Tools→Pick Color (yes, I did insert that "→" using the Snipset plugin!). You can use the color dropper to pick a color or find one yourself. Once you found a nice one, hit the Insert button to add the hexadecimal color code into your document. Very handy.

Another handy one is Embedded Terminal: it's a plugin similar to what ships with Kate (the KDE Advanced Text Editor). You need to first make sure the bottom pane is on (CTRL-F9 or View→Bottom Pane). Then, enable it by running Edit→Preferences, clicking on the Plugins tab, and checking `Embedded Terminal`. Now, you have a full Bash terminal at your disposal.

Lastly, there's the one that in my opinion should have been in gedit long ago. See, not all of us won first place at the fifth grade spelling bee. That's why the Spell Checker plugin was created. Just enable it (Edit→Preferences, Plugins tab, check `Spell Checker`) and run it from Tools→Check Spelling (or Shift F7) and a spelling checker will pop up.

# Unofficial Plugins

Obviously, not every single plugin in the world is built into the gedit-plugin package. Therefore, the gedit developers put together a [page with a list of all the known gedit plugins](http://live.gnome.org/Gedit/Plugins). Since reviewing them would be an article in of itself, I chose to review my two favorites.

Almost every web developer out there has used [HTML Tidy](http://tidy.sourceforge.net/). It's a little tool that will check and fix up your (X)HTML and XML code. There is an unofficial gedit plugin to integrate Tidy into your program. Instructions for installing it are available at [the gedit-tidy web site](http://www.eng.tau.ac.il/~atavory/gedit-plugins/html-tidy/). You'll need HTML Tidy installed as well. Search your repositories for the package `tidy` or download it from the [Tidy homepage](http://tidy.sourceforge.net/). Once you've done that and enabled it (Edit→Preferences, click on the Plugins tab, and check `Tidy`), run Tidy on an (X)HTML or XML document with Tools→Tidy Check. This will give you a list of warnings that your web page has (you need to make sure the bottom panel is enabled). You can automatically fix them using Tools→Tidy.

The other plugin I love is the gedit [Template plugin](http://my.opera.com/area42/blog/gedit-template-plugin). After installing it (follow the instructions at the homepage), create a folder called "templates" in `~/.gnome2/gedit/`. Then, create a template (like a blank HTML file) and save it in `~/.gnome2/gedit/templates/`. Finally, enable the plugin by clicking Edit→Preferences, going to the Plugins tab, and checking `Template`. Now, whenever you want to create a file from a template, create one using File→New From Template. You can download a bunch of templates from this [gedit template site](http://hansengel.wordpress.com/2007/11/27/gedit-template-plugin-basic-templates/).