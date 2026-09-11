package net.sf.l2j.gameserver.scripting.scripts.custom;

import net.sf.l2j.gameserver.model.actor.Creature;
import net.sf.l2j.gameserver.model.actor.Npc;
import net.sf.l2j.gameserver.model.actor.Player;
import net.sf.l2j.gameserver.scripting.Quest;
import net.sf.l2j.gameserver.scripting.scripts.ai.individual.Baium;

/**
 * Grants the same 3 Grade S full sets +18 as the real Baium when the
 * weekend Baium event spawn (npc 50011) is killed.
 */
public class WeekendBaiumRewards extends Quest
{
	private static final int NPC_ID = 50011;

	public WeekendBaiumRewards()
	{
		super(-1, "custom");

		addKillId(NPC_ID);
	}

	@Override
	public String onKill(Npc npc, Creature killer)
	{
		final Player player = killer.getActingPlayer();
		if (player != null)
			Baium.rewardFullSets(player, npc);

		return null;
	}
}
