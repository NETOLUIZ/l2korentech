                   =========================================
                        .:  L2jnetproject Server Pack :.
                  ==========================================


   -------------------------------------
  .: What's bundle in this server pack :.
  ---------------------------------------
- Tiny WAMP pack based on Uniform server (http://miniserver.sourceforge.net)
- Update software to Apache 2.0.55, PHP 5.1.1, MySQL 5.0.16, PhpMyAdmin 2.7.0,
  Zend Optimizer 2.6.0 and remove unnecessary parts.
- Frontpage use L2jnet Statistik Script 1.00 + ACM build 9/6 + Seven Signs/Castle
  Control Script.
- Forum based on PunBB 1.2.10 (http://www.punbb.org)
- Translations pack for Vietnamese, Russian, Spanish and German language.


   -------------------------
  .: How to install server :.
  ---------------------------

+ Prepare software:
- Download Sun J2SE Runtime Environment 5.0 from this link and install it:
  http://java.sun.com/j2se/1.5.0/download.jsp
- Download this server pack and unpack to 'C:\server'
- NOTICE: Server have been pre-configured for that path, don't unpack to
  D:\Server or other path if you don't know how to change config path

+ Setup server:
- If your connection behind router/firewall, you must open both TCP and UDP
  ports: 80,2106,7777 for external players connect to your server.
- Now open C:\server\l2j\login\config\loginserver.properties and edit:
  ExternalHostname=(blank)   => Your Internet/WAN IP (www.whatismyip.com)
                                or leave blank if your server is LAN server
  InternalHostname=127.0.0.1 => Your LAN IP
                                or don't change it if you play offline
- Start Apache/MySQL server by run C:\server\start.bat
- Use phpmyadmin (http://localhost/a/) and create new 
  database 'l2jdb' or create folder name l2jdb in this path:
  C:\server\diskw\usr\local\mysql\data
- Insert database from datapack to MySQL server
  (this is optional step if you run server for first time)
  by run C:\server\l2j\tools\database_installer.bat,
  press (f) to choose Full Install.

+ Start server:
- Start Login server by run C:\server\l2j\startLoginServer.bat
- Start Game server by run C:\server\l2j\startGameServer.bat
*** Alternative method use Bla:
- Run C:\server\bla\bla.exe
- In tray icons, choose Loginserver/(re)start server, then continue choose
  Gameserver/(re)start server
- More info & config bla you can reference bla.ini & readme.txt in bla folder

+ Configure client:
- Download C3 client:
  ftp://l2clientdownload.lineage2.com/Chronicle03/L2_C3_Installer.zip
- Update to lastest revision protocol by run lineageii.exe (in root folder)
  and click full check files.
- Go to "C:\windows\system32\drivers\etc\" and edit the "hosts" file,
  add this line in the end of file:
  127.0.0.1 (or your server IP) L2authd.lineage2.com


   -------------------------
  .: How to upgrade server :.
  ---------------------------

- Stop MySQL by run c:\server\stop.bat
- Extract & overwrite new files to c:\server
- Run again c:\server\start.bat
- Run c:\server\l2j\tools\database_installer.bat and choose (u) for Upgrade.
- Optional: Run c:\server\l2j\tools\update.bat and ingorne all errors code 1060
- Start Login server by run C:\server\l2j\startLoginServer.bat
- Start Game server by run C:\server\l2j\startGameServer.bat


   -----------------------------
  .: Frequently Asked Questions :.
  --------------------------------

Q001 - How to add a item to a vendor/shop ?
A - Guide from http://l2j.jot.com/How+to+add+an+item+to+a+vendor.
    Using navicat.

    Open merchant_buylists table

    In the first field you put the items ID number.
    In the second field you put the price you want the vendor to sell it for.
    In the third field you put the shop ID number. This is found by looking in
    the merchant_shopids.
    In the fourth field you put the position of the item. If the shop has 54
    items already and you want it at the end of the list, you give it item 55.
    This field is unique to just that vendors list. So you can not have 2 of the
    same item positions for one list.

    Ok, to put it all togather.

    I want to sell dual SLS at Trader Jackson fighter shop in TI for 150a and
    I want it listed last.

    I need to look up Trader Jackson shop Id number in the merchant_shopids
    table. Her npc ID is 7002, so I look that up and she has 2 shop IDs. 11
    and 12
    Which one is which? Look in her html file. (7002.htm in
    the data/html/merchants folder)
    11 is for fighter and 12 is for mystic.
    Dual SLS are item ID 2626 (find in weapons table)
    Trader Jackson has 54 items currently in the merchant_buylist.
    So my data to input into the merchant_buylists is
    2626 150 11 55

    Click the check mark at the bottom and exit navicat.
    Restart server to reload the list.


Q002 - Hi man, i have a problem, after the new server pack people lose their
       equipment even thu they are not pk when they die ?
A - In official server, players will drop items when they die even don't get any
    karma. You can set that option in server.properties:

    # Player Drop Rate control, values are the percent values
    PlayerRateDrop = 20
    PlayerRateDropItem = 70
    PlayerRateDropEquip = 25
    PlayerRateDropEquipWeapon = 5

    Explain: 20% chance drop items when player die. When they drop items, 70%
    will drop items in Inventory (not equip), 25% items is equip (armor/ring)
    and 5% is weapon.


Q003 - Why the mobs is so strong, when shift+click them, I see they have HP
       stats is HP *2 / *3... ???
A - Default datapack already edited for Dungeon mobs, special mobs... which have
    HP x2/ x3 like official, If you don't like that setting, just open
    altsettings.properties and change:
    EnableRateHp = False


Q004 - How to make a subclass ?
A - When your player get to level 75, they can be choose subclass by go to
    Grand Master in Aden and switch to subclass (in 1208, NPC ID
    are 7847/7849/7854/7857/7862/7865), because atm l2j don't have quest for
    subclass, you must set AltSubClassWithoutQuests = True in
    altsettings.properties. There are some restrictions between switching
    subclass, see more here:
    http://www.lineage2.com/Knowledge/subclasses_1.html


Q005 - How to enable JBForth engine ?
A - You must set EnableJBForth=True in custom.properties
    NOTICE:
    - When enable JBForth engine, you must turn on Bypass encryption engine
    for avoid all exploit by help.htm with forth command.
    - The integrated JBForth engine have been removed some parts because if it 
    have equivalent functions in java, I will use java command for give
    better performance/stable than jbf command.
    - Some null pointer errors will appear if enable this engine.


Q006 - How to enable Auto learn skills ?
A - You must set AutoLearnSkills=True in custom.properties. When player level
    up to certain level, they will automatic learn all skills at that level.


Q007 - How to increase Buff time ?
A - You must edit AltBuffTime = 1 in custom.properties, change 1 to multiple
    number, i.e default dance/sing is 2mins, if you want it 20mins, set it to
    10 (beware normal buff have 20mins will increase to 200mins too !!!).


Q008 - Why everyone have admin acess ?
A - You must set EverybodyHasAdminRights=False in server.properties


Q009 - How to add a skill to a class as a starter skill ? Like I want to give
       Weight Limit level 2 to all Human Fighter
A - Open Navicat or PhpMyAdmin and run this code

    INSERT INTO skill_trees VALUES (0,150,2,'Weight Limit',0,1);

    Explain:
    0 - Class ID (Human Fighter have class ID = 0)
    150 - Skill ID (Weight Limit have skill ID = 150)
    2 - level of skill
    'Weight Limit' - name of skill
    0 - number of SP need to learn skill
    1 - level of player need to learn skill


Q010 - I don't like your GMShop, how to delete it ?
A - Just select that NPC, and Shift+Click then choose Delete this NPC.


Q011 - Why I can play in local server but other player (in
       LAN/WAN/Internet) can't connect to my server ?
A - Because you not open port 2106/7777 (both TCP/UDP protocol) in your server
    or your modem/firewall/router for external connections.


Q012 - How to add a second game server to this login server ?
A - Follow exactly this steps:

    Copy folder C:\server to second computer which host second game server
    In first server computer, run C:\server\l2j\login\RegisterGameServer.bat
    Enter 1 and press Enter, program will create a file name hexid(server 1).txt
    (don't enter 0 because first game server already take that ID)
    Copy this file to folder C:\server\l2j\gameserver\config\ of second
    computer

    In Second server:
    Delete old hexid.txt and rename hexid(server 1).txt to hexid.txt
    Open server.properties set:

    ExternalHostname=(blank) -> set to *
    InternalHostname=127.0.0.1 -> set to *

    LoginPort=9014 -> set to 9015
    LoginHost=127.0.0.1 -> set to IP of Login server in LAN/WAN

    Now in first game server run startLoginServer.bat and startGameServer.bat
    In second game server only need to run startGameServer.bat (because two game
    server will use same Login server)


Q013 - Server so laggy, how to improve it ?
A - Open Task manager and set priority of all java.exe process to high or
    realtime (only set realtime if it's delicated server), bla tool also set
    default priority is realtime when lauch server by that tool.

    Btw after a long time running, if you see CPU use of java process is 100%,
    you must restart server.


Q014 - Why I can't use seed of fire/water/wind and skills use seed as charge ?
A - I've fixed seed skills like official server, this is info how those skills
    work:

    Seeds are supposed to work as such:
    Duration of each seed: 5 seconds (i've increased to 10 secs)
    Target of the seed: Any character (friend presumably) except self.
    Reuse time for seeds: 30 minutes

    Charge a person with seeds and if that person casts a spell (like Aura
    Symphony, Blizard, Elemental Storm, etc) the spells do massive damage.

    Different combinations of seeds are needed for each spell:
    Aura Symphony: Any 1 seed. Reuse time: 30 minutes
    Blizzard: 2 water seeds. Reuse time: 30 minutes
    Inferno: 2 fire seeds. Reuse time: 30 minutes
    Demon Wind: 2 wind seeds. Reuse time: 30 minutes
    Elemental xxxx: 2 seeds of different type... 3 spells belong in this family
    (different name for "xxxx") and each takes a different combination of seeds.
    Reuse time: 30 minutes


Q015 - How to change name in server list, example I want to change Bartz to
       MyServerName ?
A - For change that name, you need to edit client side.
    You must have this tool for change server name:
    - l2encdec (recommend use version 2.6 or later)
    http://dstuff.luftbrandzlung.org/l2asylum/
    - UltraEdit or any hex editor
    *** For alternative method need a tool name L2ClientDat_en (google it :))
   
    + Now first step is decode servername-e.dat in Lineage II\system folder by
    use command:
       l2encdec -g servername-e.dat (if you have orginal client files)
    or l2encdec -s servername-e.dat (if you have modded client files)
    After that you will have new file named dec-servername-e.dat
   
    + Now open it by UltraEdit, you will see a text "Bartz" there and before it
    is a hex code 06, it mean Bartz (5 characters) use 5 bytes + 1 byte for
    hex ID code = 06
   
    Now calculate your name, MyServerName have 12 characters will use 12 bytes +
    1 byte for hex ID code = 13 bytes (in decimal) = 0D (in hexadecimal)
   
    Then replace hex code 06 by 0D, replace "Bartz" by "MySer", then in the end
    of r letter, press Ctrl+D in UltraEdit and insert 7 bytes more (because
    MyServerName have 7 characters more than Bartz) and continue type
    "verName" for full name "MyServerName". Save your work.
   
    *** Alternative method use L2ClientDat:
    + Delete servername-e.dat and rename dec-servername-e.dat to
    servername-e.dat. Run L2ClientDat_en, check option servername-e.dat and
    press Decode, then you will have a new file named servername-e.txt
   
    Open servername-e.txt by Notepad and edit "Bartz" by "MyServerName" then
    save it. Run L2ClientDat_en again and check option servername-e.dat and
    press Encode.
   
    + Use l2encdec to encode back again with parameters:
       l2encdec -h413 dec-servername-e.dat
    or l2encdec -h413 servername-e.dat (for Alternative method)
   
    Then you will have new file name enc-dec-servername-e.dat (or
    enc-servername-e.dat), rename it again to servername-e.dat and overwrite
    with old file in system folder
   
    *** If you client never modded (that mean you have decoded in first step
    with -g parameter), you need copy l2encdec.exe and patcher.exe in
    l2encdec tool to Lineage II\system folder and run this command:
       patcher.exe -f
    *** If you don't you this step you will have error when loading l2.exe
   

Q016 - When I start game server, it said somethings like items db have been
       crashed and need to be repair, how can I do it ?
A - Copy this code & paste in web browser of server:
    http://localhost/a/sql.php?db=l2jdb&sql_query=REPAIR+TABLE+%60items%60


Q017 - How can I access http://localhost/a/ from another computer have IP
       192.168.1.1 ?
A - Default access only accept local computer, for give external connect to
    phpmyadmin (http://localhost/a/), you need to edit:

    C:\server\diskw\home\admin\www\.htaccess
    Below the line: Allow from 127.0.0.1
    Add: Allow from 192.168.1.1
   
    Then open http://localhost/a/, choose Privileges, choose Edit Privileges for
    "localhost", scroll down to section "Change Login Information / Copy User" ,
    in Host change to "Use text field:" and type 192.168.1.1 to the field, then
    press GO.
   
    Now you can access to server from computer have IP 192.168.1.1 by type in
    browser: http://ip_of_server/a/


Q018 - How to enable event Bashtal's Labor ?
A - To enable that event you need to enable JBForth engine (Q005), then ingame,
    type "//medals-start" to start event and "//medals-stop" to stop event
    More information about event you can see at this link:
    http://www.lineage2.com/archive/2005/08/bashtals_labor.html


Q019 - How to make an automatic task like restart server every xx hours ?
A - From Layane: L2jnet have a internal cron called Global Task, Open your DB and
    open global_task table and add a new entry with this params:

    task = restart
    type = TYPE_SHEDULED
    param1 = "milleseconds to restart" (for example 1h =1*60*60*1000= 3600000)

    Other option is add this line with a SQL Statement like this:

    INSERT INTO global_tasks ( id , task , type , last_activation , param1 ,
    param2 , param3 ) VALUES ('', 'restart', 'TYPE_SHEDULED', '0', '3600000',
    '', '');

    More information about Global Task:

    type:
    TYPE_NONE = Never execute this task (to disable a task)
    TYPE_STARTUP = Execute this task every startup
    TYPE_SHEDULED = Execute this task after "param1" milleseconds
    TYPE_FIXED_SHEDULED = Execute this task every "param2" milleseconds with a
                          initial delay of "param1" milleseconds
    TYPE_TIME = Execute this task on a concrete data defined on "param1"
    TYPE_SPECIAL = Internal purposes
    TYPE_GLOBAL_TASK = Execute this task each "param1" days on a defined hour
                       defined on "param2" (format: HH:MM:SS)

    task: We created 3 posible task for administrator:
    restart = restart the server, use "param3" to defined milleseconds before
              restart the server and players alert with a message of restart.
    shudown = like restart but shutdown the server
    jython  = execute the jython file defined on "param3" (cron jython files
              need to be located at data/jscript/cron directory)


Q020 - How to use Jail command ?
A - If you want to jail someone, target player and type:
    //jail <items_need_to_collect>

    Then player will lost all scroll of escape and teleport to Jail area in
    Bandit Stronghold (you can change location and monster need to kill in
    data\jbforth\service\jail\main.f)
   
    After player kill monster for get enough items, they will get free or you
    can use //unjail to free them.


Q021 - How to increase time of dances and songs ?
A - From jcalderwood:
    You can change the buff times in the XML files you need to find the ID's
    (264 to 277) and (304 to 311)
    Under l2j/gameserver/data/stats/skills
    You need to change :
    <effect name="Buff" time="120" count="1" val="0">
    Change buff time 120 (2 mins) to 2400 for 20 mins


Q022 - How to add/change RunSpeed and other stats to the Tattoo's ?
A - From DarXyde:
    You can add/change the RunSpeed and other stats in the XML files,
    you need to find the ID's (485 to 496) and (2410)
    Under l2j/gameserver/data/stats/armor/
    Note: Resolve tattoo is with another name [tattoo_o'_stout (id:487)]

    What you need to change:
    <mul val='1.45' order='0x20' stat='runSpd'/>
    Change val='1.45' to another value (ex: val='1.60' for add +60% to runSpd)

    In order to add another stat to your tattoo's follow this:
    After last line with <mul val='1.10' order='0x20' stat='xxx'/>
    add another one <mul val='1.10' order='0x20' stat='yyy'/>
    Where xxx is original stat and yyy is your added stat.

    Here is a list of avaible stats to add/change:
    maxHP, maxMP, regHP, regMP, pDef, mDef, pAtk, mAtk, pAtkSpd, mAtkSpd, 
    runSpd, reflectDmg, absorbDmg, criticalDmg, criticalChance, evasion, 
    accurity, bleedRes, rootRes, sleepRes, stunRes, wheightLimit, breath.


Q023 - I got "Error network write, player disconnected?", how to fix it ?
A - From HighTower:
    In windows XP, open My Computer, got My Network Places, choose View Network 
    Connections, Right Click on Local Area Connection and choose Properties
    Next to your Controller press Configure, choose the Advanced Tab

    In the window you will see a list of features associated with your device. 
    When you see a setting marked autonegotiate, change it to 100mbps Full 
    Duplex. Disable all the other Flow control crap as well.

    There are different setting for different cards so play with them but 
    remember what you changed incase you cannot connect.
 
 
Qxxx - Why boat/manor system/clan hall/(your features needed here)... not work ?
A - Because it's not implemented :)


   -----------
  .: Contact :.
  -------------

- http://L2jnetproject.org/members/
