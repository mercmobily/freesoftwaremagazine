---
nid: '3346'
title: 'Falcon WOPI, the Falcon Web Oriented Programming Interface'
authors: 'Paul Nema'
published: '2010-06-15 1:48:20'
tags: 'falcon,web'
license: verbatim_only
section: hacking
listed: 'true'

---
These are exciting times for Falcon's language development. New and interesting features are being implemented, tested and rolled out at break neck speeds! Not only are core language features being released, but so are a multitude of feathers (Falcon libraries/modules). One such module release is V1.0 Web Oriented Programming Interface (WOPI). It is the intent of this article to cover the basic features/functionalities of WOPI through common web oriented functional examples.

<!--break-->

WOPI is an abstraction layer between a web server and the falcon scripts that serves up a web page. At a very high level I like to think of it as the ODBC of web servers.

=ZOOM=At a very high level I like to think of WOPI as the ODBC of web servers=

By using WOPI, users can easily move their own web based applications to all the supported Front Ends. Front Ends are the plug-in code required to support particular web architecture. The list is quickly growing, but these currently include: Common Gateway Interface (CGI), Fast-CGI, CGI Falcon-Module, Apache 2, and the micro Falcon based web server. WOPI also delivers standardized functionality common to most web based applications such as: HTTP GET & POST Field parsing, Cookie control, Upload control, Simplified output encoding control, template management, session management, persistent data and application-wide data support. The list of basic functionality, as with the Front Ends is also rapidly growing.

Before diving right in here are a few items to get you started if you don’t already have Falcon/WOPI.
You can get a [copy of Falcon] (http://www.falconpl.org/index.ftd?page_id=official_download)
You can also get a [copy of WOPI](http://www.falconpl.org/index.ftd?page_id=prjs&prj_id=wopi) and the [WOPI Documentation](http://falconpl.org/project_docs/wopi/)

Now that you have all the tools (Falcon and WOPI) let’s get down to it!

# Getting started

Having your own development environment it critical to good software development. In the web world this includes having your own web server and with WOPI you get that. WOPI provides this with Micro Falcon HTTPD server - `falhttpd`. Through `falhttpd` you can easily test, debug and validate your web scripts. Down the road we are planning to make falhttpd a production quality web server for serving falcon script generated content.

For purposes of this article I will use the GNU/Linux platform. Starting `falhttpd` is fairly straight forward. Here are the minimal command line options I like to use: `pnema@LX-D620:~/dev/falcon/wopi/trunk/falhttpd$ falhttpd -L 5 -p 8080 -h .`

Breaking this down: “-L 5” set log level to the most verbose, “-p 8080” listen on port 8080 (default 80) , “-h .” use the current directory for content. Some other defaults: 

* If `falhttpd` finds index.ftd or index.html it will automatically load and process this file.
* Bind to address 0.0.0.0 ( localhost is the default address ), port 80. As most users don't have access to port 80 suggest you use an available port such as 8080.
* Temporary directory (on Linux) is /tmp
* Log is default is 3 (scale of 0 to 5)

Before diving into our practical examples lets quickly review the WOPI architecture in a little more detail. There are two primary components, the Front End and WOPI script interface. Front Ends are the _interfaces_ into or _glue code_ for the Web Server. The Front End you decide to use will be dependent on our particular software stack (I.E. Apache, FastCGI, etc). The current Front Ends WOPI provides are:

* Apache2: Falcon Script generated content under the Apache 2.X architecture.
* FastCGI: Falcon Script generated content under the FastCGI architecture.
* CGI: Falcon Scripts run under the Common Gateway Interface.
* Falcon CGI module: While FastCGI and CGI front-ends are stand-alone applications using the falcon scripting engine to execute scripts forming the CGI-based site, the CGI module is a standard falcon module that can be loaded to turn any script in a CGI front-end. So, a falcon script made executable and loading the CGI module can integrate with the web via a direct CGI interface.
* Falhttpd: Falcon Micro Web Server. Minimal Web Server with a WOPI embedded.

The secondary portion of WOPI is the WOPI interface that falcon scripts have available to serve up content. The WOPI interface is comprised of globally available Objects/Classes, variables, and functions. For purposes of this article, I will focus on the Request and Reply objects. As I progress through this article, I will go into varying depths on each of these. So let's start now.

* **Request**: Is an object through which a script interfaces with the Web Server on incoming requests.

* **Reply**: Is how the Falcon script configures the response back to the requesting browser/application. All updates to Reply must be completed prior to sending any output (via stdout/stderr) from the script to the browser.

WOPI front ends can load any Falcon module and use them in the common interface which as previously mentioned is composed of the Request, Reply, WOPI objects, and a few other global objects and functions. Scripts can query input data or control the output status through the Request object, and control the results to be sent to the remote client via the Reply object; generally output from standard output operator “>” or the “print” function family is typically sent to the other side as text data (and thus, transformed accordingly to the chosen text encoding), while the Falcon stdout binary stream interface allows a simple and natural transfer of binary data to the clients.
The kind of modules that can be loaded by WOPI front ends include source Falcon scripts “.fal”, source Falcon Template Documents “.ftd”, pre-compiled sources “.fam” and binary modules (system specific DLLs). 
Falcon scripts can generate the documents to be remotely displayed through text or binary output functions. Falcon Template Documents are text files with Falcon code slices that can be evaluated to change their output. They both will generate Falcon pre-compiled modules (.fam), which can be used directly by WOPI scripts. Essentially the engine will use them if available when asked to run the relative source files. For example, if the engine is asked to serve up `index.ftd` and `index.fam` (the already compiled version) is available, the engine will use `index.fam`.

Here is a “hello world” index.fal script using a variable called var:

=CODE_START=
var = “HELLO WORLD”
> “<html><title>Hello World Example</title><body>”
> var
> “</body></html>”
=CODE_END=

Note: You can easily condense the above to one line but I’m purposely being verbose.

An “.ftd” example can look like this:

=CODE_START=
<? var = “HELLO WORLD” ?>
<html><title>Hello World Example</title><body>
<?= var ?>
</body></html>
=CODE_END=

NOTE: script code is place between `<? and ?>`, or `<?fal … ?>`. The special escape `<?= expression ?>` is a shortcut to print the result of the expression inside of it (which may consist also of a single variable). For example:

=CODE_START=
<html>
<body>
<p>The value of var is “<?= var ?>”</p>
<p>Two times four gives “<?= 2*4 ?>”</p>
</body>
</html>
=CODE_END=

Now that we have a sense of WOPI, let’s look at a few examples on its use. We will do this by implementing a simple login and account management Web Site. Essentially it will allow you to login and view/update your account information.

To start, let me review our home page called index.ftd. `falhttpd` is configured to serve index.ftd as the initial entry page, similar to most websites serving index.html as the default entry page. So upon entry the user will see this page. All the login logic is contained within this page. As with most login type pages, logic can be extensive. For the purpose of this article, I've kept it simple. 

Our index.ftd page will ask for the user’s login and password. On user submission, validate if the login/password is valid or not. If valid, initiate a session and redirect to the account page. Otherwise let the user know how and why they failed to login. If they are a new user provide a link through which they can provision a new login. Here is the documented code followed by an explanation.

=CODE_START=
 1 <? 
 2 import loadDB from exampleLib as loadDB // loadDB from exampleLib in global namespace as loadDB 
 3 
 4 errMsg = "" // In case of error provide a message 
 5 loginStatus = "" // Another message type 
 6 user = "" // HTML input var
 7 passwd = "" // HTML input var 
 8 users = [ => ] // Dictionary of users 
 9 
 10 function errCondition( msg ) // Simple func to display err mesgs
 11 > '<br>Error condition found!!<br>' 
 12 > @ "Error message list: $msg" 
 13 end 
 14 
 15 function chkParams( user, passwd, errMsg ) 
 16 if not ( user = Request.getField( "login", "" ) ) 
 17 errMsg = '<br>You must enter a login' 
 18 end 
 19 
 20 if not ( passwd = Request.getField( "passwd", "" ) ) 
 21 errMsg += '<br>You must enter a password' 
 22 end 
 23 
 24 return( ( (errMsg == "") ? true : false ) ) 
 25 end 
 26 
 27 function checkLogin( user, passwd, loginStatus, errMsg ) 
 28 global users // get visibility to users dictionary (read only) 
 29 
 30 // check given user/password against our data 
 31 if dictFind( users, user ) and users[ user][ 0 ] == passwd 
 32 // Set the session then redirect 
 33 session = Request.getSession() 
 34 session[ "user" ] = user 
 35 session[ "started" ] = CurrentTime().toLongFormat() 
 36 
 37 Reply.redirect( 'http://localhost:8080/account.ftd', 0 ) 
 38 else 
 39 errMsg = '<br>Invalid Login, try again sucker!<br>' 
 40 loginStatus = '<br><p>Please re-enter your correct login and password.</p>' 
 41 end 
 42 end 
 43 ?> 
 44 
 45 <? if not Request.gets ?> 
 46 <html> <title> Welcome to Falcon </title> <body> 
 47 <form method="get" action="/"> 
 48 <p>Please enter your login and password.</p> 
 49 <br>Login: <input type="text" name="login"><br> 
 50 <? else ?> 
 51 <? 
 52 if chkParams( $user, $passwd, $errMsg ) 
 53 loadDB( $users ) 
 54 checkLogin( user, passwd, $loginStatus, $errMsg ) 
 55 end 
 56 ?> 
 57 
 58 <html> <title> Welcome to Falcon </title> <body> 
 59 <form method="get" action="/"> 
 60 
 61 <? if errMsg != "": errCondition( errMsg ) ?> 
 62 
 63 <?= loginStatus ?> 
 64 
 65 <br><br>Login: <input type="text" name="login" value="<?= user ?>" ><br> 
 66 
 67 <? end ?> 
 68 
 69 Password: <input type="password" name="passwd"><br> 
 70 
 71 <input type="submit" name="submit" value="SUBMIT"> 
 72 </form> 
 73 <br> 
 74 <p>If you don't have a login and would like to obtain one, please <a href="newaccount.ftd">Click Here</a></p> 
 75 </body> </html>
=CODE_END=


Line 1: Import the functions from the common library we are interested in. If you want, you can have a look at [the Falcon common library source](http://www.falconpl.org/index.ftd?page_id=prjs&prj_id=wopi&sid=wiki&pwid=Home&wid=WOPI-Article-Overview).
Line 4-13: Declare a few global variables plus a simple error display function. The `users` dictionary uses the login parameter as a key and points to an array of that specific user's data.
Line 15-25: Function to check the user provided parameters passed by a browser. Using the features provided by object `Request`, `Request.getField( "login", "" )` returns the value associated with parameter “login”. If it’s not present return “” which will fail the `if` condition and trigger an error message to be store in variable `errMsg`.
Line 27-42: Function that checks the user's login and password against our database. Let’s look a bit deeper at this function:
Line 28 Imports the global variable into the function's namespace allowing read only access to this variable.
Line 31: Check to see if `user` is present in our DB and if so, check the given password against the DB password.
Line 33-37: Generate a new session from `Request`, set some user specific data elements in the session object redirect the user to their account management page.
Line 45: Check if the user is submitting a gets request or if this is their initial visit to the page.
Line 52-55: Validates the passed fields (as previously seen, we only ensure data is present), if so load our database (dictionary `users`), then check the user provided login/password against the DB.

This is fairly straight forward logic using key features provided by the Request Object. Now let’s look at the `account.ftd` page which displays the authenticated user's data. Additionally allow the user to change their data and provide a picture of them self. The goal of this page is to demonstrate the ability to capture data and upload a file.

=CODE_START=
 1 <?
 2 // load the functions from exampleLib.fal we are interested in
 3 import loadDB from exampleLib as loadDB
 4 import sessionMgr from exampleLib as sessionMgr
 5 import saveDB from exampleLib as saveDB
 6 
 7 users = [ => ] // dictionary of user data
 8 
 9 loadDB( $users ) // load the user database using a ref to user
 10 
 11 user = sessionMgr( ) // get user & perform any required session work
 12 ?>
 13 
 14 <html> <title>Account Page</title> <body>
 15 
 16 <? if not Request.posts ?>
 17 <form action="" method="POST" enctype="multipart/form-data" accept-charset="utf-8">
 18 First Name <input type="text" name="fName" value="<?= users[ user ][ 1 ] ?>" /><br>
 19 Last Name <input type="text" name="lName" value="<?= users[ user ][ 2 ] ?>" /><br>
 20 Country <input type="text" name="country" value="<?= users[ user ][ 3 ] ?>" /><br>
 21 Your Picture <input type="file" name="uploadFile" /><br>
 22 <input type="submit" name="submit" value="SUBMIT">
 23 </form>
 24 <? else ?>
 25 <?
 26 uploadFile = Request.posts[ 'uploadFile' ] // Get the uploaded file name
 27 if uploadFile // save the filename if provided
 28 users[ user ][ 4 ] = uploadFile.filename // add it to the user's record
 29 uploadFile.store( @ "./$uploadFile.filename" ) // store uploaded file
 30 end
 31 
 32 saveDB( $users )
 33 ?>
 34 
 35 Your account has been updated with the following information:<br><br>
 36 First Name: <?= users[ user ][ 1 ] ?><br>
 37 Last Name: <?= users[ user ][ 2 ] ?><br>
 38 Country: <?= users[ user ][ 3 ] ?><br><br>
 39 <? if users[ user ][ 4 ] ?>
 40 <img src="http://localhost:8080/<?= uploadFile.filename ?>" />
 41 <? else ?>
 42 You have not uploaded your picture as of yet.<br>
 43 <? end ?>
 44 <? end ?>
 45 </body> </html>
=CODE_END=

Line 2-9: Loads common function from the exampleLib.fal library, declares the users dictionary and loads users via the `loadDB()` function call.
Line 11: Returns the session object for this particular user.
Line 16: Determine if the user is submitting a request or not. If not display all the user's data for review and possible modification.
Line 26: Get the `Upload` Object from Request as we are expecting a file
Line 27: But let’s validate if the user actually sent us a file!
Line 28-29: Yes, they did send a file. Save the name to the `users` dictionary and move the file from the temp directory to the location we provide. In this case write the file to the current working directory of falhttpd using the name of the upload file.
Line 32: Save to our database
Line 35-38: Show the user the updates we save
Line 39-43: If we have a picture to display show it otherwise poke user with a message they don't have a picture.

Now that you have basic understandings of these pages lets fire up our `falhttpd` and see it in its natural habitat.

Start up falhttpd in the directory of index.ftd (-h .), on log level 3 (-l 3), port 8080 (-p 8080) and don't write to syslog (-S):
`pnema@LX-D620:~/dev/falcon/wopi/trunk/ttmp$ ../falhttpd/falhttpd -h . -l 3 -p 8080 –S`

Point your browser at http://localhost:8080/ and you will get the following output from `falhttpd`:
=CODE_START=
[0.000 I|HTTP] Falcon HTTPD server started... 
[2.454 I|HTTP] Incoming client 
[2.454 I|HTTP] Incoming client from 127.0.0.1:58731 
[2.454 I|HTTP] Serving request from 127.0.0.1:58731: GET / HTTP/1.1 
[2.463 I|HTTP] Serving script ./index.ftd 
[2.463 I|HTTP] Served client 127.0.0.1:58731 
[2.463 I|HTTP] Client 127.0.0.1:58731 gone
=CODE_END=

When you submit data, falhttpd will provide the following output:
=CODE_START=
[11.996 I|HTTP] Incoming client
[11.996 I|HTTP] Incoming client from 127.0.0.1:54745
[11.996 I|HTTP] Serving request from 127.0.0.1:54745: GET /?login=jonny&passwd=mind&submit=SUBMIT HTTP/1.1
[12.015 I|HTTP] Serving script ./index.ftd
[12.017 I|HTTP] Served client 127.0.0.1:54745
[12.017 I|HTTP] Client 127.0.0.1:54745 gone
[12.088 I|HTTP] Incoming client
[12.088 I|HTTP] Incoming client from 127.0.0.1:54746
[12.088 I|HTTP] Serving request from 127.0.0.1:54746: GET /account.ftd HTTP/1.1
[12.103 I|HTTP] Serving script ./account.ftd
[12.105 I|HTTP] Served client 127.0.0.1:54746
[12.105 I|HTTP] Client 127.0.0.1:54746 gone
=CODE_END=

You can see a few things going on here. The 11.996 is the user submitting a form with a login of “jonny” and password of “mind”. 12.015 is the reply to the browser with the redirect. 12.088 serves up the account.ftd page. Say the user “jonny”, determines all his data is valid but wants to upload a picture of himself as he thinks he's so pretty. Here is the output of falhttpd:

=CODE_START=
Content length: 633996 / 1024
[14.928 I|HTTP] Incoming client
[14.928 I|HTTP] Incoming client from 127.0.0.1:51661
[14.928 I|HTTP] Serving request from 127.0.0.1:51661: POST /account.ftd HTTP/1.1
[14.969 I|HTTP] Serving script ./account.ftd
[14.977 W|HTTP] Cannot remove temp file Cannot remove temporary file (2/tmp/9Y0kEpkxOPzP
[14.978 I|HTTP] Served client 127.0.0.1:51661
[14.978 I|HTTP] Client 127.0.0.1:51661 gone
[14.998 I|HTTP] Incoming client
[14.998 I|HTTP] Incoming client from 127.0.0.1:51662
[14.998 I|HTTP] Serving request from 127.0.0.1:51662: GET /jonnymind.jpg HTTP/1.1
[14.998 I|HTTP] Sending file ./jonnymind.jpg
=CODE_END=

# Conclusion

WOPI is being used to develop other higher level web frameworks that take full advantage of all the features of Falcon. It will speed your develop and speed you webs sites. Check it out when you get a moment.
