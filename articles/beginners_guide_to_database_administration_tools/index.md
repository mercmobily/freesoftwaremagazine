---
nid: '2456'
title: 'Beginners guide to database administration tools'
authors: 'Alan Berg'
published: '2007-11-05 10:37:21'
tags: 'php,mysql,perl,database'
issue: issue_20
license: cc-by-nc-sa
section: hacking
listed: 'true'

---
Welcome to an introduction for the beginner to the basic manipulation of the MySQL database with free software. The purpose of this article is to show how universally straightforward it is to get started with installing and applying a high-grade enterprise ready database like MySQL, and to learn how to manipulate it via numerous free software approaches.

I will explain how to setup MySQL and a few client helper tools to enter data; I will also cover PhpMyAdmin, a well known and highly deployed administration tool for MySQL. Finally, I will look at the Perl programming language as an easily accessible vehicle to database manipulation.

One obvious warning: installing server software has inherent risks such as security and accidental deletion of files. A security related example is that the MySQL database sometimes comes cleanly installed with accounts with blank passwords, which are obvious targets for even the laziest hunter. Personally, I have an experimental machine that I reformat and cleanly install periodically and doesn't hold any information valuable to the outside world.


# Database installation

Both version 4 and 5 of MySQL are highly popular. Version 5 has extra features including views, triggers and stored procedures. These features enhance the databases potential when compared to the slightly older and arguably more proven version 4.

Sometimes life is easy by design. To install MySQL from the command line I’ll use the excellent package manager tool `apt`. Assuming you have Ubuntu 7.04 installed on your development machine, then enter the following command:


=CODE_START=

  sudo apt-get install mysql-server-5.0 

=CODE_END=

During installation, many words will whiz by past you at a rapid pace from the command line. Focusing in on the relevant, if all goes well, you will see the following text generated:


=CODE_START=

The following NEW packages will be installed: 
  libdbd-mysql-perl libdbi-perl libnet-daemon-perl libplrpc-perl mysql-client-5.0 mysql-server-5.0

=CODE_END=

Note from the text that MySQL wasn’t the only program that got installed: as part of the installation, apt updated the Perl interpreter with modules that enable seamless communication from Perl scripts with the MySQL database.

The default binding address of the database is localhost; this implies that the package maintainers have thoughtfully secured the database so that it is not connected to the internet and is only directly contactable from users on the same machine. Yes, a good solid default for single user play around computers, such as my own desktop.

As standard, the root account has no password. Obviously, an interesting feature meant for ease of use but definitely not a secure long-term stance. Our initial actions are first to check which accounts need changing and then actually change the password of those accounts.

To log on to the database with a just installed client tool, try the following from the command line:


=CODE_START=

mysql -u root

=CODE_END=

The tool connects you locally to the database. Now to find which accounts already exist try inputting the following:


=CODE_START=

SELECT Host, User FROM mysql.user; 

+-----------+------------------+ 
| Host      | User             | 
+-----------+------------------+ 
| 127.0.0.1 | root             | 
| alans     | root             | 
| localhost | debian-sys-maint | 
| localhost | root             | 
+-----------+------------------+ 

=CODE_END=

The `debian-sys-maint` account is exactly that: an account used by administrators and for scripted MySQL maintenance. Changing the password of this account is not necessary—in fact, it’s even potentially dangerous. However, for the daredevils among you, if you really have to fiddle then you will find the information about this account mirrored in the startup configuration `/etc/mysql/debian.cnf`—remember that you’ll need to change that file as well.

To change the root passwords used to log on from localhost and from _alans_ (_alans_ being the hostname of my overloaded, abused, battered, sandwich stained, beaten, trodden on, dropped and bounced computer), then copy the following commands into the MySQL client window. Before doing so please change the mentioned password `changeit` to suite your own security policy (you do have one, right?).


=CODE_START=

SET PASSWORD FOR 'root'@'localhost' = PASSWORD('changeit'); 
SET PASSWORD FOR 'root'@'alans' = PASSWORD('changeit'); 
SET PASSWORD FOR 'root'@'127.0.0.1' = PASSWORD('changeit'); 
flush privileges;

=CODE_END=

The `flush privileges` command is just a reflection of my over cautiousness nature, forcing me to make sure that the privileges have been correctly updated. Next, I am going to create a new database called _freesoftware_, then show that the database actually exists and then exit gracefully from the MySQL client shell.


=CODE_START=

create database freesoftware; show databases; exit 

=CODE_END=

To connect again I need to input the new password and, of course, use the freesoftware database.


=CODE_START=

mysql -u root -p freesoftware password: changeit

=CODE_END=

For the sake of simplicity, I will create a rather simple table with only two fields, PK_ITEM (the primary key) and Name (a normal field):


=CODE_START=

create table items 
	(PK_ITEM INTEGER NOT NULL, 
	 NAME CHAR(15) NOT NULL, 
         PRIMARY KEY (PK_ITEM) ); 

describe items; 

+---------+----------+------+-----+---------+-------+ 
| Field   | Type     | Null | Key | Default | Extra | 
+---------+----------+------+-----+---------+-------+ 
| PK_ITEM | int(11)  | NO   | PRI |         |       | 
| NAME    | char(15) | NO   |     |         |       | 
+---------+----------+------+-----+---------+-------+ 


=CODE_END=


<!--pagebreak-->


Creating such a simple table is necessary to avoid obscuring the purpose of this article, which is to act as a quick starter. In real life, applications tend to have complex data models. It is common for some of the production ripe applications I work with to have 50 or so tables with hundreds of well-thought-out and not-so-well-thought-out constraints. Suffice to say that the exact design of a data model is a significant weight in the definition of quality of a given piece of database-enabled software. A good design at the beginning of the development process has the potential to save enormous amounts of refactoring and, worse still, data migration later on. In this case, with one primary key and one normal field, I am sure it will be okay design-wise!

To populate the `items` table, please create a file named `data.txt` in a location of choice (probably your home directory) with the following comma delimited content:


=CODE_START=

1,small_toy 
2,medium_toy 
3,large_toy

=CODE_END=

To load in the data from the MySQL client command line, copy the following line, where path is the location on your file system of the data file:


=CODE_START=

LOAD DATA INFILE '/path/data.txt' INTO TABLE items FIELDS TERMINATED BY ','; 

=CODE_END=

By default, MySQL reads in tab-delimited files. I personally prefer comma delimited files: that’s why I added `FIELDS TERMINATED BY` to the command. If the action succeeds, then the response will be the same as:


=CODE_START=

Query OK, 3 rows affected (0.00 sec) 
Records: 3  Deleted: 0  Skipped: 0  Warnings: 0 

=CODE_END=

Or if you pointed to a nonexistent file, the following meaningful result is returned:


=CODE_START=

ERROR 13 (HY000): Can't get stat of '/home/alan/Desktop/freesoftware/data.txt' (Errcode: 2)

=CODE_END=

Yes I saw the error of my ways immediately...

To verify that good things have happened, e.g. that the data exists in the `items` table, fire off the query:


=CODE_START=

select * from items; 


+---------+------------+ 
| PK_ITEM | NAME       | 
+---------+------------+ 
|       1 | small_toy  | 
|       2 | medium_toy | 
|       3 | large_toy  | 
+---------+------------+

=CODE_END=

Everyone has his or her own personal way of working. When I play—sorry I mean develop—with MySQL, I like to keep my initial data in text files. If I accidentally damage my tables, then I like to drop the table, create a new one and then quickly load the new table with the data from the text files. Even for hundreds of thousands of records, the load in time is impressively short and, at worst, in the order of milliseconds to seconds—truly faster than a speeding bullet!


=ZOOM=Even for hundreds of thousands of records, the load in time is impressively short and, at worst, in the order of milliseconds to seconds—truly faster than a speeding bullet=

If you wish to drop the table items and then drop the database to totally hide your evil wrong doing, or just to clean up, type:


=CODE_START=

drop table items;
drop database freesoftware;

=CODE_END=

Within a couple of command line actions I was able to create a MySQL 5 database instance and matching basic client software, create a database and a table and populate the table with data contained within a plain old text file. As a bonus, installation of the database also enhanced the standard distribution of Perl with extra modules that make querying the MySQL server straightforward—and hopefully, at some point, fun.


# Administration GUI

Ease of use dictates that you will need to perform standard administration tasks via a GUI.

MySQL Administrator, developed by none other than the creators of MySQL, can easily do most of your database related system administration grunt work for you.

To install MySQL Administrator from the command line type:


=CODE_START=

sudo apt-get mysql-admin

=CODE_END=

Assuming you have the standard Ubuntu desktop environment, you will find a shortcut to the tool at the top of the screen under the menu option Applications→Programming→MySQL Administrator. Alternatively, to run from the command line:


=CODE_START=

mysql-admin&

=CODE_END=

On execution, a connection dialog will appear as shown in figure 1. Please type in `localhost` for the server’s hostname and then the username “root” and the hopefully long and random password you chose earlier.


<!--pagebreak-->


One of the first things to do is to create an extra user that only has `select` and `insert` permission on the freesoftware database.


=IMAGE=f1.jpg=Figure 1: The connection dialog=

Upon successful connection, the main screen, as displayed in figure 2, will appear. Notice all the potential actions on the left hand side. Clicking around will give you great insight into the current configuration and health of your database(s). In this section, I will describe the primitives of user administration; the rest of the inbuilt functionality is beyond the scope of this elementary starter tutorial.


=IMAGE=f2.jpg=Figure 2: MySQL Administrators main screen=

I sometimes find it hard to know which ones, amongst all of the finely scaled permissions available, a user should have within MySQL. Some users may actually require the permissions needed for PHP scripts or other applications that generally should only be able to select from a given database. Other users may be associated with real system administrators and require insert or update rights. As you will soon see, the GUI client known as MySQL Administrator will make the process intuitively obvious and thus painless.

In the next section, I will be describing a simple Perl script that searches via the select command and inserts data. With these constraints in mind, I will make a user called “alan”. In reality, when more than one developer is working with the database, you should use a more complex naming convention.

Select the user administration, right click on the `debian-sys-maint` account in the bottom left hand corner and then “Add new User”.

Filling in the User Information Dialog and applying the changes generates the “alan” account, as shown in figure 3.


=IMAGE=f3.jpg=Figure 3: Creating a new user account=

Finally, update the privileges of the user so that you can limit damage if evil doers intentionally (or bad programming habits inadvertently) abuse the account. Click on the _Schema Privileges_ tab, as shown in figure 4, and choose _Select_ and _Insert_ privileges, then apply changes. You can always update the account later if you need more power.


=IMAGE=f4.jpg=Figure 4: The schema privileges tab=

I particularly like the schema tab as it de-skills the knowledge required to define permissions. Of course, the GUI can help with a lot more, such as looking at system health, starting and stopping services, backups and viewing configuration for further adventures. I would even, hum, suggest first reading selected parts of the [manual](http://dev.mysql.com/doc/administrator/en/index.html).


# Perl

**Note:** If you are not interested in the basic Perl programming structures necessary for scripting MySQL interactions, you are welcome to skip this brilliantly thought out and excellently written section (and it’s me saying so!); this section could change your life and help you win the lottery.

To recap, so far I have shown you how to install a database, add a table with records from a text file and creat a least privileged user. In this section, I will describe a relatively simple Perl script that will insert data into the items table and display the full contents of the table.

If you remember, during installation `apt` installed extra Perl modules that enable scriptable communication with the MySQL 5 database. To understand a little about the database independent interface DBI for Perl activate the correct man pages:


=CODE_START=

man DBI 
man DBD::mysql

=CODE_END=

The Perl script shown next performs two distinct types of database related actions. The first type are actions such as insert and update that do not expect a result set of values to be returned. This is type of action can be delivered by the `do()` method. The second more complex action (as enacted in the code just below comment [4]) is to query and then loop through each row of data via preparing a statement, executing and then fetching a row as an array and looping through all of the rows. This process is stereotypical for web site interactions, where users place orders in a shop and the application retrieves data to describe salable items.

As described next in the comments of the script, the flow of the program is:


1. Initialize configuration information
1. Connect to the database
1. Insert data `$no_entries` number of times
1. Query the database
1. Disconnect from database.

I would not expect a basic Mod Perl/CGI script to need much more in terms of vocabulary.


=CODE_START=

#!/usr/bin/perl 
use DBI;  

# [1] Configuration variables

$database='freesoftware';  # Which database
$host='127.0.0.1';  # Which host to connect to
$dbUser='alan';  # The user to connect to the DB
$password='changeit';  # Password
$table='items';  # Table to insert into
$query='select * from items';  # Query to ask

$no_entries=40;  # Number of extra entries to generate
$startPK=4;  # Primary Key start point

#MAIN 

# [2] Connect to Database
$dbh = DBI->connect("DBI:mysql:database=$database;host=$host",$dbUser, $password,{'RaiseError' => 1}); 

# [3] Loop $no_entries times and insert a row into the table each time
my $counter=0; 
while ($counter != $no_entries){ 
    $dbh->do("INSERT INTO items VALUES (?,?)",undef,$counter+$startPK, "AUTOMATIC_PK_$counter"); 
    $counter++; 
} 
# End of loop


# [4] Return Query information 
$sth = $dbh->prepare($query); 
$sth->execute; 
print "QUERY: $query\n"; 
# Loop through each row of information returned
while (my @row_array=$sth->fetchrow_array) { print "@row_array\n" } 
$sth->finish(); 
# End of Query

# [5] Cleanup database connection
$dbh->disconnect();

=CODE_END=

Notice that, for the sake of simplicity, I have not included any real error handling in the code. However, if you deliberately break the query statement stored in `$query` you will normally get a meaningful error message back; for example:


=CODE_START=

DBD::mysql::st execute failed: You have an error in your SQL syntax;
check the manual that corresponds to your MySQL server version for the right syntax to use near
'slect * from items' at line 1 at select.pl line 17.

=CODE_END=

Having an example code snippet gives you a finger hold into the programming aspects.


<!--pagebreak-->


If you are looking for an exercise to strengthen your developer’s backbone, feel free to expand the code to delete the first and last rows and then redisplay the results.

In summary, in this section a basic DBI script has been detailed which notably uses both the `prepare()` and `execute()` and the `do()` approach to perform a given SQL action.


# MySQL querying from the GUI

The nice people at MySQL AB have also developed the MySQL Query Browser. This tool allows for ad hoc querying and modification of data. Further you can export result sets to CSV, XML, PDF, EXCEL, and create and edit stored procedures within the database itself. To install via `apt`:


=CODE_START=

sudo apt-get install mysql-query-browser

=CODE_END=

You will now find the GUI tool under the menu item Programming→MySQL Query Browser.

Connect to the database, type the query `select * from freesoftware.items;` and then click on the top right hand side: the Execute icon will generate a screen similar to that shown in figure 5.


=IMAGE=f5.jpg=Figure 5: The MySQL Query browser=

From the GUI you now have the ability to conveniently modify data on the fly. At the bottom of the screen, you may notice the “Start Editing” button: press it, click on the result `medium_toy`, edit and finally apply changes. Execute the query again and you will clearly see that the database had updated the relevant value.

To export the data to a particular file type, select the menu item File→Export Ruleset and then choose the type and location of file you wish to export.


# PhpMyAdmin

Before installing PhpMyAdmin be warned that for a fresh install you will end up deploying both the Apache 2 server and PHP 5. If you have already installed another web server or do not like the security implications, then this may be one-step too far; but then again, if you are like me and don’t mind taking risks on a development machine, carry on.

The PHP language is well suited to developing MySQL applications: it’s interpreted (and therefore doesn’t need recompilation), and has built-in commands that make connecting to MySQL obvious and easy to master.

PhpMyAdmin is a best of breed web interface that allows rich manipulation of MySQL and is included in the popular and well [regarded](http://www.apachefriends.org/en/extra-xamppstatistics.html) [XAMPP](http://www.apachefriends.org/en/xampp.html) bundle.

To install PhpMyAdmin under Ubuntu via `apt`:


=CODE_START=

sudo apt-get install phpMyAdmin

=CODE_END=

Notice that `apt` installed the following packages: `apache2-mpm-prefork apache2-utils apache2.2-common libapache2-mod-php5 php5-common php5-mysql phpMyAdmin`.

Watching the fast flowing installation feedback I also noticed the warning:


=CODE_START=

Setting up apache2-mpm-prefork (2.2.3-3.2ubuntu0.1) ... 
Starting web server (apache2)... apache2: Could not reliably determine the server’s fully qualified domain name, using 127.0.1.1 for ServerName

=CODE_END=

If you see this message, to contact the PHP5 application you will need to write the following in your favourite browser’s address bar: `http://127.0.1.1/phpMyAdmin/`. The security implications are positive as only a local user has access to the application—this is very good for local testing.

Notice that your newly installed login page is not encrypted; for security reasons it is best practice to enable the SSL port if visiting from the internet.

As shown in figure 6, there is a friendly forward-looking feature of this tool: it’s been translated into a vast range of languages. As I live in Holland, it is pleasant to see the Dutch language as one of those included.

Now log in as user “alan” with whatever least privileged user you have created and with the password you use directly against MySQL.


=IMAGE=f6.jpg=Figure 6: The default Login page of phpMyAdmin=

After logging on to the application, it quickly and efficiently assembles relevant information into an introduction screen (figure 7). The user “alan” has no privileges to create databases, and that is reflected in red highlighted text (not to be missed even if we wanted to!).


=IMAGE=f7.jpg=Figure 7: The default Login page of phpMyAdmin=

The buttons on the left hand side underneath the products icon are shortcuts to home, exit, “perform an SQL query”, the tools documentation and more generic documentation.

Hitting the SQL icon results in the pop up of a query window, as described in figure 8. In the query window write the query “`select * from freesoftware.items;`” and then press the go button.


=IMAGE=f8.jpg=Figure 8: The SQL query window=

Hitting the go button brings up the main window with the results, figure 9.


=IMAGE=f9.jpg=Figure 9: The results window=

Clicking on the pencil icon allows you to edit individual results. The developers of this rich application have enabled many potential actions including browsing the data. At the top of the browser window are tabs _Browse_, _Structure_, etc. Selecting the structure tag generates a screen similar to figure 9.


=IMAGE=f10.jpg=Figure 10: The structure window=

Within the structure pane (figure 10), you can clearly see and manipulate the tables structure and even generate new indexes that make querying faster.

To export data choose the Export tab as shown in figure 11, and then select the export format of choice.

And the list of potential administrative tasks goes on...


=IMAGE=f11.jpg=Figure 11: The export tab of phpMyAdmin=

To sum up, I personally like the phpMyAdmin tool because of its no-fuss interface and rich functionality—and it works from the internet. No wonder it is so popular with website administrators and Internet Service Providers.


# End bits

The MySQL database is fast, stable, well received and has numerous free software tools that support it. 

I hope this article has placed some of the first time users on the initial rungs of the knowledge ladder. After following the recipes on your Ubuntu development machine you now have a database, a few graphical tools, Apache with PHP and a Perl script waiting to be adapted.

_Time to experiment. Remember to drop everything afterwards!_


# References


* [PhpMyAdmin homepage]( http://www.phpMyAdmin.net/home_page/index.php)
* [MySQL homepage](http://www.mysql.com/)
* [MySQL Administrator Manual](http://dev.mysql.com/doc/administrator/en/index.html)
* [MySQL Query browser](http://dev.mysql.com/doc/query-browser/en/)
* [XAMPP](http://www.apachefriends.org/en/xampp.html)
* [XAMPP statistics](http://www.apachefriends.org/en/extra-xamppstatistics.html)

