package net.sf.l2j.gameserver.model.holder;

/**
 * A container used for schemes buffer.
 */
public final class BuffSkillHolder extends IntIntHolder
{
	private final String _type;
	private final String _description;
	private final String _icon;

	public BuffSkillHolder(int id, int price, String type, String description, String icon)
	{
		super(id, price);

		_type = type;
		_description = description;
		_icon = icon;
	}

	public final String getType()
	{
		return _type;
	}

	public final String getDescription()
	{
		return _description;
	}

	public final String getIcon()
	{
		return _icon;
	}
}