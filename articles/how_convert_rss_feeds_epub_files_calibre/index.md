---
nid: '3777'
title: 'How to Convert RSS Feeds into EPUB files with Calibre'
authors: 'Gary Richmond'
published: '2012-06-15 2:06:38'
license: cc-by-sa
section: end_users
main_image: 4995944676_9456f651bb_m.jpg
listed: 'true'

---
For my money [Calibre](http://calibre-ebook.com/) is one of _the_ most indispensible pieces of software in GNU/Linux. It can handle all your e-books in all the major formats, including PDF, EPUB and Mobi. It supports up to thirty e-reader devices but this article will tell you how to use Calibre to convert RSS feeds to EPUBs (which can then be read in Calibre's own E-reader or synced and transferred to your external reader of choice).

<!--break-->

Despite what the Calibre webpage says about not installing from distro repositories, this really is the easiest way to do it and it should be in all the major distros. So, once installed start it and let's get cracking. By default, Calibre come preloaded with RSS feeds that you can convert to EPUBs but we're going to create a customised one and we'll try that with FSM.

You should now be looking at Calibre's main interface. Select `Add a custom news source`from the Fetch News button.

=IMG_CLEAR=Select_a_customized_RSS_feed.jpg=Figure 1: Select a customized RSS feed=


And you wiil be presented with three fields to populate.


=IMG_CLEAR=Cooking_a_recipe_for_an_EPUB.jpg=Figure 2: Cooking a recipe for an EPUB=


First, open FSM in your browser and click on the RSS feed in the location bar.

=IMG_CLEAR=Copy_and_paste_the_FSM_feed.jpg=Figure 3: Copy and paste the FSM feed=


and then copy and paste the URL into Calibre and give the feed and recipe a name too.


=IMG_CLEAR=Copy_feed_url_and_give_it_a_name.jpg=Figure 4: Copy feed url and give it a name=


Again, select `Schedule news download` expand the `custom category` and click on FSM. Now, choose `Download now`. Calibre will download and do the necessary EPUB conversion. Hit Save and you're done. 


=IMG_CLEAR=FSM_has_been_added._Now_download.jpg=Figure 5: FSM has been added. Now download=

You will now see FSM in the Cover Browser (if you have it enabled, Highly recommended) but as you can see from the screenshot, because Calibre could not find a contextual cover it loaded its own default cover image. 


=IMG_CLEAR=The_FSM_EPUB_book_ready_to_view.jpg=Figure 6: The FSM EPUB book ready to view=


We can fix that by selecting `Download Metadata and covers` from the Metadata button.


=IMG_CLEAR=Download_Metadata_and_covers.jpg=Figure 7: Download Metadata and covers=


From the resulting screen click on `Browse` and select an image from your hard drive.


=IMG_CLEAR=Browse_your_hard_drive_for_suitable_cover_images.jpg=Figure 8: Browse your hard drive for suitable cover images=

And, finally, we have the finished product!


=IMG_CLEAR=Now_our_EPUB_has_a_proper_cover.jpg=Figure 9: Now our EPUB has a proper cover=


Click on it and read FSM articles in the built-in EPUB reader.


=IMG_CLEAR=FSM_in_Calibre's_built_in_E-reader.jpg=Figure 10: FSM in Calibre's built in E-reader=



