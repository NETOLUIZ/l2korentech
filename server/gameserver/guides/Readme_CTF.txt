Srv. Rev.: 73

///////////////////////////////////////////////////////////////////////////

Description:
This engine is for "Capture the Flag". You can create unlimited
amount of teams. All teams vs. all teams at the same time. The team
with the most score win and each player of it get the setted reward.
///////////////////////////////////////////////////////////////////////////

Features:
Even teams method configurable in extensions.properties


Options ingame part1(don't use this options if you already used an options of part2! after finish or abort you should/can use it again):
match name
match join location(announced on //tvt_join)
match description
npc id (choose custom npc because server unspawn npc by last spawn, have to be a L2Npc)
npc position (set the position of the npc to your current position)
reward (reward id)
reward amount (how much pieces of the seted reward should each player of the winning team get)
team add (adds a team to the match)
team color (color in first input box (for example: 0000FF), team name in second input box, set the color of the given team name)
team flag id (for each team a custom L2Npc!!!)
team pos (set the base position of the given team to your current position, flag is here to)
team remove (removes a team from the match)

Options ingame part2:
join (starts the joining period, event npc spawns)
teleport (teleport all participated players to their team spot and sit them down)
start (starts the event, let the players stand up)

Options ingame part3:
finish (finishes the event, reward winning team)
dump (output of all informations in server console, please use this before you click "join", "teleport", "start" and "finish" to check if all is going ok)


Player disconnect handling:
If shuffle mode is enabled and participated player disconnects in joininng period he have to participate again!


Using PvP skills in non PvP areas.
///////////////////////////////////////////////////////////////////////////

Rules:
A team can only score if there flag isn't taken!
When a player die there have taken a flag, the flag is immediatelly restored.
When a player has taken a flag and go to their own flag, the points of the team is increased and flag respawn.
///////////////////////////////////////////////////////////////////////////