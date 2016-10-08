---
nid: '3802'
title: 'Compile Your Own PDF Books with Wikipedia and Edit them with LibreOffice and Pdfmod'
authors: 'Gary Richmond'
published: '2012-09-10 4:36:37'
tags: 'wikipedia,pdfmod,libreoffice'
license: cc-by-nc-sa
section: end_users
main_image: Wikipedia-logo.JPG
listed: 'true'

---
Yes, you read that correctly. If you've ever wanted to put together a bespoke PDF document and then edit it to add or delete features, you don't really need to hunt for some specialist software to get the job done. Wikipedia is only a URL away and LibreOffice comes bundled with all the major distros--and if not it can usually be installed from the repositories.



# First, get you PDF


Our first port of call is Wikipedia, so point your browser there and search for the topic you want for your PDF. Mine is going to be about Apt-get. Scroll down the page and in the side bar select `Create a book` from the `Print/export` section. 


=IMG_CLEAR=Start_your_PDF_creation_here.jpg=Figure 1: Start your PDF creation here=



Say Yes to the prompt and then confirm `Start Book Creator`.At the top of the page youi now have a box to start creating PDF content.


=IMG_CLEAR=Book_creator:_to_start_building_content.jpg=Figure 2: Book creator: to start building content=


Add the page. At this stage you have a choice: add more pages based on Wikipedia's suggestions or add them by hovering the cursor over any suitable hypertext links (`Add linked wiki page to book`). Once the selection is complete click on the `show book` link. 


=IMG_CLEAR=Show_book_will_list_your_chosen_content.jpg=Figure 3: Show book will list your chosen content=


This is the point where you can now create chapters and drag and drop your content for the final product. Here's my final output.


=IMG_CLEAR=Behold,_the_masterpiece_is_finished.jpg=Figure 4: Behold, the masterpiece is finished=



Click Download and Wikipedia generates the PDF and provides a link to download. You're done.


# Editing and exporting text as a PDF


Now, fire up LibreOffice. The most recent version has importing PDF files enabled as default. However, if you find that you get ASCI garbage it may be that you are using your distro's version of LibreOffice. If so, you will need to install `libreoffice-pdfimport` (`sudo apt-get install libreoffice-import`)--or remove your distro's version and [install the standard version from the official website](http://www.libreoffice.org/). Either way, you should now be able to import your bespoke PDF. (Even if you are in LibreOffice Writer, the PDF will open it in Draw.) 


So far so good. You'll notice that instead of being able to scroll through the entire PDF as normal, you are presented with all the pages in the left-hand side bar. By selecting one you can view it in the main window. When editing any given page using Draw's facilities your mileage may vary but the two features I want to use are the simple ability to edit the text (delete, amend or add) and insert additional images in chapter headings.


Now, you may have heard that the big disadvantage of editing text is that it's tedious. One line at a time. Well, it can be like that if all you want to do is to edit the odd line but my Apt-get PDF was made with Wikipedia as the source so it contains a lot of information like detailed footnotes, authors and licensing which I do not want. That's quite a lot of material to delete one line at a time. You can delete a block of text, or indeed a whole page. If you click directly next to a line of text it will be encased in a resizable grid. You can drag the selected text to a different place on the page or delete it by hitting Return. If you want to delete all or some of an entire page, then just click away from the text to be deleted and use the mouse to draw a box around the desired text and, again, hit Return. This is where is starts to get a bit fiddly. 

You've deleted the text you didn't want. That's great--but you still have the original page count but before we sort that out I need to address what appears to be a bug in LibreOffice. Once I've edited the imported PDF and I try to save it I eventually get an error message that the changes cannot be saved. The work around solution is to save the edited PDF but with a different name (which does at least have the advantage of preserving original files in the event of disaster). Now all that remains is to delete any blank pages. LibreOffice can't do this. We need a third-party tool.


# Pdfmod 


Doubtless there are many suitable candidates to get the job done. I opted for Pdfmod. I installed it from the Ubuntu repositories and most users should find it in their distro's repositories too. From there it's just a matter of launching it and opening the PDF file and finishing the editing process. Click on the page(s) to be deleted (now highlighted with a blue border), right click and choose `Remove Page`. Save your way out and the deletions are preserved. 


=IMG_CLEAR=Multiple_page_deletes_in_pdfmod.jpg=Figure 5: Multiple page deletes in pdfmod=


The added advantage (provided you stuck with the default `Embed OpenDocument file`) is that you have edited the PDF and can view the changes in either a PDF viewer or in LibreOffice (and also for further editing). 


# Adding blank pages

As a final edit, I want to add contextual pictures by way of illustration to each chapter heading. For that I need some blank pages. So, open LibreOffice again and open a new blank page, choose `Export as PDF` and save the page. Now, launch Modpdf again, open the last PDF edit you saved in LibreOffice, open the blank pages and drag and drop them at the appropriate place in the original text. Save the changes and then open the PDF in LibreOffice , navigate to the blank pages and, from the `Insert` drop-down menu select `Picture` (from file) option. All that remains to be done is to size the picture to suit the dimensions of the page and once again Export to PDF (but remember to save the file under a different name if you get that error message).


Obviously, you might want to experiment with the features of LibreOffice Draw to see what else you can do to enhance you bespoke PDF document or book. Again, your mileage may vary but as long as you have a backup copy you can explore without fear or caution. Doubtless you can think of your own tools to edit and manipulate PDF files. I'm fully aware of all the other available tools so please submit your tips, tricks and hacks to improve things even more. 


