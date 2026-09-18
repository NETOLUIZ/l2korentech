package net.sf.l2j.gameserver.scripting.scripts.custom;

import net.sf.l2j.gameserver.model.actor.Player;
import net.sf.l2j.gameserver.model.World;
import net.sf.l2j.gameserver.network.serverpackets.ExShowScreenMessage;
import net.sf.l2j.gameserver.scripting.ScheduledQuest;

/**
 * Spawns a daily Baium (npc 50011) in Gludin Village, in front of the church.
 * Registered in scripts.xml, from 20:00 to 01:00.
 */
public class WeekendBaiumSpawner extends ScheduledQuest
{
	private static final int NPC_ID = 50011;
	private static final int X = -80600;
	private static final int Y = 149850;
	private static final int Z = -3044;
	private static final long DESPAWN_DELAY = 18000000; // 5 hours

	public WeekendBaiumSpawner()
	{
		super(-1, "custom");
	}

	@Override
	protected void onStart()
	{
		addSpawn(NPC_ID, X, Y, Z, 0, false, DESPAWN_DELAY, false);

		final String message = "Baium apareceu em Gludin, em frente a igreja!";
		for (Player player : World.getInstance().getPlayers())
			player.sendPacket(new ExShowScreenMessage(message, 10000));
	}

	@Override
	protected void onEnd()
	{
	}
}
