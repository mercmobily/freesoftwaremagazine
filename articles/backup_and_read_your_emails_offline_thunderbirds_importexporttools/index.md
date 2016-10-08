---
nid: '3807'
title: ' Backup and Read your E-mails offline with Thunderbird''s ImportExportTools'
authors: 'Gary Richmond'
published: '2012-10-31 4:38:48'
tags: 'thunderbird,email,addons,backups,mozilla'
license: cc-by-nc-sa
section: end_users
main_image: AquaBlack.jpg
listed: 'true'

---
In a previous article on [syncing and restoring your GMail account with the excellent GMVault](http://www.freesoftwaremagazine.com/articles/backing_and_restoring_your_gmail_accounts_gmvault) I voiced one minor and perhaps unfair criticism. Namely, that as backed up e-mails had no recognizable titles, it was virtually impossible to identify specific messages. But, of course, that was never the intended purpose of GMVault. It would have been the icing on the cake if it was. With [Thunderbird configured with IMAP](http://www.freesoftwaremagazine.com/articles/mozilla_thunderbird_imap_and_gmail_backup_embrace_and_extend), GMVault backing up and restoring GMail it may seem that the belt and braces approach is complete--but there is one thing more we can do to make our e-mails fully accessible offline without an e-mail client. It doesn't require  concatenated commands in a terminal or a free-standing piece of GUI software with possible dependencies. What is it? A simple Addon for Thunderbird called [ImportExportTools](https://addons.mozilla.org/en-US/thunderbird/addon/importexporttools/).

# Installing and configuring

Visit the link above and download the addon.Open Thunderbird, select `Add-ons` from the Tools drop-down menu and then click on the little cog icon immediately to the left of the search bar. Click on `Select Add-on from File` and install.

=IMG_CLEAR=Installing_the_xpi_is_straightforward.jpg=Figure 1: Installing the xpi is straightforward=

If prompted, restart Thunderbird and you're done. Now, go back to the Tools menu and the addon will have been appended to the drop-down list.

=IMG_CLEAR=ImportExportTools_offers_lots_of_options.jpg=Figure 2: ImportExportTools offers lots of options=

Before we can export any e-mails however, we need to visit `Options` to specify a directory. Options has three tabs. I want the `Export directories` tab. Select it, check the `Export folders as single files` box, Browse will ungrey. Click on it and choose a directory for export.

=IMG_CLEAR=Specify_your_destination_directory.jpg=Figure 3: Specify your destination directory=

Return to Tools > (1) ImportExportTools and select (2) Export all messages in the folder and finally choose (3) EML format.

=IMG_CLEAR=Three_clicks_and_you're_ready_to_backup.jpg=Figure 4: Three clicks and your ready to backup=
  
When you click on (3) ImportExportTools will immediately commence the backup with a progress report running at the bottom of Thunderbird.

=IMG_CLEAR=A_fast_backup_with_a_progress_report.jpg=Figure 5: A fast backup with a progress report=

# Viewing the e-mail backup files in Thunderbird and browsers

We're done. All that remains is to view the backup. Open your file manager of choice and navigate to where you backed up Thunderbird's emails. You will now see two items in that directory.

=IMG_CLEAR=No_complex_databases:_just_simple_files.jpg=Figure 6: No complex databases: just simple files=

Opening the messages sub directory I can now see all the backed-up e-mails and, unlike GMVault, they are easily identified as ImportExportTools has retained all the Subject Headings and also the dates (albeit in the American calendric format)

=IMG_CLEAR=Backed_up_e-mails_and_user_friendly_too.jpg=Figure 7: Backed up e-mails and user friendly too=

and because I am viewing them in a file manager I can filter content to list display mails by person or topic. That narrows the search down considerably. It remains only to click on a given e-mail to view it in Thunderbird (or any other desktop client supporting the EML format). 

The other item in the backup directory is `index.html`. In some ways that is an even better option. As the file type suggests, it can be opened in any web browser. Here is how any browser will format it. In my case, Konqueror.

=IMG_CLEAR=Well_laid_out and_very_easy_to_locate_e-mails.jpg=Figure 8: Well laid out and very easy to locate e-mails=

This layout is neatly tabulated and needs no commentary from me. To open any e-mail either middle click with your mouse and it will display in a separate tab. However, there is a lot of extraneous metadata that tends to clutter things so, if you prefer, just right click and open it with Thunderbird or your client of choice. As you can see from the screenshot above I've censored my e-mail address for the usual reasons of personal security which rather spoils the neat, clear appearance. Clearly, with backups of personal, confidential information this kind of material needs to be protected so users should think about either encrypting and or password protecting ImportExportTools backup directories. 

# Customize your backup

You may have noticed that I only backed up my inbox but this addon can be more selective. For example, if I want to backup another folder below the inbox all I need to do is to click on it to open it in the main Thunderbird window and repeat the process outlined above for the inbox. That folder will be added to existing backups under its own, named directory. While you can use Thunderbird's own filter feature, ImportExportTools has a better facility for this which will also backup your search too. From the `Tools > ImportExportTools` select `Search and export` and the following screen pops up.

=IMG_CLEAR=A_powerful_and_well_featured_search_tool.jpg=Figure 9: A powerful and well featured search tool=

From the search message field (top left) choose the folder you want to search.

=IMG_CLEAR=ImportExportTools_search_has_powerful_mojo.jpg=Figure 10: ImportExportTools search has powerful mojo=

I chose the e-mails in the Tony (Mobily) folder and specifically all the e-mails about Google Plus. Clicking on the search button (top right) will find them under that search request.

=IMG_CLEAR=Better_filtering_credentials_than_Thunderbird.jpg=Figure 11: Better filtering credentials than Thunderbird=

All that is left to be done is to select the file format for backup (eml) and hit the export button. The only difference is that unlike the first example the backup only has the messages and no index.html file.

I haven't explored all the features of this superb addon but hopefully sampled enough to convince you that, used in conjunction with an IMAP-configured Thunderbird and GMVault, it helps to cover all the angles. With these combined tools you need never worry again about losing e-mails or access to them even when you're offline and or away from an available internet connection. And of course, you will throw all these backups onto some external media just in case you also lose access to your computer too, won't you?
