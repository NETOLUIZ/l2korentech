=======================================
L2jnetprojectServer Pack - INSTALL GUIDE 
=======================================

===============
I. Requirements
===============


Before Downloading server u will need to  install those softwares:

- java update 7 avaible at www.sun.com
- atleast 2GB free space.
- atleast 512mb of Ram. 

================
I- NEW INSTALL : 
================

========
STEP 1.1 - Install JAVA update 7 and extract this zip and unpack to c:\Server
========

========
STEP 1.2 - execute start.bat (to start apache server)
=======

========
STEP 1.3 - open c:\server\gameserver\config\gameserver.properties and edit like this :
========

# ================================================================
# General server setting !!! REQUIRED to configure to everyone !!!
# ================================================================

# Bind ip of the gameserver, use * to bind on all available IPs
GameserverHostname=*
GameserverPort=7777

# This is transmitted to the clients connecting from an external network, so it has to be a public IP or resolvable hostname
# If this ip is resolvable by Login just leave *
ExternalHostname=(your internet IP)

# This is transmitted to the client from the same network, so it has to be a local IP or resolvable hostname
# If this ip is resolvable by Login just leave *
InternalHostname=(lan ip)


========
STEP 1.4 - now open c:\server\login\config\loginserver.properties and edit like this:
========


# ================================================================
# General server setting !!! REQUIRED to configure to everyone !!!
# ================================================================

# This is transmitted to the clients connecting from an external network, so it has to be a public IP or resolvable hostname
ExternalHostname=(your internet ip)

# This is transmitted to the client from the same network, so it has to be a local IP or resolvable hostname
InternalHostname=(your lan IP)

# Database info
Driver=com.mysql.jdbc.Driver
#Driver=org.hsqldb.jdbcDriver
#Driver=com.microsoft.sqlserver.jdbc.SQLServerDriver
URL=jdbc:mysql://localhost/l2jdb
#URL=jdbc:hsqldb:hsql://localhost/l2jdb
#URL=jdbc:sqlserver://localhost/database=l2jdb/user=sa/password=
Login=root
Password=(your user and pass to database)root is default.
MaximumDbConnections=10


NOTE : SET accept alternative ID = TRUE 

=========
STEP 1.5 - now go c:\server\login\registergameserver.bat
=========

when cmd open choose "0" ,and hit enter .. program will generate a file named "hexid(server0)" ,

rename this file to "hexid".txt

=========
STEP 1.6  - now go on c:\server\gameserver\config and place this file u just created(the hexid.. )
=========

==========
STEP 1.7  - go to c:\server\tools\database_installer.bat 
==========
Right click on it and then Edit. You will see:
---------------------
REM LOGINSERVER
set lsuser=root
set lspass=root  <--- Write here your password.
set lsdb=l2jdb
set lshost=localhost

REM GAMESERVER
set gsuser=root
set gspass=root  <--- Write here you password.
set gsdb=l2jdb
set gshost=localhost
---------------------
after changing the password save and close it. Then run it.

#########
# NOTE: # - follow all program instructions chosing F ( for a full install in case of new server.)Or U (update if you have older server)
#########


========
STEP 1.8  - Be sure that 7777, 2106 and 9014 ports are opend if no open them. 
========


========
STEP 1.9  - Run C:\server\gameserver\startgameserver.bat and c:\server\login\startloginserver.bat 
========

enjoy your new server! :)


=============
II. UPGRADE
=============


1- execute stop.bat

2- overwrite files in c:\server

3- open c:\server\gameserver\donfig\server.properties and edit like this :


# ================================================================
# General server setting !!! REQUIRED to configure to everyone !!!
# ================================================================

# Bind ip of the gameserver, use * to bind on all available IPs
GameserverHostname=*
GameserverPort=7777

# This is transmitted to the clients connecting from an external network, so it has to be a public IP or resolvable hostname
# If this ip is resolvable by Login just leave *
ExternalHostname=(your internet IP)

# This is transmitted to the client from the same network, so it has to be a local IP or resolvable hostname
# If this ip is resolvable by Login just leave *
InternalHostname=(lan ip)


4- now open c:\server\login\config\loginserver.properties and edit like this:


# ================================================================
# General server setting !!! REQUIRED to configure to everyone !!!
# ================================================================

# This is transmitted to the clients connecting from an external network, so it has to be a public IP or resolvable hostname
ExternalHostname=(your internet ip)

# This is transmitted to the client from the same network, so it has to be a local IP or resolvable hostname
InternalHostname=(your lan IP)


5- now go c:\server\login\registergameserver.bat


when cmd open choose "0" ,and hit enter .. program will generate a file named "hexid(server0)" ,
rename this file to "hexid".txt


6- now go on c:\server\gameserver\config and place this file u just created(the hexid.. )


7- go to c:\server\tools\database_installer.bat and execute .


***IMPORTANT** !!!  follow all program instructions all chossing "u" for upgrade databse and keep old charatcthers data.

in case of upgrade run SQL's inside of Update Folder. 

====================
III. CONTRIBUTING
====================

Anyone who want to contribute to project is encouraged to do so. Java
programming skills are not always required as always needs much more than
java code.

If you created anything that may be helpful use User Contributions
section on our forums. If you contributed good stuff that will be
accepted, you might be invited to join L2jnetproject Dev Team.

People willing to hang on forum and respond to user questions are also
ALWAYS welcome ;)



====================
IV. ADMIN/GM's GUIDE
====================

To make someone an admin you need to edit, in the l2jdb database, the desired character in the 
characters table, while server is SHUT DOWN! Change the field, accesslevel from 0 to 100 or more. 
You may start server after that and the person will have admin privileges. 
Note that you must create the account and character before editing. 

Possible access levels:
-100 = banned
0 = normal account/character
51 or more = exempt from maximum connections limit (accounts table only)
100 or more = admin

You can find more informations at : http://L2jnetproject.org/members/
 
Admin commands implemented:

//admin = main GM interface


==========
V. CONTACT
==========

Web: http://www.L2jnet.net/

Have fun playing L2jnet :)
Dev Team.