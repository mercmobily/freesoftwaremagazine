---
nid: '2432'
title: 'How to get the best out of the history command in GNU/Linux'
authors: 'Gary Richmond'
published: '2007-07-27 22:39:17'
tags: 'cli,history,tips,command'
license: verbatim_only
section: hacking
listed: 'true'

---
Anybody who has used the command line extensively to navigate, understand and configure GNU/Linux will know that in the course of a few months’ work it is possible to build up an extensive history of used commands. This necessitates some pro-active management to get the best out of it. Here are some tips to make the most of the `history` command.


<!--break-->


Please note, from the outset, that command history is only saved in interactive shells and does not, therefore, work with shell scripts.

By default, the shell _Bash_ is designed to retain the last five hundred commands you entered. If you want to see them, just open `~/.bash_history` and scroll through it. Or, by simply typing `history` on a command line the terminal will list them.

If you know there will be a lot of output, then it makes sense to pipe it to `less`: `history | less`; with `less`, you can see the command history one screen at a time (by pressing the spacebar) or one line at a time (by pressing the down arrow).

If you’d rather not even be bothered with piping with `less`, just specify the number of commands you want (if you are pretty sure it was a quite recent one): `history 25` or `history | tail` to output the last ten commands.

Helpfully, if you want to rerun a command and can’t quite remember its format, the `history` facility allows you to simply step through them one at a time by pressing the up arrow (or `Ctrl + P`) continuously from your command prompt until you find the one you are looking for; you can also use the down arrow (or `Ctrl + N`) to go to the “next” command. When you find the command you want to run, hit the return key to run it.

If you think you know the command but can’t quite recall the command exactly, then you can pipe it with `grep` and the first few letters of that command: `history | grep -i`. The `i` should be followed by the first letter(s) of the command you are attempting to find. Again, use `less` to step through them and or combine it with the down arrow: `history | grep -i | less`.

Another useful feature related to history is to use `Ctrl + R.` This will output a prompt called a reverse-interactive-search. All you then need to do is to start typing the command and it will complete the command with the most recent matching command from the history file. If there is more than one relevant command in the history file and the one you need is not the most recent, then just type a few more letters to distinguish the command. Once you see the one you want press the return key to run it or press the right arrow key to edit it.


# Stop repeating yourself

Statistically, it is very likely that you have used the same command more than once, however small or large. If it is a long list why not simply skip the duplicate entries and speed thing up a bit? Add the following to either your personal bash file (`~/.bashrc`) or to the global bash configuration file (`/etc/bash.bashrc`:


=CODE_START=

export HISTCONTROL=ignoreboth


=CODE_END=

This change, made in your favourite text editor must of course be done as root. For it to take effect you must restart the bash shell: you can simply log out and log in again. If you now type `env` you should see that configuration listed: bash will, from now on, skip the duplicate entries.


# Cut history down to size

If you are not a big user of the command line and want to make history slimmer, then specify it permanently in one of the two bash files listed above. It takes the form of `export HISTSIZE=X` where “X” is replaced with the number of commands you want to keep in your history (setting X to 100 will store 100 commands). If the value is set to zero, history is disabled. Keep in mind that you will need to restart the shell in order for the changes to take effect.

These changes may help to make you more secure. As an added measure it is possible to set up Bash to clear history upon exit by adding the following configuration in your `~/.bash_logout` file: `/usr/bin/clear_console`. In some GNU/Linux distros this setting may already be the default. More radically, if you want to delete history altogether just type `history -c` but be aware that there is no way to retrieve that history once it is gone.

Security is a huge subject for computers and rightly fills many books. Apart from the obvious things such as setting up a root password, running virus and rootkit scanners, keeping security patches up to date and IDSes like Snort, a quick hack (amongst many) is to check the output of the `history` command. If you know that you did not disable the history, and yet it’s empty and, therefore, `~/.bash_history` is empty, then it may be that you have been hacked and that the Bash history has been wiped out. Run this command: `ls -l ~/.bash_history` and the result (unhacked) should look like this (mine):


=CODE_START=

-rw------- 1 richmondg users 7228 2007-07-23 23:22 /home/richmondg/.bash_history


=CODE_END=

If your history is unexpectedly empty, you will know that your computer has probably been compromised and you should probably reinstall it.


# Conclusion

Well, there you have it. The `history` command is powerful and versatile. Like `alias`, it can save keystrokes, aid security and save time. It helps you to work smarter and reveals yet again the true power of the command line. So what are you waiting for? Fire up that terminal!

