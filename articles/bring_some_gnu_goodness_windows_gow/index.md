---
nid: '3728'
title: 'Bring Some GNU Goodness to Windows with Gow'
authors: 'Dmitri Popov'
published: '2012-03-07 7:54:01'
tags: 'gnu,windows,cli,command-line'
license: verbatim_only
section: end_users
main_image: main.png
listed: 'true'

---
Stuck on Windows? No problem, you can still have some of the best GNU utilities courtesy of [Gow](https://github.com/bmatzelle/gow/) (which stands for GNU on Windows). BNQ3WVFXSY7Y Gow is a lightweight alternative to the popular [Cygwin](http://www.cygwin.com/) collection of GNU utilities, and as such, it offers only the most essential tools.  But despite Gow's tiny size (about 10MB), it features many of GNU's greatest hits, including *bash*, *curl*, *gawk*, *grep*, *putty*, *rsync*, *sed*, *sftp*, and *zip* (for a full list of all available tools, see the [Executables List](https://github.com/bmatzelle/gow/wiki/executables_list) page ).

The  package also includes a simple *gow* tool which sports only three options: *--help*, *--version*, and *--list*. The latter displays a list of all tools bundled with Gow, which can come in handy when you need to quickly check whether a specific binary is included or not. Gow is supplied as a single executable, so installing it on your Windows box is a matter of a few mouse clicks. Gow's installer conveniently adds all binaries to the Windows PATH, so you can easily access them from the command line.  According the the project's documentation, Gow is compiled on 32-bit systems, but it runs happily on the 64-bit platform as well.