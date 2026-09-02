 ============================================
 * This is a short guide for a L2jnet Server *
 ============================================

=============
L2jnet Server
=============
Date: 22/02/2007 

INDEX:
I.     OVERVIEW
II.    REQUIREMENTS
III.   FIRST STARTUP
IV.    ADMIN/GM's GUIDE
V.     TROUBLESHOOTING
VI.    LEGAL
VII.   CONTACT
VIII.  CONTRIBUTING
IX.    BUG REPORTING

============
I. OVERVIEW
============

L2jnet is an Alternative Lineage 2 Game Server written in pure Java for
best compatibility. L2jnet gives you the possibility to legally host a game
server for this popular Korean MMO created by NCSoft. It is still
unfinished and many features are missing, but L2jnet Dev team is working
hard on implementing them. L2jnet Server is distributed under the terms
of GNU/GPL in a hope that open source model is the best for
developing quality software giving everyone a possibility to
participate on development by submitting the code.


=================
II. REQUIREMENTS
=================

OS: 
Any OS having Java JDK 1.5 installed and properly configured!

Hardware: 
Decent CPU & RAM

Software:
Java JDK 1.5
MySql
Datapack

===================
III. FIRST STARTUP
===================
Before you can start up the server it is extremely important that you  
configure the server. All config files are in : /gameserver/config/  
You will have the possibility to change xp/sp/drop rates relative  

You should also configure your IP address in server.properties. 

Server uses ports 2106 (LoginServer) and 7777 (GameServer) by
default. If your server runs behind NAT or firewall you will need to
open and/or forward these ports. 


=====================
IV. ADMIN/GM's GUIDE
=====================

To make someone an admin you need to edit, in the 'Emu_DB', the desired character in the 
characters table, while server is SHUT DOWN! Change the field, accesslevel from 0 to 100 or more. 
You may start server after that and the person will have admin privileges. 
Note that you must create the account and character before editing. 

Possible access levels:
-100 = banned
0 = normal account/character
51 or more = exempt from maximum connections limit (accounts table only)
100 or more = admin

More info can be found on the forum.
 
Admin commands implemented:

//admin = main GM interface
//gmchat = will send a message to all online GMs
//invul = makes your character untouchable


====================
V. TROUBLESHOOTING
====================

PROBLEM
- Client outputs bunch of messages about missing templates.
SOLUTION
- Check that the datapack has been properly installed.

PROBLEM
- Message similar to "java is not recognized as internal command",
"java not found" or "unknown command: java" appears.
SOLUTION
- Install java, or, if java is already installed just add your java
binary directory to system PATH setting. If you don't know how to do
that, than DO NOT bother running your own server please.

PROBLEM
- I can log in but ping is 9999s and I can't get past Server Select.
SOLUTION
- Set up your IP's properly, forward/open good ports if accessing from
outside. (or find server with admin that knows how to do it)

PROBLEM
- Skills/quests/whatever don't work.
SOLUTION
- Patience brings it's fruits :p

PROBLEM
- I found a bug.
SOLUTION
- Please refer to BUG REPORTING section of this readme.



===========
VI. LEGAL
===========

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2, or (at your option)
any later version.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307,
USA.

Full GNU/GPL License is included in LICENSE.TXT file.

Whereas L2jnet is distributed under the terms of GNU/GPL, we will be
happy if you:
a) Preserve logon notice. This give us, L2jnet Developers, appropriate
credit for our hard work done during our free time without any
revenues.
 
b) Do not distribute any extended data files with the server files in
the same archive. NO world content should be incorporated in L2jnet
distribution.



=============
VII. CONTACT
=============

Web: http://emu-project.net

Please note that L2jnet Devs can't help players with connecting issues or
anything related to playing on private servers. If you can't connect,
you should contact your server GM's. We can solve only L2jnet server
software~ related issues. We don't have any backdoors or anything
that would enable us GM accounts on every server using L2jnet, so there's
no point in coming to our forum if you need items/adena/whatever
ingame.


==================
VIII. CONTRIBUTING
==================

Anyone who want to contribute to project is encouraged to do so. Java
programming skills are not always required as L2jnet needs much more than
java code.

If you created anything that may be helpful use User Contributions
section on our forums. If you contributed good stuff that will be
accepted, you might be invited to join L2jnet Dev Team.

People willing to hang on chat and respond to user questions are also
ALWAYS welcome ;)


====================
VIIII. BUG REPORTING
====================

Bugs can be reported on our forum.
- http://emu-project.net/

Players should ALWAYS consult bugs with their GM's before reporting it
on our wiki site. Some bugs may be caused by bad datapack, server
installation or modification server owner has made. We can't help you
in that case.

Please use the datapacks bugtracker for reporting datapack bugs.
Please do NOT report bugs related to unofficial add-ons to L2jnet.
L2jnet bugtracker is NOT a place to fix that. Contact the person who made
modification instead.

===========================
Have fun playing L2jnet ;)
Development Team