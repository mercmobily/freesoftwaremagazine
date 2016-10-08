---
nid: '3711'
title: 'Using "t" to manage personal tasks'
authors: 'Dmitri Popov'
published: '2012-02-17 9:30:44'
tags: 'todo,command-line'
license: verbatim_only
section: hacking
main_image: main.jpg
listed: 'true'

---
The t task manager boasts two distinctive traits: an impossibly short name and supreme ease of use. This no-frills Python script lets you keep tabs on your tasks and to-dos using a handful of commands.

Deploying t is not particularly difficult either. Grab the latest version of the script from the [project's website](http://stevelosh.com/projects/t/) and unpack the downloaded archive. Switch to the resulting directory in the terminal and run the python setup.py install command as root to install the script. Next, create a directory for storing tasks: `mkdir ~/tasks`. Add then the following line to the `~/.bashr` file:

=CODE_START=
alias t='python /usr/local/bin/t --task-dir ~/tasks --list tasks'
=CODE_END=

t is now ready to go, and you can start populating it with tasks using the t [task] command:

=CODE_START=
t Read a book
=CODE_END=

To list all tasks, use the `t` command, and you can edit an existing task with the `t -e [id] [new description]` command:

=CODE_START=
t -e 1 Read a thick book
=CODE_END=

You can mark a task as done using the `t -f [id]` command. Need to display the total task count? Use the `t | wc -l` command. You can use t to maintain a multiple task list, too. To do this, you need to add a few more aliases to the `~/.bashr` file:

=CODE_START=
alias s='python ~/path/to/t.py --task-dir ~/tasks --list scribbles'
alias r='python ~/path/to/t.py --task-dir ~/tasks --list reading'
=CODE_END=

The aliases above allow you to add tasks to the scribbles and reading lists using the `s` and `r` commands respectively.

=TEXTBOX_START=Time management resources=
 * [Time management software](http://www.timemanagementsoftware.us/). An introduction on techniques to figure out how you are spending your time.
 * [Effective time management](http://www.effectivetimemanagement.us). A great, short introduction on time management, context switching, and more
 * [Good time management](http://www.goodtimemanagement.us/). An article about philosophies of time management, from Randy Poush's famous lecture to the GTD method.
 * [Online time management](http://www.onlinetimemanagement.us/). An article on the practicality of using timers and the importance of time management in project management.
 * [Time management online](http://www.timemanagementonline.us/). Why managing time online makes it much easier and powerful when working in a team.
=TEXTBOX_END=

.