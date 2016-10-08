---
nid: '2401'
title: 'The "alias" command'
authors: 'Gary Richmond'
published: '2007-09-24 12:15:58'
tags: 'cli,command-line,aliases,alias-command,commands'
issue: issue_19
license: verbatim_only
section: hacking
listed: 'true'

---
You almost certainly have speed dial set up on your home, office and mobile phone. It saves time, ensures against a failing memory and allows you to work smarter.

Devotees of the command line don’t have to be left out in the cold. One of the crown jewels of GNU/Linux is that every user, be he ne’er so base, has at his or her fingertips the kind of power of which even Caligula could not dream. Alright, I’m exaggerating—a little.


<!--break-->


GNU/Linux comes with many commands and you use them every time you open a console and interact with it through the shell. The _Bash_ shell (often described as the great grandaddy of all shells or, less flatteringly, as “an historical wart on the Bourne shell”) comes as standard with virtually every version of GNU/Linux and there are others too: _Fish, Korn and Zsh_. Whether you are listing file contents, configuring your wireless card, copying, deleting or moving files or appending arguments to built-in commands you are utilizing those features.

The built-in command I want to look at is _alias_. (If you want to be technical, alias has been defined as a “parameterless macro” and is not to be confused with IP aliases, a process for adding more than one IP address to a network interface.) It is a perfect example of a command that is simple yet useful and its use is restricted only by your knowledge of the Unix commands and the capacity of your imagination to exploit it. It is probably at this point that you might want to sit down and think about working faster by working smarter. In short it’s time to get out your pencil and paper and start making a list of all of those commands (and composites thereof) that you use most frequently and see if you can’t make them more compact. In the process you will not only work more efficiently; you will have increased your knowledge of the GNU/Linux commands and file system.


# You have mail. You also have aliases

Yes you do. You didn’t install them but they’re there. After you grabbed, burned and booted your chosen distro version they are on your hard drive, but what are they and where they are is the question. So what exactly _is_ an alais? Well, it has exactly the same meaning as it does in the everyday world. If the local bobby (or cop for those in the US) was on your trail you might want to change your name in order to disguise your identity. In the shell world there is no such sinister criminal intent. The purpose is not to deceive but to substitute and shorten.

Where are your default aliases? As ever, it depends on what version of GNU/Linux you are using. It could be in one of three places: `.bashrc`, `.bash_aliases` or `.profile`. Mine is in `/etc/bashrc`, which means, incidentally, that it is available globally. The default install was fairly spartan and includes only the first four aliases. The rest are my own post-install additions (figure 1).


=IMAGE=figure_1.jpg=Figure 1: Location of aliases in .bashrc=


# Creating an alias

So, when you type `ls` you are already using a built-in alias and your files in any given directory will be displayed, but you might find this a little underpowered. What if you want to list all your hidden files and file permissions? You could type `ls -alp` and that will do the trick, but by configuring it as an alias you will save time and typing if it is frequently used. To do this, give your alias a name. Clearly, the name needs to be contextual and meaningful to you and above all, it should be short. If you decide on a long name you have defeated the whole purpose of creating an alais in the first place! If you type: `alias long="ls -alp"` your alias is created. (Note that you cannot have an equals sign in your alias name.) Two points however: first, you can use single or double quotes when creating an alias. Single quotes will save having to select the `Shift` key and second, you have just made an alias but as you will see the task is not finished just yet.


# Make your aliases stick

If I open up a console and make an alias like the one above, it will be available for immediate use. But, if I log out or power down, when I restart and type that name the console will return the classic error message: _command not found_. Why is that? Simple. Aliases created in a shell will not survive across a reboot and an alias created in one shell will not work in another shell. Here is what I get when I type `alias` without arguments in my default Bash shell (see figure 2):


=IMAGE=figure_2.jpg=Figure 2: List of aliases in the default shell=

If I now open a session of the Korn shell in the console (by typing `ksh`) and then attempt to list all my aliases, I get what is shown in figure 3.


=IMAGE=figure_3.jpg=Figure 3: Aliases in bash and korn=

You can see the difference. However, what you are really interested in is persistent aliases across a reboot regardless of the shell you are using. For this you need to add them permanently in one of the three files listed above. You will need to do this a root, so it might be a good idea to back up those files just in case over zealous or careless keying drops you into a whole world of pain and hurt. To make your new aliases reload the easy way just type `. .bashrc` or `. .bash_aliases` if that is where they are on your system. Note that this is a dot (“.”) followed by a space and another dot and the file name. The perceptive amongst you will have worked out that hand-knitting aliases one at a time is a rather tedious business and it might be a good idea to make a list of all the shortcuts you want and key them all in at one pass.


<!--pagebreak-->



# Taking stock of your aliases

Having set all of this up you take a holiday in the sun for three weeks to reward yourself for all your clever and hard work. Upon your return, you can’t quite remember what aliases you created. The simple way to jog your memory is simplicity itself. Just open up a console and type `alias` without options or arguments and it will display all them. If you need to know how each one is constructed, it only requires the adding of the alias name as illustrated in figure 4.


=IMAGE=figure_4.jpg=Figure 4: All aliases listed and alias content=

Firefox users will be familiar with installing useful extensions to make that browser more productive, but, inevitably, there comes time when you need to prune them to prevent bloat and you realize that the killer extensions you installed six months ago are gathering dust. Aliases are no different. Review them and prune ruthlessly; but how? Well, appropriately, create an alias to see all the commands you have called them up for service and how often they have been invoked. Here is one to do the job:


=CODE_START=

alias most='history | awk '\''{print $2}'\'' | awk '\''BEGIN{FS="|"}{print $1}'\'' | sort | uniq -c | sort -n | tail -n 20 | sort -nr'

=CODE_END=

I called this alias “most”, short for most used commands, but you can choose something that is most meaningful to you. What it outputs is shown in figure 5.


=IMAGE=figure_5.jpg=Figure 5: Using an alias to identify frequent commands=

After `tail -n` I inserted the number twenty, which, as you will see in the screenshot (figure 5), listed the twenty most used commands. This provides a guide for deciding which ones are the best candidates for the alias treatment. If you don’t include a number the alias will output a default of ten. Of course, for power users on the command line that figure can be much larger. It’s your call.


# Amending and deleting aliases

Having reviewed the most frequently used commands and the aliases constructed to use them you can decide which ones are for the chop. Removal is simplicity itself: if you wanted to remove that alias for `most` just type `unalias most` and you’re done. Well, not quite. You have only removed the alias for the duration of the current shell and login. If you have set it up in the appropriate configuration file it will reload itself when you reboot. To make its removal _really_ permanent you must delete it from the configuration file using your favourite text editor (as root). If you are the uber-cautious type and you think there is the slightest chance you might ever reuse that lovingly-crafted alias which is three lines long, you can always err on the side of caution and disable it in the configuration file by commenting it out. Just put a “#” sign in front of the selected alias(es). If you ever decide to revive it/them, just delete the hash sign (again, both operations as root). Another way to delete an alias is simply to overwrite it with another—you can even amend it to add in features to suit new requirements. If you want to temporarily delete _all_ of your aliases in the current session just type `unalias -a`

Although temporary aliases have their obvious disadvantages they are very useful for experimenting and testing without any fears of making you machine unbootable. Experiment to your hearts’ content until you get that alias working just as you want it before committing it permanently. For those of you for whom even the Medieval (sin of) sloth is too energetic and one key press is one too many you can short circuit all of this by using a backslash before an alias. For example, `cp` will operate as the default alias without asking you if you really want to copy and thus temporarily overide the `alias cp='cp -i'` that you set up. This will work with all default aliases which have been given their own alias but not with new aliases like `most`.


# Alias and security

If there is one thing GNU/Linux users rightly boast about when critizing Windows it is the superior security features of free software operating systems. This is not an empty boast but perhaps it should be qualified by saying that, good as the latter is, there is no such thing as one hundred per cent security and what comes pre-installed can always be improved upon.

You could of course turn off your computer, unplug it from the mains, encase it in concrete and bury it at the bottom of a nuclear blast-proof bunker. It will certainly be secure but a bit short on usability. An alias, though humble enough, can add a little security to your daily work on the command line. `cp`, `mv`, `rm` are familiar shell built-in aliases but even the untrained eye can see the potential dangers lurking in the indiscriminate use of these commands. A moments’ carelessness and typing `rm` could delete a file not intended for deletion.


<!--pagebreak-->


Many an impulsive use of the `rm` command has led to tragic scenes of sobbing, inconsolable users slumped over their computers as hundreds or thousands of files are deleted to the accompanied symphonic composition called “hard disk grinding”; and remember, this command bypasses the trash/recycle bin. Getting it back may be difficult. The simplest of aliases can give you an extra layer of protection and all you need to do is type `alias rm='rm -i'`, or `alias cp='cp -i'` or `alias mv='mv -i'`. Any of these aliases will now be interactive and ask you if you want to remove, copy or move files respectively.


# Noclobber—supplement alias

Good as interactive aliases are, you have not plugged all the gaps just yet. The `>` and the `>>` commands will allow you to redirect a command’s output to a file and to append a command’s output to a file respectively. Misuse of these commands can lead to disaster. The command to preclude this possibility is the wonderfully named `noclobber` which, when set, will throw up an error message when you try to overwite a file.

You can set it temporarily by giving the command `set -o noclobber`. But, like setting up aliases, it will only become permanent once you have added it to a configuration file like `.bashrc`. To delete it, open the file with your chosen text editor and remove it—or, if you prefer, disable it until required again without having to re-key it by preceding it’s entry with the “#” sign (as root). To disable it on a per session basis in your shell type `set +o noclobber`. Again, like the option for alias, a third alternative is available. Without either having to delete or disable noclobber you can overide it by using **|** which will allow you to overwrite a file whilst retaining the noclobber configuration. Power and flexibility—the essence of a good system.


# Tip(s):

If you are using the _tcsh_ shell `set noclobber` and `unset noclobber` are the commands you will need and for forcing an overide **!|** will do the equivalent trick.

The _tcsh_ shell allows you to embed command line arguments in an alias where _bash_ does not and to use arguments in that shell you can use `! : 1` for the first argument and `! : 2` for the second but you must escape the `!` in the alias definition.

Not unexpectedly, as with programming languages, certain words are reserved and cannot be used when devising aliases: `while`, `done`, `do`, `then`, `until`, `else`.

Turbo-charge your aliases. Turn on _tracking_. What is tracking? Well, aliases are used frequently as shorthand for full path names and one particular facility allows you to automatically set the value of an alias to the full path name of the corresponding command. That’s a tracked alias. It speeds up execution because it eliminates the need for the shell to search the PATH variable for a full path name. Using `set -h` turns tracking on, thus the shell defines the value of the tracked alias. You should note that `cd` and `pwd` are not trackable (though aliasable). To remove all tracked aliases simply type `alias -r`.

Appropriately enough, you can alias the alias command in Bash and Korn: `alias a='alias'` and `alias a=alias` respectively (though not in the C shell).

Nesting and pipes: No, it’s nothing to do with a briar-scented country ramble. You can make compound aliases by connecting them using a semi-colon at the end of the first alias and separated by a space before the next one. It has been claimed that this is potentially dangerous because it can cause parsing of composite commands to do unexpected things. So far, I have not encountered any problems. Incidentally, you can create a single alias to launch two separate commands or create two separate aliases simultaneously. Again, it’s your call. To give your aliases a little power tweak why not use a pipe (**|**) to send the output of one alias as the input to another alias. For example: `alias dir="cd /etc; ls -alp | grep ^d; cd ~"`—which creates an alias called `dir` which will list all files, including hidden ones, in long format with file permissions and then pipe it to grep, to filter the results of all lines starting with the letter ‘d’ and finally return you back to your home directory.

If you were experimenting with and creating aliases and you forgot to make it permanent and/or logged off, powered down, all is not lost. You will doubtless be familiar with the `history` command (if not, you can read more about it [here](http://www.freesoftwaremagazine.com/blogs/weekly_tip_history_command)) or using the up arrow to scroll through that history. Using this command you can locate that alias description and once you find it simply hit return and it will run for the duration of that session. This will only work for the shell in which you created that alias. You can then save it permanently as described above. (Security fanatics will argue that `history` enabled is the route—or is that root?—of all evil, as a hacker could gain access to commands run as root. Just use `set -/+o history.`)

Finally, in this tips section, something for those whose typing skills are abysmal and who would sooner sit through a Vogon poetry reading than improve their keyboard skills. Can’t spell something properly or are inclined to fumble at the keyboard? Alias you way out by creating several aliases for a tricky one like the browser Kazehakase if you launch it from the command line. Thus: `alias Kaezhaksae='Kazehakase'`.


<!--pagebreak-->


This is trivial but it illustrates the point. It is also rank idleness and probably constitutes an abuse of the alias command. There is a better way to correct typos and that is to enable a spell feature via something called `shopt -s` which works for typos of the file path variety and also links into the relationship between aliases and shell scripts.


# Shop(t) until you drop

If you type `help shopt` in a console you will be told that “it toggles the values controlling optional behaviour”. Better still, just type it without options or arguments. What I get on Mepis is shown in figure 6:


=IMAGE=figure_6.jpg=Figure 6: Mepis shopt default=

It is a complete listing of all `shopt` settings, on and off. To filter for an enabled list type `shopt -s` and for a disabled list `shopt -u`. If you have been experimenting with this command and want to save the hassle of scrolling/searching through a list and just see the status of one setting only, then type, for example, `shopt cdspell`. For the purposes of illustration this is somewhat truncated, but the entry we are interested in is `cdspell` which is set to off, so if you type `ls /ect -alp` you will, of course, get an error message (figure 7).


=IMAGE=figure_7.jpg=Figure 7: Error message when shopt cdspell set to off=

If, however, you type `shopt -s cdspell` this will set it to on (type `shopt -s` or `shopt cdspell` to confirm it is now on) and when you reproduce the original typing error it is automatically corrected and executed (figure 8).


=IMAGE=figure_8.jpg=Figure 8: Command and file path running correctly with typing error, shopt cdspell set to on=

The bonus is that this feature will work inside an alias you define when, for example, it includes a typing error. If `cdspell` is off the alias will fail (and default to a different directory) and output a standard error message as shown in figure 9.


=IMAGE=figure_9.jpg=Figure 9: Error message running a mistyped alias, shopt cdspell off=

When `cdspell` is on the alias works, despite the typing mistake (`alias e='cd /ect; ls -alp'`) as shown in figure 10.


=IMAGE=figure_10.jpg=Figure 10: Alias ‘e’ running correctly with typing error, shopt cdspell set to on=

Obviously, you are not going to intentionally mistype/mispell in an alias—but if you do, you can rest easy in the knowledge that with `shopt -s cdspell` on it is one less thing to edit and correct. Finally, although it is generally recommended to use a shell script for more powerful requirements, if you must use an alias inside a shell script `shopt` can be of assistance, if `expand_aliases` is set to on. Why?—because aliases are only expanded when the line of a script is read; i.e., when the shell function is defined and not when it is executed.


# Conclusion

The Alias command is not the most powerful piece of digital ordnance in the GNU/Linux armoury but I would still not wish to go into battle on the command line without it. You have a Formula One racing car in the driveway. Why only pop down to the end of the avenue to post a letter when you can take it out onto the racetrack and put your foot to the floor. See just what the command line can do. Alias saves typing, avoids spelling mistakes, assists poor memory, enhances security, cures the common cold (okay, I lied about that one), helps you to explore and exploit the full power of UNIX commands and the file system and if you are a citizen of the Republic of Paranoia you can always experiment on a live CD first without any fear of terminal (sorry) damage.

It is frequently remarked by Windows naysayers that GNU/Linux has a (too steep) learning curve (as if this is not true of any worthwhile task or skill in life to be mastered) but mastery of aspects of the command line, including alias, is proof that some learning curves are worth the admission price. Can’t pay, won’t pay? then you may be consigned to a permanent digital underclass. Just ask the average Windows user.

