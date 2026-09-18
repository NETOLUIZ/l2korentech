package net.sf.l2j.gameserver.scripting.scripts.custom;

import net.sf.l2j.gameserver.model.actor.Player;
import net.sf.l2j.gameserver.network.serverpackets.ExShowScreenMessage;
import net.sf.l2j.gameserver.scripting.Quest;

/**
 * Reminds every player logging in that Baium spawns in Gludin (in front of
 * the church) every day from 20:00 to 01:00.
 */
public class BaiumWeekendNotice extends Quest
{
	public BaiumWeekendNotice()
	{
		super(-1, "custom");

		setOnEnterWorld(true);
	}

	@Override
	public String onEnterWorld(Player player)
	{
		player.sendPacket(new ExShowScreenMessage("Baium aparece em Gludin (em frente a igreja) todo dia das 20:00 as 01:00!", 8000));
		return null;
	}
}
