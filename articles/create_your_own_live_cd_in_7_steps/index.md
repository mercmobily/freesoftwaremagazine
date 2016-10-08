---
nid: '2332'
title: 'Create your own Live CD in 7 Steps'
authors: 'Jonathan Roberts'
published: '2007-08-15 11:20:04'
tags: 'live-cds,fedora,revisor'
issue: issue_19
license: cc-by-sa
section: hacking
listed: 'true'

---
Knoppix made live CDs popular—and with good reason too. Do you want to check whether a distribution works well with your hardware, or to show off the latest Compiz Fusion magic, or maybe you have a presentation to do and you want to make sure you have the same environment to show it in as you had to create it? A live CD can help with all of these scenarios. However, until recently you had to read through some pretty dense documentation to make any customisations. Now, Fedora 7 is out and Revisor is here to help you create any kind of live system you can imagine, in 7 easy steps.

In this article, I’m going to be creating a live CD with a custom package set. If you have slightly different goals in mind, follow along anyway as the process for creating a live CD/DVD/USB image is virtually identical, as is the process for creating any kind of non-live installation media. I’ll also assume that you are running a working Fedora 7 system with access to the Fedora repositories (networked or locally).


=ZOOM=All of the software you need to create a live CD can be found in the Fedora repository=


# Step 1—install Revisor

All of the software you need to create a live CD can be found in the Fedora repository, so you can install Revisor and its dependencies in one of two ways:


* `su -c "yum install revisor"` from the command line
* `Applications→Add/Remove Programs`, search for Revisor, mark it for installation and then click Apply.

Once the installation is finished, launch Revisor by using its menu entry found under `Applications→System Tools→Revisor`. You’ll be presented with the welcome screen, explaining a bit about the software and where it’s come from. Obviously, to get things started click _Get Started_!


=IMAGE=revisor.jpg=Figure 1: Welcome to Revisor!=


# Step 2—Select your media

The next screen asks you to select what kind of media you would like to create. As I said before, I’m going to be creating a live CD, but in many situations this might not be appropriate; below is a brief summary of what you can expect from each type of media and possible reasons for using it.


## Installation media types


* DVD Set—creates a DVD (or DVD set) that will boot into the Anaconda system installer. Gives the greatest flexibility for an installed system as it has the most space to play with.
* CD Set—creates a CD (or CD set) that will boot into the Anaconda system installer. It's useful if you don’t have a DVD drive available. Revisor will automatically split the image into multiple CD ISOs if needed, with disc one being bootable and the others holding packages.


## Live media types


* Optical Live Media—creates either a live CD or DVD (depending on the amount of data to be included). Boots into the working desktop environment of your choice, with many customisations available through the use of a kickstart configuration file.
* USB Live Media—this option is not yet available for Revisor (it will be in the near future). If you want this functionality, it can be performed from the command line using the `livecd-iso-to-disk` script, which converts a live CD ISO image to work on a USB stick.

Select which ever option is more suitable to your circumstances and then click Forward.


# Step 3—Revisor configuration

Each run of Revisor uses two configuration files: the first can be thought of as an index, pointing to a number of different repository configurations you can use; the second holds the information about the repositories, such as URI etc. By default Revisor uses the file `revisor.conf`, found in `/etc/revisor/` as the first configuration file, and points to one of a number of example files in `/etc/revisor/conf.d/` for the repository information.


=ZOOM=A kickstart file allows you to specify a large number of options, saving you from having to manually configure them every time you create a live CD=

By default these files give you a wide range of possibilities, including media based on Fedora 6, 7 or development, and targeted at the i386, PPC or x86_64 architectures (specified through the “Configuration section to use” drop down menu).

This is probably sufficient for most circumstances; however, if you want to use a local repository, or to add a third party repository not included with Fedora by default, you will have to edit a configuration file. The simplest way to do this is to edit one of the existing entries; for example, to use Revisor to create a Fedora 7 based system from a local repository, you would edit the file `/etc/revisor/conf.d/revisor-f7-i386.conf`, and edit the line that starts with `baseurl` to point at the folder containing your local repository. The same would be true for a remote, third party repository.

If you do choose to edit one of these configuration files, be sure to hit the refresh button in Revisor so that the latest information is loaded. Once this is done, you can choose which repositories to enable using the check-boxes below, and specify the directory where the ISO will be outputted to. Make sure you remember this! Once again, click Next.


<!--pagebreak-->



# Step 4—load kickstart data

A kickstart file allows you to specify a large number of options (including package manifest), saving you from having to manually configure them every time you create a live CD. Revisor provides a sample kickstart file which should be sufficient for most uses: if you want to customise the details held in this file, you can select the appropriate check-box from under the “Advanced Options” section of this screen. In this tutorial, I will simply be customising the package selection, but if you want to experiment with more advanced options go right ahead!

Advanced users can create their own kickstart file using the graphical `system-config-kickstart` application which is installed as a dependency of Revisor, and found under `Applications→System Tools→Kickstart` menu entry. Make sure you remember the location of where you save this kickstart file, as you will need to point Revisor at it to make use of it.

Once you are finished on this screen, click Next.


# Step 5—package selection

The next screen allows you to select packages for inclusion on the media, and uses the same interface as Fedora’s Pirut (Add/Remove Applications) program.


=IMAGE=revisor2.jpg=Figure 2: Package selection with Revisor=

In the default view, categories are available on the left, and sub-categories on the right; each sub-category contains a number of mandatory and optional packages, whose selection can be refined by selecting the Optional Packages button. To remove, or add, all optional packages from a sub-category, right click it and select the appropriate option. These options only become available once that sub-category is itself selected.

You can also browse the available packages as a list, or search for an individual package, using the tabs at the top of the screen.

Once satisfied, Revisor will resolve the dependencies of the selected packages, ensuring they have access to everything they need to work correctly. The amount of time this takes will vary, depending on how many packages you selected.


# Step 6—Go!

When Revisor has finished checking for dependencies, it will move on to the next screen that gives you some final pieces of information about your media before proceeding. Included is the number of packages selected, and the approximate size of the final image to be created. If you’re happy with this, click Forward; otherwise, return to the previous screen to further refine your package selection.


=ZOOM=It will take some time to grab all the packages from the repository—especially if it’s a remote repository—and compose them into your desired media=

The advanced options for this section have not yet been implemented.

At this point you may want to go and make a cup of tea. It will take some time to grab all the packages from the repository—especially if it’s a remote repository—and compose them into your desired media. Keep checking back from time to time, and once it’s done you have one final job left: burn the ISO.


# Step 7—Burn the ISO

Remember where you told Revisor to output the ISO image to (hint: the default is `/srv/revisor/`)? Well, once it’s finished take a peek in this folder and you should see your brand new ISO image. To burn this to a disc, simply right click it and select the option from the context menu to burn the image to a disc—it’s that simple!

Again, depending on how large the image is, and the speed of your drive, go and make another cup of tea as it could take a while. Once it’s finished your disc will be ejected and you’re ready to go!


# Conclusion

Easy, right? There are loads of other customisation options you might want to make (other than changing the packages included on the disc), but they’re best left for you to experiment with (hint: kickstart!). Keep an eye on this exciting project too, as there is talk of creating a web interface for remotely creating your own custom Fedora system, although for now this is very much talk.

