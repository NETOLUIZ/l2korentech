    Statistics Engine by Imper1um

This Engine is an implementation into L2j that will allow users to track statistics. The following statistics are tracked using this code:

    * Monsters Killed
    * Damage Dealt
    * Damage Recieved
    * Times Died
    * Times Died Total
    * Distance Travelled
    * Time Played
    * Actual XP gain (tracks even after you hit 78 lvl)
    * All XP Loss (after deaths)
    * Total Karma Gain (does not go down)
    * Gold Ever Recieved (trades do not count!

Part of the engine is an implementation into the Say2.java Packet which will run through an engine called the 'Processor' the processor is a simplified approach to making scripts to process with the Say. This allows the Developer to easily make commands for the Say2 without modifying the Say2 code completely. Any kind of Script can be executed by using the simple rules from the Processor. The processor is required for implementation of the Statistics Engine.

Also, included is a leaderboard engine [just implemented] which users can use to view who is actually on the top list of the leaderboard.

Updates:

   1. [Statistic Engine Implementation]
   2. [Statistic Engine Implementation]
   3. [Processor Engine Implementation + ProcessorViewStats??]
   4. [Fix] Fixes statistics not tracking
   5. [Fix] Teleporter Exploit/Options not in Config
   6. [Leaderboard Engine Implementation]
   7. [Leaderboard Engine Implementation]

ALL SEVEN PATCHES MUST BE INSTALLED IN ORDER FOR THIS TO WORK! [NOTE: My server runs off of L2j Commit Version 69, with several patches and modifications. Your fuzz factor may need to be larger than normal due to the deviations I do with my server]

How to use:

Open Statistics Menu: {Targetting Nothing/Self} [In any chat] Type '.stats'
Open Statistics of Target: {Targetting another PC} [In any chat] Type '.stats'
Open Statistics of Mentioned Player: [In any chat] Type '.stats {playerName}'
Open Leaderboard Menu: [In any chat] Type '.leaderboard' 