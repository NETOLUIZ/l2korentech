package net.sf.l2j.gameserver.model.actor.instance;

import java.util.HashSet;
import java.util.Set;

import net.sf.l2j.gameserver.model.actor.Player;
import net.sf.l2j.gameserver.model.actor.template.NpcTemplate;

/**
 * Custom shop NPC selling the full Dynasty weapon/armor set (ids 9400-9449, 9705-9719) for medals.<br>
 * Same pattern as {@link TopShop}, but items are granted unenchanted, at a flat cost.
 */
public class DynastyShop extends Folk
{
	private static final int MEDAL_EVENT = 6392;
	private static final int MEDAL_GLITTERING = 6393;
	private static final int ITEM_COST = 30000;

	private static final Set<Integer> DYNASTY_ITEMS = new HashSet<>();
	static
	{
		for (int id = 9400; id <= 9449; id++)
			DYNASTY_ITEMS.add(id);

		for (int id = 9705; id <= 9719; id++)
			DYNASTY_ITEMS.add(id);
	}

	public DynastyShop(int objectId, NpcTemplate template)
	{
		super(objectId, template);
	}

	@Override
	public String getHtmlPath(int npcId, int val)
	{
		final String filename = (val == 0) ? "" + npcId : npcId + "-" + val;
		return "data/html/dynastyshop/" + filename + ".htm";
	}

	@Override
	public void onBypassFeedback(Player player, String command)
	{
		if (command.startsWith("buy_dynasty"))
		{
			final int itemId = Integer.parseInt(command.substring(12).trim());

			if (!DYNASTY_ITEMS.contains(itemId))
				return;

			if (!player.destroyItemByItemId("DynastyShop", MEDAL_EVENT, ITEM_COST, this, true))
				return;

			if (!player.destroyItemByItemId("DynastyShop", MEDAL_GLITTERING, ITEM_COST, this, true))
			{
				// Refund the Event Medal already taken, since the purchase can't complete without both.
				player.addItem("DynastyShop", MEDAL_EVENT, ITEM_COST, this, false);
				return;
			}

			player.addItem("DynastyShop", itemId, 1, this, true);
		}
		else
			super.onBypassFeedback(player, command);
	}
}
