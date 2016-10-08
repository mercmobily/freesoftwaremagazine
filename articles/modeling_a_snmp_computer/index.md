---
nid: '2929'
title: 'Modeling an SNMP computer in Zenoss'
authors: 'Terry Hancock'
published: '2008-07-15 4:55:17'
license: verbatim_only
listed: 'true'
book: network_monitoring_with_zenoss
book_weight: '-6'
layout: book.html

---
Now that I have some of my LAN computers running SNMP, I can set Zenoss up to monitor them by "modelling" them. To do this, I start by going to the "Add Device" option on the left-hand menu (this menu stays constant in Zenoss—you can see it on the side of the dashboard display in Figure 4, for example). The "Add Device" option is way down the list, under "Management". Clicking on it leads to the "Add Device" form (Figure 6). Of course, Zenoss calls your computers "devices" (and "system" means something else entirely).

=IMAGE=zenoss_add_device_form.jpg=Figure 6: The "Add Device" form is used to add a monitored computer=

Fill in the computer's hostname (or URL) as the "device name". This is essential and must be a correct hostname recognized by the monitoring computer's networking configuration. If the hostname isn't found, the form will fail, and no device will be added.

The "device class" may seem a little scary, but it's just a way of telling Zenoss (which can monitor a very large variety of devices via SNMP) what sort of thing the "device" is—in all probability, for any GNU/Linux computer you'll just pick "Server/Linux". The "discovery protocol" should already be defaulted to "`snmp`" (if not, change it). Moving down to "Attributes", I set the "Snmp Community" to "FSM_ZenOSS", matching the setup I specified in my SNMP configurations. Figure 7 shows this form filled out for one of my computers, "washuchan". The information under "Relations" is really just optional for this sort of job: in a larger network, these categories might make the machine easier to search for.

=IMAGE=zenoss_add_device_form_washuchan.jpg=Figure 7: The "Add Device" form, filled out=

Once you add the device, you should be able to see it in the "Device List" (also on the left menu, but near the top). Figure 8 shows what the device list looked like after adding my first computer.

=IMAGE=zenoss_dumbledore_on_device_list.jpg=Figure 8: Device list, showing one computer=

Clicking on a computer's name in the device list will go to that computer's "status" page, as seen in Figure 9 (the yellow warning dot, by the way is genuine—the `/art` partition is over my warning disk fill limit on this system. Somebody's been downloading too many music files).

=IMAGE=zenoss_dumbledore_status_01.jpg=Figure 9: Status page for "dumbledore"=

Now, of course, you'll need to repeat this process for each computer on your network.
