---
nid: '2140'
title: 'Picante shell: pipes'
authors: 'Anthony Taylor'
published: '2007-03-18 16:57:15'
tags: 'beginners,howto,shell-scripts'
license: verbatim_only
section: hacking
listed: 'true'

---
Spicy food should cause chemical burns, or spontaneous human combustion. Your mouth should feel as if it’s tangled with an angry badger. Capillaries in your nose should burst. Your gut should sue for punitive damages. If not, your food just isn’t spicy enough.

At least, that’s how I feel. So, when I say things like, “Here, try some of these mild command-line recipes; they’re really quite tasty”, you might keep that in mind. One man’s “mild” is another man’s, “I think you’ve poisoned me”.

If you are ready, settle in, dish up, and keep a nice lager handy. You’ll probably need it before we’re done.


<!--break-->



# Base ingredients: input and output

The “Unix Way” is a bit like salsa. (It’s also like the Tao, or like processed cheese, or like the way puppy toes smell like popcorn.) As with salsa, there are many ingredients, and no one definition. Many kinds of salsa are made with tomatoes. Others are made without. Some are mild. Some are slightly tingly (these are labeled, “Hot!” in American supermarkets). People _recognize_ salsa when they see it, but there is no one way of making it.

And so the Unix Way is not a single thing, nor a collection of specific things, but a _way of combining things_. Many have summed up the Unix Way as, “Do one thing, and do it well”. What that misses is a simple concept most of us learned on the playground: “Play well with others”.

The way most Unix command line utilities play together is through another simple concept, one that dates back to the beginning of the digital computer age: “input” and “output”. That is, most of these utilities take some information (input), do something with (process) it, and spit the final product back out (output).

“Input” is handled in many ways. It can be from a file, from user input, from the network, or from another program. Most programs can handle at least three of these: from a file, user input, or another program. Actually, that’s only two ways. Programs treat user input and input from another program in _exactly the same way_. For the sake of brevity, let’s give a name to this kind of input. Let’s call it, “standard in”.

Processing is up to each program. That is what sets each command line utility apart. Mastering the command line is mostly about mastering each program.

“Output” is generally either to a file, or to the screen, or to another program. Okay, like “standard in”, these last two are really the same. The output goes to the screen, or you can send the output to another program. Let’s call this single output, “standard out”.

This might seem complex, but really think of it this way. “Standard out” is just the output of the program, as if it were sent to the screen. So, when you type a command like `ls`, the output that is printed to the screen (in this case, the directory contents) is really going to something called “standard out”. By default, this is to the screen. “Standard in” is just the opposite: it’s as if the user were typing information into the program.


# Instant picante: pipes

So, how do you get the output of one program to go to the input of another program?

It’s a thing called a “pipe”. In the shell, a pipe is created with that broken bar symbol above your `Enter` key, like this: `|`. This very spicy symbol takes the standard output of one program, and attaches it to the standard input of another. The best way to see how it works is to try it.

No. Really. It’s not _that_ spicy. There’s hardly any spontaneous human combustion involved at all.

So, give it a shot, starting with the `ps` command:


=CODE_START=

$ ps -e

  PID TTY          TIME CMD
    1 ?        00:00:01 init
    2 ?        00:00:00 migration/0
    3 ?        00:00:00 ksoftirqd/0
    4 ?        00:00:00 watchdog/0
    5 ?        00:00:00 migration/1
    6 ?        00:00:00 ksoftirqd/1
    7 ?        00:00:00 watchdog/1
    8 ?        00:00:00 events/0
            .
            .
            .
 8026 ?        00:00:00 gnome-terminal
 8028 ?        00:00:00 gnome-pty-helpe
 8029 pts/0    00:00:00 bash
 8684 pts/0    00:00:00 emacs
 9010 pts/0    00:00:00 ps

=CODE_END=

The dollar sign `$` merely indicates the shell prompt. Type only the `ps` and hit return. The output will look something like mine, with columns of cryptic and arcane information designed to mystify and enlighten.

Notice how it all goes scrolling by, too fast to read? Try this:


=CODE_START=

$ ps -e | less

=CODE_END=

Isn’t that better? Now, you can scroll forward one screen at a time by hitting the `space` bar, or back one screen at a time by hitting the `b` key. Quit at any time by hitting the `q` key.

That magic happens by taking the input of the `ps` program, and passing it to the `less` program. 

`less` is a Unix command for browsing files. Try it on its own like this:


=CODE_START=

$ less ~/.bash_history

=CODE_END=

This _should_ allow you to browse your command line history, if you normally use the `bash` shell. Note how the _input_ to `less` can be a file (e.g., `~/.bash_history`) or the _output_ from another program (e.g., _ps -e_). This is a common theme among command line utilities.

This simple concept gives us great power.


# Extra picante: gluing programs together with pipes

I hope you have your lager handy. This is where it starts to get a little spicy.

See, you can chain programs together using pipes. You can glue as many together as you need, to form a chain of spicy command line goodness. Start simple, with a single program:


=CODE_START=

$ find . -name \*\.c

=CODE_END=

This prints out a list of C source files. That’s it. If you happen to have some C source code laying around, give it a go.

Next, save that list to a file, but still print it out.


=CODE_START=

$ find . -name \*\.c | tee c.list

=CODE_END=

`tee` simply takes standard input (here, the list of C source files), saves it to a file (here, `c.list`), and then prints it to standard out. In fact, the output to the screen will be identical to the `find` command on its own. The _only_ difference here is, the list is also saved to a file.

Now, to get really fancy:


=CODE_START=

$ find . -name \*\.c | tee c.list | xargs grep -l sprintf

=CODE_END=

This saves a list of all the C source files starting in the current directory, and prints out a list of all those files that contain the string `sprintf`. Cool. Or hot. Whichever.

This is just like the example above, but now you pipe standard output from the `tee` command directly to the `xargs` command. `xargs` then uses `grep` to search all those files for a string, `sprintf`, and prints the name of those files to standard out.

See how processing gets progressively more complex? As long as you know how each individual program processes its standard input, you can figure out what the chain of programs does.


# Make it as hot as you want

Okay, you might not be like me. You might not enjoy food that raises blisters on your tongue. That’s okay. With the shell, you can make it as hot or as mild as you want. Just keep in mind, when you _must_ swallow an angry badger, you might put it through the pipeline first. It’ll make the task a little easier to swallow.

