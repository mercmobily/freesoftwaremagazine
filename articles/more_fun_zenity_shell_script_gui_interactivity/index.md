---
nid: '3102'
title: 'More fun with Zenity: shell script/GUI interactivity '
authors: 'Ryan Cartwright'
published: '2009-02-16 16:44:02'
tags: 'gui,shell,zenity,dialogs'
license: verbatim_only
section: hacking
listed: 'true'

---
In the [first part](/articles/saving_my_sanity_zenity_shell_script_interaction_gui/) of this piece I introduced zenity : the handy tool for providing GUI interaction with your shell scripts. In this second part I'm going to delve a little deeper into the type of things you can do with this versatile tool.

<!--break-->

# Not just info dialogs

Zenity can do a lot more than just provide information dialogs -- handy though they are. It has a whole range of dialogs that you can use to get user feedback and decision-making involved with your scripts. Examples include not only the traditional errors, warnings, questions and progress dialogs but things like calendars, text entry, lists and file-selection. Without wanting to become a replica of the zenity manual, let's have a look at some of them.

## Errors and warnings

In essence these two are the same as information dialogs but they use a different icon on the dialog itself. This code displays a warning dialog:

=CODE_START=
zenity --warning --text "Configuration file not found\!\nUsing default settings instead." --title "MyScript warning"
=CODE_END=

Note the use of `\n`  there to insert a new line character. Also note the use of the `title` parameter. If you don't supply a custom title zenity will use the dialog type as a title (so in this case that would be "Warning").

## Getting some user input

### File selection

Suppose your script requires the user to provide a file path -- perhaps (to continue the above example) to load a config file if one could not be found. You can provide a file-selection dialog which will be immediately familiar to the user:

=CODE_START=
CONFIG_FILE=`zenity --file-selection --title "Select a configuration file"`
case $? in
  0) source $CONFIG_FILE;
  1) zenity --warning --text "No configuration file selected\nUsing default settings"
 -1) zenity --warning --text "No configuration file selected\nUsing default settings"
esac
=CODE_END=

That snippet provides a file open dialog which returns 0 if the user clicks OK and 1 if they click Cancel. -1 will be returned if something went wrong. By using this in your scripts you can ask the user to provide file paths to be somehow used in your script later. If you want to limit the user to directories and not files, you can add the `--directory` switch.

### Text entry

Another way to get some input is to provide a text entry box. For example this code:

=CODE_START=
ENTRY=`zenity --entry --text "Please enter your name" --entry-text "Yourname" --title "Enter your name"
if [ $? == 0 ]
then
zenity --info --text "Hello $ENTRY\!"
fi
=CODE_END=

Note how the `--entry-text` switch populates the text entry box and pre-selects it for replacement. Not all those switches are required by the way. The simplest form for entry dialogs is `zenity --entry` and that applies to most other zenity dialogs as well.

### Calendar

You're probably getting the hang of this now, but if you need the user to provide a date you can use the `--calendar` switch by running `zenity --calendar`. This command will return the date in the short format for your locale (so for my systems that's DD/MM/YYYY). You can preselect dates using the `--day`, `--month` and `--year` switches. The returned format can also be set using standard "strftime" codes:

=CODE_START=
DATE=`zenity --calendar --day "20" --month "2" --year "2009" --format "%Y-%m-%d"
if [ $? == 0 ]
then
echo $DATE
fi
=CODE_END=

That will open a dialog with the 20 Feb 2009 selected and the chosen date will be returned as YYYY-MM-DD. Both `--day` and `--month` do not accept leading zeros and `-year` expects four digits. It assumes "89" is the year 89 and not 1989.


### Questions

No dialog set would be complete without questions. Zenity provides a simple question dialog with fixed button labels. That means you have to ensure your question text is worded such that it can be reasonably answered with "OK" or "Cancel". So instead of "Proceed without config file?", you might like to say "Config file not found. Click OK to use defaults or Cancel to stop the script." In the case of the former, it can be unclear what Cancel would do: stop the script running or pop-up a dialog insisting on a file path. The latter leaves the user in no doubt. The question dialog returns a 0 if the OK button is clicked and 1 if the Cancel or close buttons are clicked.

## Providing feedback to the user

In addition to the info, error and warning dialogs the progress dialog can prove useful in providing feedback to the user. In the first part of this piece I mentioned how I had used zenity to provide a colleague with a GUI interface to a connection script for a 3G mobile broadband connection. In that situation there can be some delay while the modem negotiates with the 3G network for a connection. During that delay I use a progress dialog to let the user know something is happening:

=CODE_START=
connect.sh up | zenity --progress --text "Connecting, please wait ..." --pulsate
=CODE_END=

The `--pulsate` switch is handy here because I am just saying "hold on while I do some stuff". There's not real percentage feedback to give, so this switch has the progress bar pulsate back and forth across the dialog "Knight rider" style. If you need to provide growing progress feedback you can do so by echoing percentages to zenity:

=CODE_START=
( for FILE in find $START_DIR --name $FILE_NAME;
do
echo 1;
echo $FILE >> $OUTPUT_FILE;
done
echo 100;
echo "#All files now listed in $OUTPUT_FILE"
) | zenity --progress --percentage=0 --text "Finding files..." --title "Find and list files";
=CODE_END=

Yes I know, there are much simpler ways to put a list of files from a directory into a text file -- it's just an example. The above example also assumes there are no more than 100 files in the directory and -- quite honestly -- the progress bar will be at 100% almost immediately.

# That's enough for now

There's a lot more to know about zenity but hopefully this has given you a taster. Zenity's help commands are excellent and there are a number of other online resources that can help as well.

As the number of GNU/Linux users that are unfamiliar with the shell increases, tools like Zenity can make all the difference for those of us helping them. The first part of this piece was called "Saving my sanity with Zenity" and on more than one occasion that is exactly what it has done. Whilst it's true that some GUI tasks require something with greater GUI capabilities, tools like zenity, dialog and kdialog mean that the day of "knocking up a quick shell script" are by no means lost.