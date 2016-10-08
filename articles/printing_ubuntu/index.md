---
nid: '1265'
title: 'Printing with Ubuntu'
authors: 'Mark Rais'
published: '2006-06-02 11:04:29'
issue: issue_13
license: gfdl
section: end_users
listed: 'true'

---
Ubuntu makes printing reasonably easy and straightforward. This brief article is for those who need a specific and encouraging step-by-step guide. I hope that this article will not only ensure that you print with ease, but that you have every reason to enjoy a productive GNU/Linux desktop.

Before you begin the installation steps below, connect your printer/s. You need to do this prior to turning your system on. This helps to ensure Ubuntu recognizes how the printer is connected to the system, and it allows Ubuntu to identify the specific printer port.

Please don’t be dismayed if you plug in your printer and it’s not immediately recognized. I assure you that Ubuntu recognizes the printer. However, you will first need to configure the printer as an available device so other programs can use it.

The Ubuntu _Printing Configuration Tool_ is used to accomplish this. For my example I will use an HP Deskjet printer connected to the Ubuntu system via a USB cable. However, these steps will also apply to printers that connect via a direct or Parallel cable.


# STEP 1. Starting Ubuntu’s printer tool

From your Ubuntu main menu, select _System_, then choose _Administration_. Under the Administration menu, you will find an icon labeled _Printing_. Select this tool and within several seconds the _Printer Configuration Tool_ will open.


=IMAGE=ubuntuprinting1.jpg=Figure 1: Configuration tool=


# STEP 2. Configuring a printer connection

Now, double click on the _New Printer_ icon. This will bring up the _Add a Printer_ wizard.


=IMAGE=ubuntuprinting2.jpg=Figure 2: Add a printer=

Notice that in my example, two printers are detected. However, I only have one HP Deskjet connected to this computer. Worry not! This sometimes happens, depending on the printer and the USB settings. If you see a second detected printer, ignore it and simply highlight the first that best describes your printer.

Now press the _Forward_ button to complete the process.


# STEP 3. Choosing a printer driver

In this second window, you need to click on the _Manufacturer_ option and choose the one that fits your printer. In my case, I use an HP printer. From the Model list, be sure to select the exact model you have.

Don’t worry if your printer model isn’t there. I offer some more details below in the _Troubleshooting_ section.


=IMAGE=ubuntuprinting3.jpg=Figure 3: Select model and driver=

In nearly every case, Ubuntu comes ready with a driver to support your selected model. This is specified in the box beside _Driver_. For my example, I use the driver named hpijs, which is the suggested driver for this printer.

You can also click the _Install Driver_ button, if you have a CD from the manufacturer and wish to add a new driver. But, this is rarely helpful, since the latest Ubuntu comes prepackaged with nearly every driver that already exists for GNU/Linux. However, it does offer the option for future upgrades and updates to your existing drivers.

When you’re ready, press the _Apply_ button. After several seconds your new printer will appear in the _Printing Configuration Tool_ window.


# STEP 4. Testing the printer

Highlight your new printer icon and press the right mouse button.


=IMAGE=ubuntuprinting4.jpg=Figure 4: New printer icon=

Now choose the _Properties_ option.

This takes you to your specific printer’s properties control. The properties control allows you to not only print a test page, but also to make changes to your printer paper, resolution, color options and ink usage.


=IMAGE=ubuntuprinting5.jpg=Figure 5: Printer properties=

For now, press the _Print a Test Page_ button. In a minute you will see a page print out that includes the Ubuntu logo and eight color bars. If this worked, you can press the _Close_ button.

**Congratulations!** Your printer is now ready for use with any application.


<!--pagebreak-->



# TROUBLESHOOTING


## No test page

There may be a few reasons why your test page didn’t print out.

First, with some printers the test page takes a lot longer than you might expect it to. Give the test print a good minute of time.

Second, sometimes the failure comes because you connected the printer after the Ubuntu system was started. You may wish to right click on the _Printer_ icon again and choose remove. Then, leaving your printer connected, you can reboot your Ubuntu system and try the steps again.

Finally, failure to print a test page may have to do with cables not being properly plugged in or a problem with the driver you have selected. If everything seems to be connected correctly, try choosing a different, but similar driver and see if it allows a test print. For example, I can choose the HP LaserJet driver instead of the HP LaserJet 1100A.


## No recognized driver

If you review the list of printer drivers and do not find your particular printer, nor one that is closely related, you may have to try a Generic driver. In the list of drivers, when you click the Manufacturer option, you will find _Generic_. By choosing this, you access a short list of generic printer drivers that may help resolve your issue.

Unfortunately, you need to know some specific technical details regarding your printer to make such Generic drivers work. For instance, most black and white laser printers manufactured after 2000 support the PCL4 or PCL5. If I know that my particular laser printer supports PCL4, I can choose this generic driver and try a test print.

But please wait! I recommend that you don’t just try out various options, since picking the wrong driver ends up forcing countless pages to print with garbage. Usually, the only solution then is to pull the plug on the printer! Instead, do some homework. Find out about your specific printer’s capabilities. If you find that it does indeed support a specific PCL or PostScript, then try the applicable generic driver.

In almost every case, this will resolve your problem and get even the most recalcitrant printer to work with Ubuntu. On rare occasions, nothing will work; and this is because the manufacturer refuses to supply any type of GNU/Linux driver for their printer line.


## Using two printers

If you have more than one printer connected to your Ubuntu system at the same time, you may run into an issue. The first printer may cause the second to be identified on the wrong connection (port). The reason has to do with Ubuntu deciding that both devices exist on the same port. Notice the example in figure 6 with the red circle around the incorrect port setting.


=IMAGE=ubuntuprinting6.jpg=Figure 6: Two printers=

This results in one of the two printers failing to install properly. To resolve the issue you need to highlight the second printer, then choose the _Use Another Printer_ option (circled green) and force the port setting manually.

In my example situation, the HP 1100 (residing on the Port #1) caused the second printer, HP 540C, which requires a USB port, not to be recognized. I highlighted the second printer and forced the proper port setting to read: USB Printer #1 (HP Deskjet 845C)


## Unidentified printer

If during the initial configuration your printer isn’t recognized as attached, you will need to force configure the connection manually.


=IMAGE=ubuntuprinting7.jpg=Figure 7: Configure printer port=

Click on the _Printer Port_ option (circled green in figure 7) and specify the type of printer connection you have. In most cases a printer that is connected to your system via a USB cable will use USB #1. Sometimes your USB printer may show up on other USB ports. This will only happen if you already have various USB devices connected to your Ubuntu system.

If your printer is instead connected directly through a Parallel cable, it will use Parallel Port #1. If you have a Canon printer, choose the Parallel Port #1 specifically labeled with (Canon). Likewise, if you are using an Epson printer, try first to connect with Parallel Port #1 (Epson).


## Improve printouts

If you desire to print photos or high resolution graphics, you need to make changes in your configuration tool to allow for special options.

From your Ubuntu printing tool, highlight the printer icon and press the right mouse button.

Now choose the _Properties_ option.

Click on the _Paper_ tab to specify paper size for your photographs.

Even more important to good print quality, you need to make adjustments under the advanced settings. Click on the _Advanced_ tab to change the resolution and print quality as well as the print mode, which adjusts color settings.


=IMAGE=ubuntuprinting8.jpg=Figure 8: Advanced settings=

Once you finish making adjustments to your printer settings, press the _Close_ button and try printing from your favorite application. You should now notice a positive difference in image quality and colors.


# Conclusion

You are now ready to print with any of the many applications included with Ubuntu. More importantly, you now have every detail necessary to enhance your printouts or add new printers. You also have some key tips for troubleshooting hardware compatibility issues, should they ever arise.

The best part is that you can now ensure Ubuntu becomes a regular part of your daily computer work.

