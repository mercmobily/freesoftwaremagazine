---
nid: '3052'
title: 'Creating a multilingual website with Smarty'
authors: 'Ryan Cartwright'
published: '2008-11-17 2:45:34'
tags: 'php,languages,web-development,smarty'
license: verbatim_only
section: hacking
listed: 'true'

---
Some time ago I was required to adapt a bespoke website application (which I had originally written) so it not only supported multiple languages but also multiple character sets. The website, [MakingContact.org](http://www.makingcontact.org), is a on-line community for families with disabled children run by the charity [Contact a Family](http://www.cafamily.org.uk). It required "support" for four languages in addition the English it was currently in: Somali, Arabic, Farsi and Simplified Chinese. Yes, I know the latter is not actually a language but for these purposes the cap fitted.

I decided to do it using [Smarty](http://www.smarty.net), the PHP-based templating engine. Whilst it was possible that a CMS or similar could do the job now, at the time I could find none which supported multiple character sets in the way I required. I've been meaning to write the process down for some time so here's how I did it.

<!--break-->

It's actually quite straightforward to do so this is more a discussion than a how-to. I'm not going to go into too much depth about using Smarty because that's not the point of this piece. There is excellent documentation on the [Smarty website](http://www.smarty.net) if you want to start using it. Of course Smarty is free software under the LGPL.

# Languages and character sets

Firstly let's run through some of the issues involved. Only two of the eventual languages (Somali and English) use the same character set. Arabic and Farsi are right to left and Simplified Chinese is harder to get translators for because "it's not really a language". To support multiple character sets properly UTF is the way to go, it means you can -- if needed -- include some Latin characters in the Farsi pages and vice versa.

=ZOOM=To support multiple character sets properly UTF is the way to go=

The other thing is that this is a dynamic site: members can search and find each other through a number of ways and also securely get in touch with each other. The member-posted content could not be translated because on the fly translation of that standard is not available. If you don't believe me enter a phrase into an online translator, translate it into another language and then translate it back. The community this site serves has a high number of vulnerable members and thus confusion caused by mistranslation could cause all sorts of problems. So only the "static" text (menu options, explanatory notes, titles etc.) would be translated. On any site there's more of that than first meets the eye. Have a look around here and you'll see lots of titles, standard links, terms and conditions, frequently asked questions etc. all of which would need translating. So in the end there were around 13000 words which needed translating into the four other languages. We outsourced that to a specialist company along with clarification over what English meaning we wanted ("sex" referring to _gender_ not _intercourse_ for example).

=ZOOM=Member-posted content could not be translated because on the fly translation of that standard is not available=

# Why Smarty?

Smarty is used by a number of CMS and other web applications. It's a PHP library that allows you to develop your engine separately to the content-display part of the site. Smarty uses templates which are cached to speed up delivery. It's kind of a way to bridge the gap between the delivery speed of static files and the updating-speed of a dynamic content generator. Smarty variables are assigned in your PHP (or sometimes within the templates) and then referred to within the templates. Functionality such as conditional formatting and simple arrays is available. All in all it's quite a powerful system. It has some limits but then so does everything. I chose it partly because of the familiarity of it and partly because on review it seemed one of the easiest ways to roll out this site.

Smarty has a concept of config files which -- among other things -- can define common Smarty variables. In other words you can use a Smarty config to assign a variable such as the site title or company name. I found another use for them: if I could define a variable for each static paragraph in a config file, then I could use those variables in my templates. In that way to load the site in a different language you simply load the Smarty config containing the translated versions of the static text. Here's a very simple sample template:

=CODE_START=
{*Smarty*}
<div><p>{$welcome1}, <em>{$username}</em></p>
<h2>{$search_form_title}</h2>
<form id="form1">
<input type="text"><input type=submit value={$find_now}>
</form>
</div>
=CODE_END=

=ZOOM=Smarty variables and markup can be written within the HTML tags=

Figure 1 shows this rendered in English and Somali. You can see from the above code that the Smarty markup is wrapped in curly braces. The opening line is a Smarty comment and won't be sent to the browser. The variables are preceded by $ and you otherwise write the template pretty much as a standard HTML file. Smarty variables and markup can be written within the HTML tags as shown by the value for the submit button. The $username variable contains the current logged-in username and is set by your PHP application. The others are set in the Smarty config and will differ for each language. So our config files contain the translated versions of it. Here's the sample English version:

=CODE_START=
find_now=find now
welcome1=Welcome to MakingContact.org
search_form_title1=Start searching for people to contact
=CODE_END=

And here's the equivalent Somali version:

=CODE_START=
find_now=Haahan raadi
welcome1=Ku soo dhawow Makingcontact.org
search_form_title1=Bilow baarista dadka aad la xiriiraysid
=CODE_END=

Note how the value is not in quotes. Any newline characters would end the value, so there are some limitations to this. You also need to remember that if a dynamic variable is to be inserted into a static paragraph, you will to define two config variables for it. So this kind of thing:

=CODE_START=
There are 130 people listed against that location.
To list them you can click here.
=CODE_END=

Would require one config variable containing "There are " and another containing everything after the number 130 (which itself is a dynamic variable).

=IMAGE=figure1.jpg=Figure 1: The same form rendered in two languages by Smarty=

# Loading a config file

Once you've written your templates and got your config files you just need to load the relevant one before loading the template. This call takes place in your PHP files:

=CODE_START=
if (session_is_registered('lang')){
   $lang_set = $_SESSION['lang'];
   } else {
          $lang_set = "english";
	  }
$smarty->clear_config();
$smarty->config_load($lang_set . '.conf');
=CODE_END=

That's over simplified because it doesn't check the value of the language set in the session cookie before applying it, but it shows the application of the config file. Any templates displayed after this will use the appropriate config variables.

# Other considerations

When running a multi-character set site, just using UTF is not enough. Your users will need to have appropriate fonts installed for each character set. In the most part it's safe to assume that somebody wanting to read a website in Arabic will have Arabic fonts installed, but if not you need to provide some kind of help page explaining how to install them. That of course depends upon how friendly you want to be to your visitors.

Also if you are considering translating any website into another language remember to include the little stuff like values for select boxes in forms, copyright notices and make sure you draw the line at a practical place. The site I'm referring to deals with list of thousands of medical conditions. Translating them may have been possible but it would have been impractical as the lists change quite often.

If you are interested in doing something like this and want some advice get in touch with me via the [Equitas website](http://www.equitasit.co.uk). Of course if just want to generate some discussion then use the comments here at FSM.

=TEXTBOX_START=Update July 2010=
MakingContact.org, the website this article refers to no longer has multi-lingual support (reportedly due to funding issues - I am no longer involved with the project or the Charity behind it). It's still a valuable service for families with disabled children though. If you need any assistance on creating multi-lingual sites with Smarty, please get in touch with me at [Equitas](http://www.equitasit.co.uk).

Ryan Cartwright
=TEXTBOX_END=