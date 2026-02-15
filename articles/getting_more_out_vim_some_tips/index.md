---
nid: '3496'
title: 'Getting more out of Vim - some tips'
authors: 'Ryan Cartwright'
published: '2011-02-15 15:20:24'
tags: 'tips-and-tricks,text-editor,vim'
license: verbatim_only
section: end_users
listed: 'true'

---
I'm donning my flame-proof suit for this post. Vim is arguably one of the two most popular text-editors used in the free software world: built on vi (its name stands for VIiMproved) it will be found as a default package in many GNU/Linux distributions. The other popular editor is EMACS (although I am sure there are those who will argue that EMACS is much more than a _mere_ text-editor). I use Vim a lot in my work and have found it to be a little like chess: a moment to learn a lifetime to master. With that in mind here are some of the tips and handy commands I have picked up over the years. I thought I'd pass them on in case they help.

<!-- break-->

I'm going to assume you are familiar with the basics of Vim: moving the cursor, entering modes and adding/editing content. I'm also going to presume you know what entering a command that starts with a `:` means. This is not a beginners class, but it's not an expert one either. This is not the place to begin learning Vim - sorry. Some of these were seemingly obvious to me, but unknown to other Vim users I've encountered. The rest are the reverse of that scenario. I've limited myself to ten, because honestly something like this go on forever without such a limit. These are not necessarily the best or most needed tips but they are the ones I found were best received by vim users when they first heard them (including me).

# Moving around

* **[{** _move to the beginning of the current codeblock_  
This one depends upon the language you are coding in, but it works pretty much wherever there are clear demarcations of code blocks. `]}` moves to the end of the current codeblock.
* **:`<line_num>`** _go to `<line_num>`_  
Okay an obvious one but worth mentioning because I have seen people scrolling up and down to get to a specific line number.
* **Ctrl+O** _put cursor back to its previous location_  
Often I find myself adding break points of making debugging code in several places within a file. Once the debug is finished, finding and removing these can be a pain. Ctrl+O (not zero) will move the cursor backwards within the locations where you changed the file. Think of it like an undo without actually performing the undo. `Ctrl+I` will move forward in the list of locations.

# Editing

* **xp** _reverse the next two characters_  
It's surprising how many typos involve two characters being typed in the w\_or\_ng order (see what I did there?). Correct them with just two keystrokes.
* **Ctrl+P** autocomplete the current word_  
I lose track of how many times I used to be dubugging and find the problem was that I was using two slightly different variable names to refer to the same thing. This command will toggle through the available words in the file and/or dictionary in an attempt to complete the one you have started. `Ctrl+P` does this by going forward through the list of words. `Ctrl+N` does it by going backwards.
* **n.** _repeat the previous command `n` times_  
If you have just made a complex command and you need to repeat it somewhere else in the file you can do so by pressing "`.`". Giving a number before it will repeat the command that many times.

# Multiple files

* **:set wildmode = longest,list** _change file name autocomplete behave more like BASH_  
Most people know you can open another file with `:e`, write to a different one with `:w` or open one alongside the current one with `:vs`. An annoyance to me was always that Vim's autocomplete when specifying file names is to give you the full path of the first file that matched rather than the way BASH does it, which is to stop on the first ambiguity and give you the choice of where to go next. Setting the wildmode option as shown will make Vim behave more like BASH in these instances.
* **-O, -o** open multiple files alongside each other_  
I was surprised how many people didn't know this one. When running Vim you can use specify multiple file names to be opened in the same session. Give the -O parameter to have them displayed in a split-view next to each other and -o to have them shown above or below each other. If you are new to working on multiple viewports you can use `Ctrl+W` and a cursor key to switch between the files.

# When you're not coding

There are times when you might use Vim to edit a non-coding file (no really, it's true).

* **g Ctrl+G** _word count_  
Okay so it's a bit more than just that but it's one of the more useful er uses I've found for this command. `g` then `Ctrl+G` will display something like `Col 179 of 179; Line 23 of 24; Word 791 of 791; Byte 4312 of 4314` at the bottom of the screen. If you select some text first (using `v` for example) you will be presented with the stats for the selection and not the whole file.
* **:s/pattern//gn** _number of occurrences of `pattern` in the file_  
Sometimes you need to know how often a word appears in a file. This command will tell you.

As said, this is not an exhaustive list and I appreciate this is a bit of a niche topic and I'm not expecting big reading figures here, but these kinds of tips are the ones you often rack your brain trying to remember so having them in a blog post will hopefully save your little grey cells the effort. One of the things about free software is the multiplicity of options available to you, and I am sure there are plenty who can think of "better" ways to do some if not all of this. If so, feel free to post them as comments here. If you want to read more tips on using Vim (at various levels of expertise) have a look at the [Vim Tips Wiki](http://vim.wikia.com/wiki/Vim_Tips_Wiki). I'd expect most if not all of these tips to be on there (along with a myriad of others) but it's not where I got them from.
