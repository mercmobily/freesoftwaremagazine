---
nid: '2606'
title: 'Interview with Dave Mohyla, of DTIDATA'
authors: 'Tony Mobily'
published: '2007-12-05 5:17:41'
tags: 'disaster-recovery,recovery'
license: verbatim_only
section: interviews
listed: 'true'

---
Dave Mohyla is the president and founder of [dtidata.com](http://www.dtidata.com), a hard drive recovery facility based in Tampa, Florida.

**TM:** Where are you based? What does your company do?  
DTI Data recovery is based in South Pasadena, Florida which is a suburb of Tampa. We have been here for over 10 years. We operate a bio-metrically secured class 100 clean room where we perform [hard drive recovery](http://www.dtidata.com) on all types of hard disks, from laptop hard drives to multi drive RAID systems.

<!--break-->

**TM:** In out private conversation, you talked about your "clean rooms". Can you tell us what they are?

A clean room is very important in [hard drive repair](http://www.dtidata.com/hard_drive_recovery.htm) as it protects the sensitive internal parts of a hard disk from dust as well as electronic or static discharges. A clean room by definition is an environment that has a regulated level of contaminants that is specified by the number of particles per cubic meter at specified particle size. In addition, to a clean room environment, static dissipating floors and ground straps are used to control any static electricity discharge. Clean rooms are very expensive to operate due to the high cost of the air filtration systems, but are absolutely essential in successful recovery of data from damaged media.

**TM:** You specialize on Linux data recovery as well. Is that market growing?

Once the physical repair of the hard drive is complete, we then move the data at the most basic level (ones and zeroes) off to stable media and then use advanced tools to rebuild the file system. DTIDATA has the ability to recover data from any file system or operating platform. While the majority of drives we see run Windows, more mainstream companies are running Linux operating systems, so we have seen an increase of EXT file systems. With companies like Dell who are offering new and powerful computers with the Ubuntu Linux distribution, data recovery companies are going to have to become open source experts pretty quick. DTIDATA has always been able to repair the various flavors of Linux as our developers are low-level C, C++ programmers and are well versed in all file system on-disk structures. Major server and storage devices now are using proprietary operating systems which are mostly based on the Linux kernel. SNAP OS or Guardian is a good example of a custom version of free BSD. This type of server can pose quite a challenge to a data recovery company that doesn't have in-house programmers like DTI Data Recovery. This is especially true when it comes to [RAID data recovery](http://www.dtidata.com/) of open source servers.

=IMAGE=platters-water-damaged.jpg=Figure 1: A water damaged hard drive. The platters show corrosion=

**TM:** What do you do once you've received a hard drive?

When a hard drive arrives for data recovery, one the first things we do is asses whether the problem is physical (needing repair and recovery) or logical (has suffered a failure within the file system). If the drive has been diagnosed as needing physical repair it goes to the clean room where it further assessed then repaired.

In addition to traditional hard drive recovery procedures DTIDATA has the ability to repair the System Area of the hard drive. The system area of the hard drive is the actual on-disk firmware. The firmware on the controller or printed circuit board is little more than a road map to and for the System Area.  The system area is a reserved area of the drive, dedicated to the hard drives unique operation such as defect logs, sector reallocation, S.M.A.R.T logs etc.  Hard drive manufacturers do not disclose any vendor specific information regarding their unique protocols. Furthermore, the System Area is not accessible by generic ATA commands. This capability is limited to data recovery companies that have a dedicated staff of engineers committed to research and development.  If the System Area is corrupt the read/write heads of the drive may go into a never ending seek pattern which makes a clicking sound. Conversely, the heads may not click at all and seem to not quite complete the initialization process.

Diagnosing hard drive faults is the key to a successful recovery. A major problem in the data recovery industry is misdiagnosed recovery attempts.  An assumption that there is not an audible clicking sound does not mean the read/write heads have not crashed. A drive that does not spin does not always indicate the printed circuit board is the problem; internal bearings may have seized and caused the spindle motor to be rendered completely inoperable. There are compounding situations to many of the recoveries we perform.  Without years of experience and a firm understanding of how a hard drive works attempting a recovery on a physically malfunctioning hard drive is NOT recommended. A misguided recovery attempt can render otherwise recoverable data permanently unrecoverable by causing damage or further damage to the platters that magnetically store the encoded pulses that provide a pattern and when combined accumulate the data .  I am rambling on but we are passionate about what we do here!

**TM:** What was the most challenging hard drive you've ever received? Did youmanage to recover data?

During and after Hurricane Katrina, we received a lot of water damaged hard drives. These are among the toughest hard drive recovery cases. Many of the hard drives and RAID arrays had been in polluted flood water for several weeks prior to being shipped to us for recovery.

DTI has created a proprietary means of recovering water damaged drives down to a unique solution that removes corrosion without further damaging the platters. In fact we received a Katrina hard drive a month or so ago that had been under water for several months. We were able to get the data back! After months in the water and several months out of the water allowing the platters to decay we were still able to recover the user’s data, our staff really amazed me with that recovery.