---
nid: '3792'
title: 'Cropping (lossless) JPEGs with CropGUI. Simplicity Itself'
authors: 'Gary Richmond'
published: '2012-08-01 4:24:21'
license: cc-by-nc-sa
section: end_users
main_image: GIMP_Icon.jpg
listed: 'true'

---
The most used graphic program in the free software jungle is Gimp. It is a hugely powerful piece of software, but when all you want to do is to crop a JPEG image without any loss of quality, it's positive overkill: that's when you need CropGUI.

<!--break-->

As the name suggests, [CropGUI](http://emergent.unpythonic.net/01248401946) is a graphical front end for cropping images, written in Python. That's it. That's all it does. No bloat, no dense feature set. One piece of software, one function. It's not in the repositories or available as a third-party binary but installing it from the compressed tarball is, like CropGUI itself, simple.

Download CropGUI from the link above, navigate to the directory you downloaded it to in your chosen file manager, right click and extract it with whatever archive manager you use and a directory will be created called CropGUI.

=IMG_CLEAR=Cropgui's_extracted_python_files.jpg=Figure 1: Cropgui's extracted python files=

On nice touch here is that you can choose between a Python or GTK version. Most desktops run GTK and it looks better too. So, click to select a file (or files).

=IMG_CLEAR=Select_a_file_or_multiple_files.jpg=Figure 2: Select a file or multiple files=

Select the JPEG to be cropped (you'll get a preview image in the GTK version) and the main window will open the file.

=IMG_CLEAR=Cropping_the_horsehead_nebula.jpg=Figure 3: Cropping the Horsehead nebula=

Now, grab any one of the four corner boxes and drag the image selector around (you can also then hold down the left mouse button and move the entire cropping frame to select the area you want to fine tune it). Once the desired area has been selected, hit the crop button. You're done: the original image has been retained and the cropped image suffers no loss of quality. 

CropGUI has one nice extra feature. You can crop multiple images in one pass. Just use either control/shift and the left mouse button to select contiguous or non-contiguous images respectively. When you've cropped one, the next will appear for editing.If you decide not to crop any of the batch just hit the _Skip_ button and move to the next one. You can even crop any of the images you cropped previously. The original image will remain and cropped images will now have `crop` in the filename. 

CropGUI. Does exactly what it says on the tin. 