package net.sf.l2j.gameserver.model.actor.instance;

import net.sf.l2j.gameserver.idfactory.IdFactory;
import net.sf.l2j.gameserver.model.actor.Player;
import net.sf.l2j.gameserver.model.actor.template.NpcTemplate;
import net.sf.l2j.gameserver.model.item.instance.ItemInstance;

/**
 * Custom shop NPC selling a curated Grade S weapon/armor/jewelry selection, pre-enchanted, for medals.<br>
 * The regular Buylist/Multisell systems can't hand out items at a fixed enchant level, so this NPC grants items directly.
 */
public class TopShop extends Folk
{
	private static final int MEDAL_EVENT = 6392;
	private static final int MEDAL_GLITTERING = 6393;
	private static final int MEDAL_COST = 30000;
	private static final int ENCHANT_LEVEL = 18;

	public TopShop(int objectId, NpcTemplate template)
	{
		super(objectId, template);
	}

	@Override
	public String getHtmlPath(int npcId, int val)
	{
		final String filename = (val == 0) ? "" + npcId : npcId + "-" + val;
		return "data/html/topshop/" + filename + ".htm";
	}

	@Override
	public void onBypassFeedback(Player player, String command)
	{
		if (command.startsWith("buy_enchanted"))
		{
			final int itemId = Integer.parseInt(command.substring(14).trim());

			if (!player.destroyItemByItemId("TopShop", MEDAL_EVENT, MEDAL_COST, this, true))
				return;

			if (!player.destroyItemByItemId("TopShop", MEDAL_GLITTERING, MEDAL_COST, this, true))
			{
				// Refund the Event Medal already taken, since the purchase can't complete without both.
				player.addItem("TopShop", MEDAL_EVENT, MEDAL_COST, this, false);
				return;
			}

			final ItemInstance item = new ItemInstance(IdFactory.getInstance().getNextId(), itemId);
			item.setCount(1);
			item.setEnchantLevel(ENCHANT_LEVEL);
			player.addItem("TopShop", item, this, true);
		}
		else
			super.onBypassFeedback(player, command);
	}
}
