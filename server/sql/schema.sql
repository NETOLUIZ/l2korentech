
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE="NO_AUTO_VALUE_ON_ZERO" */;
DROP TABLE IF EXISTS `account_data`;
CREATE TABLE `account_data` (
  `account_name` varchar(45) NOT NULL default '',
  `var` varchar(20) NOT NULL default '',
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`account_name`,`var`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `login` varchar(45) NOT NULL default '',
  `password` varchar(45) default NULL,
  `lastactive` decimal(20,0) default NULL,
  `access_level` int(11) NOT NULL default '0',
  `lastIP` varchar(20) default NULL,
  PRIMARY KEY  (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `armor`;
CREATE TABLE `armor` (
  `item_id` int(11) NOT NULL default '0',
  `item_display_id` int(11) NOT NULL default '0',
  `name` varchar(70) default NULL,
  `bodypart` varchar(15) NOT NULL default '',
  `crystallizable` varchar(5) NOT NULL default '',
  `armor_type` varchar(5) NOT NULL default '',
  `weight` int(5) NOT NULL default '0',
  `material` varchar(15) NOT NULL default '',
  `crystal_type` varchar(4) NOT NULL default '',
  `avoid_modify` int(1) NOT NULL default '0',
  `duration` int(3) NOT NULL default '0',
  `p_def` int(3) NOT NULL default '0',
  `m_def` int(2) NOT NULL default '0',
  `mp_bonus` int(3) NOT NULL default '0',
  `price` int(11) NOT NULL default '0',
  `crystal_count` int(4) default NULL,
  `sellable` varchar(5) default NULL,
  `dropable` varchar(5) NOT NULL default 'true',
  `destroyable` varchar(5) NOT NULL default 'true',
  `tradeable` varchar(5) NOT NULL default 'true',
  `item_skill_id` decimal(11,0) NOT NULL default '0',
  `item_skill_lvl` decimal(11,0) NOT NULL default '0',
  PRIMARY KEY  (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `armorsets`;
CREATE TABLE `armorsets` (
  `id` int(3) NOT NULL auto_increment,
  `chest` decimal(11,0) NOT NULL default '0',
  `legs` decimal(11,0) NOT NULL default '0',
  `head` decimal(11,0) NOT NULL default '0',
  `gloves` decimal(11,0) NOT NULL default '0',
  `feet` decimal(11,0) NOT NULL default '0',
  `skill_id` decimal(11,0) NOT NULL default '0',
  `shield` decimal(11,0) NOT NULL default '0',
  `shield_skill_id` decimal(11,0) NOT NULL default '0',
  `enchant6skill` decimal(11,0) NOT NULL default '0',
  PRIMARY KEY  (`id`,`chest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `auction`;
CREATE TABLE `auction` (
  `id` int(11) NOT NULL default '0',
  `sellerId` int(11) NOT NULL default '0',
  `sellerName` varchar(50) NOT NULL default 'NPC',
  `sellerClanName` varchar(50) NOT NULL default '',
  `itemType` varchar(25) NOT NULL default '',
  `itemId` int(11) NOT NULL default '0',
  `itemObjectId` int(11) NOT NULL default '0',
  `itemName` varchar(40) NOT NULL default '',
  `itemQuantity` int(11) NOT NULL default '0',
  `startingBid` int(11) NOT NULL default '0',
  `currentBid` int(11) NOT NULL default '0',
  `endDate` decimal(20,0) NOT NULL default '0',
  PRIMARY KEY  (`itemType`,`itemId`,`itemObjectId`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `auction_bid`;
CREATE TABLE `auction_bid` (
  `id` int(11) NOT NULL default '0',
  `auctionId` int(11) NOT NULL default '0',
  `bidderId` int(11) NOT NULL default '0',
  `bidderName` varchar(50) NOT NULL default '',
  `clan_name` varchar(50) NOT NULL default '',
  `maxBid` int(11) NOT NULL default '0',
  `time_bid` decimal(20,0) NOT NULL default '0',
  PRIMARY KEY  (`auctionId`,`bidderId`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `auction_watch`;
CREATE TABLE `auction_watch` (
  `charObjId` int(11) NOT NULL default '0',
  `auctionId` int(11) NOT NULL default '0',
  PRIMARY KEY  (`charObjId`,`auctionId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `augmentations`;
CREATE TABLE `augmentations` (
  `item_id` int(11) NOT NULL default '0',
  `attributes` int(11) default '0',
  `skill` int(11) default '0',
  `level` int(11) default '0',
  PRIMARY KEY  (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `auto_announcements`;
CREATE TABLE `auto_announcements` (
  `id` int(11) NOT NULL auto_increment,
  `announcement` varchar(255) collate latin1_general_ci NOT NULL default '',
  `delay` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
DROP TABLE IF EXISTS `auto_chat`;
CREATE TABLE `auto_chat` (
  `groupId` int(11) NOT NULL default '0',
  `groupName` varchar(128) NOT NULL default '',
  `npcId` int(11) NOT NULL default '0',
  `chatDelay` bigint(20) NOT NULL default '-1',
  `chatRange` smallint(6) NOT NULL default '-1',
  `chatRandom` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`groupId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `auto_chat_text`;
CREATE TABLE `auto_chat_text` (
  `groupId` int(11) NOT NULL default '0',
  `chatText` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`groupId`,`chatText`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `boxaccess`;
CREATE TABLE `boxaccess` (
  `spawn` decimal(11,0) default NULL,
  `charname` varchar(32) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `boxes`;
CREATE TABLE `boxes` (
  `id` int(11) NOT NULL auto_increment,
  `spawn` decimal(11,0) default NULL,
  `npcid` decimal(11,0) default NULL,
  `drawer` varchar(32) default NULL,
  `itemid` decimal(11,0) default NULL,
  `name` varchar(32) default '',
  `count` decimal(11,0) default NULL,
  `enchant` decimal(2,0) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `buff_templates`;
CREATE TABLE `buff_templates` (
  `id` int(11) unsigned NOT NULL default '0',
  `name` varchar(35) NOT NULL default '',
  `skill_id` int(10) unsigned NOT NULL default '0',
  `skill_name` varchar(35) default NULL,
  `skill_level` int(10) unsigned NOT NULL default '1',
  `skill_force` int(1) NOT NULL default '1',
  `skill_order` int(10) unsigned NOT NULL default '0',
  `char_min_level` int(10) unsigned NOT NULL default '0',
  `char_max_level` int(10) unsigned NOT NULL default '0',
  `char_race` int(1) unsigned NOT NULL default '0',
  `char_class` int(1) NOT NULL default '0',
  `char_faction` int(10) unsigned NOT NULL default '0',
  `price_adena` int(10) unsigned NOT NULL default '0',
  `price_points` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`,`name`,`skill_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `castle`;
CREATE TABLE `castle` (
  `id` int(11) NOT NULL default '0',
  `name` varchar(25) NOT NULL default '',
  `taxPercent` int(11) NOT NULL default '15',
  `treasury` int(11) NOT NULL default '0',
  `siegeDate` decimal(20,0) NOT NULL default '0',
  `siegeDayOfWeek` int(11) NOT NULL default '7',
  `siegeHourOfDay` int(11) NOT NULL default '20',
  PRIMARY KEY  (`name`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `castle_door`;
CREATE TABLE `castle_door` (
  `castleId` int(11) NOT NULL default '0',
  `id` int(11) NOT NULL default '0',
  `name` varchar(30) NOT NULL default '',
  `x` int(11) NOT NULL default '0',
  `y` int(11) NOT NULL default '0',
  `z` int(11) NOT NULL default '0',
  `range_xmin` int(11) NOT NULL default '0',
  `range_ymin` int(11) NOT NULL default '0',
  `range_zmin` int(11) NOT NULL default '0',
  `range_xmax` int(11) NOT NULL default '0',
  `range_ymax` int(11) NOT NULL default '0',
  `range_zmax` int(11) NOT NULL default '0',
  `hp` int(11) NOT NULL default '0',
  `pDef` int(11) NOT NULL default '0',
  `mDef` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `id` (`castleId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `castle_doorupgrade`;
CREATE TABLE `castle_doorupgrade` (
  `doorId` int(11) NOT NULL default '0',
  `hp` int(11) NOT NULL default '0',
  `pDef` int(11) NOT NULL default '0',
  `mDef` int(11) NOT NULL default '0',
  PRIMARY KEY  (`doorId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `castle_manor_procure`;
CREATE TABLE `castle_manor_procure` (
  `castle_id` int(11) NOT NULL default '0',
  `crop_id` int(11) NOT NULL default '0',
  `can_buy` int(11) NOT NULL default '0',
  `start_buy` int(11) NOT NULL default '0',
  `price` int(11) NOT NULL default '0',
  `reward_type` int(11) NOT NULL default '0',
  `period` int(11) NOT NULL default '1',
  PRIMARY KEY  (`castle_id`,`crop_id`,`period`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `castle_manor_production`;
CREATE TABLE `castle_manor_production` (
  `castle_id` int(11) NOT NULL default '0',
  `seed_id` int(11) NOT NULL default '0',
  `can_produce` int(11) NOT NULL default '0',
  `start_produce` int(11) NOT NULL default '0',
  `seed_price` int(11) NOT NULL default '0',
  `period` int(11) NOT NULL default '1',
  PRIMARY KEY  (`castle_id`,`seed_id`,`period`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `castle_siege_guards`;
CREATE TABLE `castle_siege_guards` (
  `castleId` int(11) NOT NULL default '0',
  `id` int(11) NOT NULL auto_increment,
  `npcId` int(11) NOT NULL default '0',
  `x` int(11) NOT NULL default '0',
  `y` int(11) NOT NULL default '0',
  `z` int(11) NOT NULL default '0',
  `heading` int(11) NOT NULL default '0',
  `respawnDelay` int(11) NOT NULL default '0',
  `isHired` int(11) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `id` (`castleId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `char_templates`;
CREATE TABLE `char_templates` (
  `ClassId` int(11) NOT NULL default '0',
  `ClassName` varchar(20) NOT NULL default '',
  `RaceId` int(1) NOT NULL default '0',
  `STR` int(2) NOT NULL default '0',
  `CON` int(2) NOT NULL default '0',
  `DEX` int(2) NOT NULL default '0',
  `_INT` int(2) NOT NULL default '0',
  `WIT` int(2) NOT NULL default '0',
  `MEN` int(2) NOT NULL default '0',
  `P_ATK` int(3) NOT NULL default '0',
  `P_DEF` int(3) NOT NULL default '0',
  `M_ATK` int(3) NOT NULL default '0',
  `M_DEF` int(2) NOT NULL default '0',
  `P_SPD` int(3) NOT NULL default '0',
  `M_SPD` int(3) NOT NULL default '0',
  `ACC` int(3) NOT NULL default '0',
  `CRITICAL` int(3) NOT NULL default '0',
  `EVASION` int(3) NOT NULL default '0',
  `MOVE_SPD` int(3) NOT NULL default '0',
  `_LOAD` int(11) NOT NULL default '0',
  `x` int(9) NOT NULL default '0',
  `y` int(9) NOT NULL default '0',
  `z` int(9) NOT NULL default '0',
  `canCraft` int(1) NOT NULL default '0',
  `M_UNK1` decimal(4,2) NOT NULL default '0.00',
  `M_UNK2` decimal(8,6) NOT NULL default '0.000000',
  `M_COL_R` decimal(3,1) NOT NULL default '0.0',
  `M_COL_H` decimal(4,1) NOT NULL default '0.0',
  `F_UNK1` decimal(4,2) NOT NULL default '0.00',
  `F_UNK2` decimal(8,6) NOT NULL default '0.000000',
  `F_COL_R` decimal(3,1) NOT NULL default '0.0',
  `F_COL_H` decimal(4,1) NOT NULL default '0.0',
  `items1` int(4) NOT NULL default '0',
  `items2` int(4) NOT NULL default '0',
  `items3` int(4) NOT NULL default '0',
  `items4` int(4) NOT NULL default '0',
  `items5` int(10) NOT NULL default '0',
  PRIMARY KEY  (`ClassId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
DROP TABLE IF EXISTS `character_friends`;
CREATE TABLE `character_friends` (
  `char_id` int(11) NOT NULL default '0',
  `friend_id` int(11) NOT NULL default '0',
  `friend_name` varchar(35) NOT NULL default '',
  PRIMARY KEY  (`char_id`,`friend_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `character_hennas`;
CREATE TABLE `character_hennas` (
  `char_obj_id` int(11) NOT NULL default '0',
  `symbol_id` int(11) default NULL,
  `slot` int(11) NOT NULL default '0',
  `class_index` int(1) NOT NULL default '0',
  PRIMARY KEY  (`char_obj_id`,`slot`,`class_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `character_macroses`;
CREATE TABLE `character_macroses` (
  `char_obj_id` int(11) NOT NULL default '0',
  `id` int(11) NOT NULL default '0',
  `icon` int(11) default NULL,
  `name` varchar(40) default NULL,
  `descr` varchar(80) default NULL,
  `acronym` varchar(4) default NULL,
  `commands` varchar(255) default NULL,
  PRIMARY KEY  (`char_obj_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `character_olympiad`;
CREATE TABLE `character_olympiad` (
  `char_name` varchar(20) default NULL,
  `char_obj_id` int(11) NOT NULL default '0',
  `char_participate` int(1) default NULL,
  `char_victories` int(3) default NULL,
  `char_defeats` int(3) default NULL,
  `olympiad_points` int(11) default NULL,
  PRIMARY KEY  (`char_obj_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 11264 kB; InnoDB free: 11264 kB';
DROP TABLE IF EXISTS `character_quests`;
CREATE TABLE `character_quests` (
  `char_id` int(11) NOT NULL default '0',
  `name` varchar(40) NOT NULL default '',
  `var` varchar(20) NOT NULL default '',
  `value` varchar(255) default NULL,
  `class_index` int(1) NOT NULL default '0',
  PRIMARY KEY  (`char_id`,`name`,`var`,`class_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `character_raidpoints`;
CREATE TABLE `character_raidpoints` (
  `owner_id` int(11) unsigned NOT NULL default '0',
  `boss_id` int(11) unsigned NOT NULL default '0',
  `points` int(11) NOT NULL default '0',
  PRIMARY KEY  (`owner_id`,`boss_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `character_recipebook`;
CREATE TABLE `character_recipebook` (
  `char_id` decimal(11,0) NOT NULL default '0',
  `id` decimal(11,0) NOT NULL default '0',
  `type` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`,`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `character_recommends`;
CREATE TABLE `character_recommends` (
  `char_id` int(11) NOT NULL default '0',
  `target_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`char_id`,`target_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `character_shortcuts`;
CREATE TABLE `character_shortcuts` (
  `char_obj_id` decimal(11,0) NOT NULL default '0',
  `slot` decimal(3,0) NOT NULL default '0',
  `page` decimal(3,0) NOT NULL default '0',
  `type` decimal(3,0) default NULL,
  `shortcut_id` decimal(16,0) default NULL,
  `level` varchar(4) default NULL,
  `class_index` int(1) NOT NULL default '0',
  PRIMARY KEY  (`char_obj_id`,`slot`,`page`,`class_index`),
  KEY `shortcut_id` (`shortcut_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `character_skills`;
CREATE TABLE `character_skills` (
  `char_obj_id` int(11) NOT NULL default '0',
  `skill_id` int(11) NOT NULL default '0',
  `skill_level` varchar(5) default NULL,
  `skill_name` varchar(40) default NULL,
  `class_index` int(1) NOT NULL default '0',
  PRIMARY KEY  (`char_obj_id`,`skill_id`,`class_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `character_skills_save`;
CREATE TABLE `character_skills_save` (
  `char_obj_id` int(11) NOT NULL default '0',
  `skill_id` int(11) NOT NULL default '0',
  `skill_level` int(11) NOT NULL default '0',
  `effect_count` int(11) NOT NULL default '0',
  `effect_cur_time` int(11) NOT NULL default '0',
  `reuse_delay` int(8) NOT NULL default '0',
  `restore_type` int(1) NOT NULL default '0',
  `class_index` int(1) NOT NULL default '0',
  `buff_index` int(2) NOT NULL default '0',
  PRIMARY KEY  (`char_obj_id`,`skill_id`,`class_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `character_stats`;
CREATE TABLE `character_stats` (
  `id` decimal(11,0) NOT NULL default '0',
  `totalKarma` double(255,0) NOT NULL default '0',
  `totalPlayerKills` decimal(25,0) NOT NULL default '0',
  `totalKills` double(255,0) NOT NULL default '0',
  `totalMonKills` double(255,0) NOT NULL default '0',
  `totalDamageDealt` double(255,0) NOT NULL default '0',
  `totalDamageTaken` double(255,0) NOT NULL default '0',
  `totalDied` decimal(25,0) NOT NULL default '0',
  `totalMonsterDeaths` decimal(25,0) NOT NULL default '0',
  `totalPlayerDeaths` decimal(25,0) NOT NULL default '0',
  `totalPKDeaths` decimal(25,0) NOT NULL default '0',
  `totalPvPDeaths` decimal(25,0) NOT NULL default '0',
  `totalHealthLost` double(255,0) NOT NULL default '0',
  `totalHealthGained` double(255,0) NOT NULL default '0',
  `totalSpellsCasted` double(255,0) NOT NULL default '0',
  `totalTimesAttacked` double(255,0) NOT NULL default '0',
  `totalPlayTime` double(255,0) NOT NULL default '0',
  `totalXPGained` double(255,0) NOT NULL default '0',
  `totalXPLost` double(255,0) NOT NULL default '0',
  `totalDistanceTravelled` double(255,0) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `character_subclasses`;
CREATE TABLE `character_subclasses` (
  `char_obj_id` decimal(11,0) NOT NULL default '0',
  `class_id` int(2) NOT NULL default '0',
  `exp` decimal(20,0) NOT NULL default '0',
  `sp` decimal(11,0) NOT NULL default '0',
  `level` int(2) NOT NULL default '40',
  `class_index` int(11) NOT NULL default '0',
  PRIMARY KEY  (`char_obj_id`,`class_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `account_name` varchar(45) default NULL,
  `obj_Id` decimal(11,0) NOT NULL default '0',
  `char_name` varchar(35) NOT NULL default '',
  `level` decimal(11,0) default NULL,
  `maxHp` decimal(11,0) default NULL,
  `curHp` decimal(18,0) default NULL,
  `maxCp` decimal(11,0) default NULL,
  `curCp` decimal(18,0) default NULL,
  `maxMp` decimal(11,0) default NULL,
  `curMp` decimal(18,0) default NULL,
  `acc` decimal(11,0) default NULL,
  `crit` decimal(10,0) default NULL,
  `evasion` decimal(11,0) default NULL,
  `mAtk` decimal(11,0) default NULL,
  `mDef` decimal(11,0) default NULL,
  `mSpd` decimal(11,0) default NULL,
  `pAtk` decimal(11,0) default NULL,
  `pDef` decimal(11,0) default NULL,
  `pSpd` decimal(11,0) default NULL,
  `runSpd` decimal(11,0) default NULL,
  `walkSpd` decimal(11,0) default NULL,
  `str` decimal(11,0) default NULL,
  `con` decimal(11,0) default NULL,
  `dex` decimal(11,0) default NULL,
  `_int` decimal(11,0) default NULL,
  `men` decimal(11,0) default NULL,
  `wit` decimal(11,0) default NULL,
  `face` decimal(11,0) default NULL,
  `hairStyle` decimal(11,0) default NULL,
  `hairColor` decimal(11,0) default NULL,
  `sex` decimal(11,0) default NULL,
  `heading` decimal(11,0) default NULL,
  `x` decimal(11,0) default NULL,
  `y` decimal(11,0) default NULL,
  `z` decimal(11,0) default NULL,
  `movement_multiplier` decimal(9,8) default NULL,
  `attack_speed_multiplier` decimal(10,9) default NULL,
  `colRad` decimal(10,3) default NULL,
  `colHeight` decimal(10,3) default NULL,
  `exp` decimal(20,0) default NULL,
  `expBeforeDeath` decimal(20,0) default '0',
  `sp` decimal(11,0) default NULL,
  `karma` decimal(11,0) default NULL,
  `pvpkills` decimal(11,0) default NULL,
  `pkkills` decimal(11,0) default NULL,
  `clanid` decimal(11,0) default NULL,
  `maxload` decimal(11,0) default NULL,
  `race` decimal(11,0) default NULL,
  `classid` decimal(11,0) default NULL,
  `deletetime` decimal(20,0) default NULL,
  `cancraft` decimal(11,0) default NULL,
  `title` varchar(16) default NULL,
  `rec_have` int(3) NOT NULL default '0',
  `rec_left` int(3) NOT NULL default '0',
  `accesslevel` decimal(4,0) default NULL,
  `online` decimal(1,0) default NULL,
  `char_slot` decimal(1,0) default NULL,
  `lastAccess` decimal(20,0) default NULL,
  `clan_privs` int(11) default '0',
  `wantspeace` decimal(1,0) default '0',
  `base_class` int(4) NOT NULL default '0',
  `onlinetime` decimal(20,0) NOT NULL default '0',
  `newbie` decimal(1,0) default '1',
  `isin7sdungeon` decimal(1,0) default '0',
  `in_jail` decimal(1,0) default '0',
  `jail_timer` decimal(20,0) default '0',
  `hero` decimal(1,0) NOT NULL default '0',
  `nobless` decimal(2,0) NOT NULL default '0',
  `varka_ketra_ally` int(1) NOT NULL default '0',
  `pledge_rank` int(11) NOT NULL default '0',
  `lvl_joined_academy` int(2) NOT NULL default '0',
  `apprentice` int(1) NOT NULL default '0',
  `sponsor` int(1) NOT NULL default '0',
  `last_recom_date` decimal(20,0) NOT NULL default '0',
  `banchat_timer` decimal(20,0) default '0',
  `clan_join_expiry_time` decimal(20,0) NOT NULL default '0',
  `clan_create_expiry_time` decimal(20,0) NOT NULL default '0',
  `subpledge` int(1) NOT NULL default '0',
  `charViP` decimal(1,0) NOT NULL default '0',
  `is_donator` decimal(1,0) NOT NULL default '0',
  `chatban_timer` decimal(20,0) default '0',
  `chatban_reason` varchar(255) NOT NULL default '',
  `autoloot_herbs` int(1) NOT NULL default '0',
  `death_penalty_level` int(2) NOT NULL default '0',
  `event_points` decimal(11,0) default NULL,
  PRIMARY KEY  (`obj_Id`),
  KEY `clanid` (`clanid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `clan_data`;
CREATE TABLE `clan_data` (
  `clan_id` int(11) NOT NULL default '0',
  `clan_name` varchar(45) default NULL,
  `clan_level` int(11) default NULL,
  `hasCastle` int(11) default NULL,
  `ally_id` int(11) default NULL,
  `ally_name` varchar(45) default NULL,
  `leader_id` int(11) default NULL,
  `crest_id` int(11) default NULL,
  `crest_large_id` int(11) default NULL,
  `ally_crest_id` int(11) default NULL,
  `reputation_score` int(11) NOT NULL default '0',
  `rank` int(11) NOT NULL default '0',
  `auction_bid_at` int(11) NOT NULL default '0',
  `ally_penalty_expiry_time` decimal(20,0) NOT NULL default '0',
  `ally_penalty_type` decimal(1,0) NOT NULL default '0',
  `char_penalty_expiry_time` decimal(20,0) NOT NULL default '0',
  `dissolving_expiry_time` decimal(20,0) NOT NULL default '0',
  PRIMARY KEY  (`clan_id`),
  KEY `leader_id` (`leader_id`),
  KEY `ally_id` (`ally_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `clan_privs`;
CREATE TABLE `clan_privs` (
  `clan_id` int(11) NOT NULL default '0',
  `rank` int(11) NOT NULL default '0',
  `party` int(11) NOT NULL default '0',
  `privilleges` int(11) NOT NULL default '0',
  PRIMARY KEY  (`clan_id`,`rank`,`party`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
DROP TABLE IF EXISTS `clan_skills`;
CREATE TABLE `clan_skills` (
  `clan_id` int(11) NOT NULL default '0',
  `skill_id` int(11) NOT NULL default '0',
  `skill_level` int(5) NOT NULL default '0',
  `skill_name` varchar(26) default NULL,
  PRIMARY KEY  (`clan_id`,`skill_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
DROP TABLE IF EXISTS `clan_subpledges`;
CREATE TABLE `clan_subpledges` (
  `clan_id` int(11) NOT NULL default '0',
  `sub_pledge_id` int(11) NOT NULL default '0',
  `name` varchar(45) default NULL,
  `leader_name` varchar(35) default NULL,
  PRIMARY KEY  (`clan_id`,`sub_pledge_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
DROP TABLE IF EXISTS `clan_wars`;
CREATE TABLE `clan_wars` (
  `clan1` varchar(35) NOT NULL default '',
  `clan2` varchar(35) NOT NULL default '',
  `wantspeace1` decimal(1,0) NOT NULL default '0',
  `wantspeace2` decimal(1,0) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `clanhall`;
CREATE TABLE `clanhall` (
  `id` int(11) NOT NULL default '0',
  `name` varchar(40) NOT NULL default '',
  `ownerId` int(11) NOT NULL default '0',
  `lease` int(10) NOT NULL default '0',
  `desc` text NOT NULL,
  `location` varchar(15) NOT NULL default '',
  `paidUntil` decimal(20,0) NOT NULL default '0',
  `Grade` decimal(1,0) NOT NULL default '0',
  `paid` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `clanhall_functions`;
CREATE TABLE `clanhall_functions` (
  `hall_id` int(2) NOT NULL default '0',
  `type` int(1) NOT NULL default '0',
  `lvl` int(3) NOT NULL default '0',
  `lease` int(10) NOT NULL default '0',
  `rate` decimal(20,0) NOT NULL default '0',
  `endTime` decimal(20,0) NOT NULL default '0',
  PRIMARY KEY  (`hall_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `class_list`;
CREATE TABLE `class_list` (
  `class_name` varchar(19) NOT NULL default '',
  `id` int(10) unsigned NOT NULL default '0',
  `parent_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
DROP TABLE IF EXISTS `connection_test_table`;
CREATE TABLE `connection_test_table` (
  `a` char(1) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
DROP TABLE IF EXISTS `couples`;
CREATE TABLE `couples` (
  `id` int(11) NOT NULL auto_increment,
  `player1Id` int(11) NOT NULL default '0',
  `player2Id` int(11) NOT NULL default '0',
  `maried` varchar(5) default NULL,
  `affiancedDate` decimal(20,0) default '0',
  `weddingDate` decimal(20,0) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ctf`;
CREATE TABLE `ctf` (
  `eventNane` varchar(255) NOT NULL default '',
  `eventDesc` varchar(255) NOT NULL default '',
  `joiningLocation` varchar(255) NOT NULL default '',
  `minlvl` int(4) NOT NULL default '0',
  `maxlvl` int(4) NOT NULL default '0',
  `npcId` int(8) NOT NULL default '0',
  `npcX` int(11) NOT NULL default '0',
  `npcY` int(11) NOT NULL default '0',
  `npcZ` int(11) NOT NULL default '0',
  `npcHeading` int(11) NOT NULL default '0',
  `rewardId` int(11) NOT NULL default '0',
  `rewardAmount` int(11) NOT NULL default '0',
  `teamsCount` int(4) NOT NULL default '0',
  `joinTime` int(11) NOT NULL default '0',
  `eventTime` int(11) NOT NULL default '0',
  `minPlayers` int(4) NOT NULL default '0',
  `maxPlayers` int(4) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ctf_teams`;
CREATE TABLE `ctf_teams` (
  `teamId` int(4) NOT NULL default '0',
  `teamName` varchar(255) NOT NULL default '',
  `teamX` int(11) NOT NULL default '0',
  `teamY` int(11) NOT NULL default '0',
  `teamZ` int(11) NOT NULL default '0',
  `teamColor` int(11) NOT NULL default '0',
  `flagX` int(11) NOT NULL default '0',
  `flagY` int(11) NOT NULL default '0',
  `flagZ` int(11) NOT NULL default '0',
  PRIMARY KEY  (`teamId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cursed_weapons`;
CREATE TABLE `cursed_weapons` (
  `itemId` int(11) NOT NULL default '0',
  `playerId` int(11) default '0',
  `playerKarma` int(11) default '0',
  `playerPkKills` int(11) default '0',
  `nbKills` int(11) default '0',
  `endTime` decimal(20,0) default '0',
  PRIMARY KEY  (`itemId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `custom_armor`;
CREATE TABLE `custom_armor` (
  `item_id` int(11) NOT NULL default '0',
  `item_display_id` int(11) NOT NULL default '0',
  `name` varchar(70) default NULL,
  `bodypart` varchar(15) NOT NULL default '',
  `crystallizable` varchar(5) NOT NULL default '',
  `armor_type` varchar(5) NOT NULL default '',
  `weight` int(5) NOT NULL default '0',
  `material` varchar(15) NOT NULL default '',
  `crystal_type` varchar(4) NOT NULL default '',
  `avoid_modify` int(1) NOT NULL default '0',
  `duration` int(3) NOT NULL default '0',
  `p_def` int(3) NOT NULL default '0',
  `m_def` int(2) NOT NULL default '0',
  `mp_bonus` int(3) NOT NULL default '0',
  `price` int(11) NOT NULL default '0',
  `crystal_count` int(4) default NULL,
  `sellable` varchar(5) default NULL,
  `dropable` varchar(5) NOT NULL default 'true',
  `destroyable` varchar(5) NOT NULL default 'true',
  `tradeable` varchar(5) NOT NULL default 'true',
  `item_skill_id` decimal(11,0) NOT NULL default '0',
  `item_skill_lvl` decimal(11,0) NOT NULL default '0',
  PRIMARY KEY  (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `custom_etcitem`;
CREATE TABLE `custom_etcitem` (
  `item_id` decimal(11,0) NOT NULL default '0',
  `item_display_id` decimal(11,0) NOT NULL default '0',
  `name` varchar(100) default NULL,
  `crystallizable` varchar(5) default NULL,
  `item_type` varchar(14) default NULL,
  `weight` decimal(4,0) default NULL,
  `consume_type` varchar(9) default NULL,
  `material` varchar(11) default NULL,
  `crystal_type` varchar(4) default NULL,
  `duration` decimal(3,0) default NULL,
  `price` decimal(11,0) default NULL,
  `crystal_count` int(4) default NULL,
  `sellable` varchar(5) default NULL,
  `dropable` varchar(5) default NULL,
  `destroyable` varchar(5) default NULL,
  `tradeable` varchar(5) default NULL,
  `oldname` varchar(100) NOT NULL default '',
  `oldtype` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `custom_merchant_buylists`;
CREATE TABLE `custom_merchant_buylists` (
  `item_id` decimal(9,0) NOT NULL default '0',
  `price` decimal(11,0) NOT NULL default '0',
  `shop_id` decimal(9,0) NOT NULL default '0',
  `order` decimal(4,0) NOT NULL default '0',
  `count` int(11) NOT NULL default '-1',
  `currentCount` int(11) NOT NULL default '-1',
  `time` int(11) NOT NULL default '0',
  `savetimer` decimal(20,0) NOT NULL default '0',
  PRIMARY KEY  (`shop_id`,`order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `custom_merchant_shopids`;
CREATE TABLE `custom_merchant_shopids` (
  `shop_id` decimal(9,0) NOT NULL default '0',
  `npc_id` varchar(9) default NULL,
  PRIMARY KEY  (`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `custom_npc`;
CREATE TABLE `custom_npc` (
  `id` decimal(11,0) NOT NULL default '0',
  `idTemplate` int(11) NOT NULL default '0',
  `name` varchar(200) default NULL,
  `serverSideName` int(1) default '0',
  `title` varchar(45) default '',
  `serverSideTitle` int(1) default '0',
  `class` varchar(200) default NULL,
  `collision_radius` decimal(5,2) default NULL,
  `collision_height` decimal(5,2) default NULL,
  `level` decimal(2,0) default NULL,
  `sex` varchar(6) default NULL,
  `type` varchar(20) default NULL,
  `attackrange` int(11) default NULL,
  `hp` decimal(8,0) default NULL,
  `mp` decimal(5,0) default NULL,
  `hpreg` decimal(8,2) default NULL,
  `mpreg` decimal(5,2) default NULL,
  `str` decimal(7,0) default NULL,
  `con` decimal(7,0) default NULL,
  `dex` decimal(7,0) default NULL,
  `int` decimal(7,0) default NULL,
  `wit` decimal(7,0) default NULL,
  `men` decimal(7,0) default NULL,
  `exp` decimal(9,0) default NULL,
  `sp` decimal(8,0) default NULL,
  `patk` decimal(5,0) default NULL,
  `pdef` decimal(5,0) default NULL,
  `matk` decimal(5,0) default NULL,
  `mdef` decimal(5,0) default NULL,
  `atkspd` decimal(3,0) default NULL,
  `aggro` decimal(6,0) default NULL,
  `matkspd` decimal(4,0) default NULL,
  `rhand` decimal(4,0) default NULL,
  `lhand` decimal(4,0) default NULL,
  `armor` decimal(1,0) default NULL,
  `walkspd` decimal(3,0) default NULL,
  `runspd` decimal(3,0) default NULL,
  `faction_id` varchar(40) default NULL,
  `faction_range` decimal(4,0) default NULL,
  `isUndead` int(11) default '0',
  `absorb_level` decimal(2,0) default '0',
  `absorb_type` enum('FULL_PARTY','LAST_HIT','PARTY_ONE_RANDOM') NOT NULL default 'LAST_HIT',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `custom_spawnlist`;
CREATE TABLE `custom_spawnlist` (
  `id` int(11) NOT NULL auto_increment,
  `location` varchar(40) default NULL,
  `count` int(9) NOT NULL default '0',
  `npc_templateid` int(9) NOT NULL default '0',
  `locx` int(9) NOT NULL default '0',
  `locy` int(9) NOT NULL default '0',
  `locz` int(9) NOT NULL default '0',
  `randomx` int(9) NOT NULL default '0',
  `randomy` int(9) NOT NULL default '0',
  `heading` int(9) NOT NULL default '0',
  `respawn_delay` int(9) NOT NULL default '0',
  `loc_id` int(9) NOT NULL default '0',
  `periodOfDay` decimal(2,0) default '0',
  PRIMARY KEY  (`id`),
  KEY `key_npc_templateid` (`npc_templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `custom_teleports`;
CREATE TABLE `custom_teleports` (
  `description` varchar(75) default NULL,
  `id` decimal(11,0) NOT NULL default '0',
  `loc_x` decimal(9,0) default NULL,
  `loc_y` decimal(9,0) default NULL,
  `loc_z` decimal(9,0) default NULL,
  `price` decimal(6,0) default NULL,
  `fornoble` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `custom_weapon`;
CREATE TABLE `custom_weapon` (
  `item_id` decimal(11,0) NOT NULL default '0',
  `item_display_id` decimal(11,0) NOT NULL default '0',
  `name` varchar(70) default NULL,
  `bodypart` varchar(15) default NULL,
  `crystallizable` varchar(5) default NULL,
  `weight` decimal(4,0) default NULL,
  `soulshots` decimal(2,0) default NULL,
  `spiritshots` decimal(1,0) default NULL,
  `material` varchar(11) default NULL,
  `crystal_type` varchar(4) default NULL,
  `p_dam` decimal(5,0) default NULL,
  `rnd_dam` decimal(2,0) default NULL,
  `weaponType` varchar(8) default NULL,
  `critical` decimal(2,0) default NULL,
  `hit_modify` decimal(6,5) default NULL,
  `avoid_modify` decimal(2,0) default NULL,
  `shield_def` decimal(3,0) default NULL,
  `shield_def_rate` decimal(2,0) default NULL,
  `atk_speed` decimal(3,0) default NULL,
  `mp_consume` decimal(2,0) default NULL,
  `m_dam` decimal(3,0) default NULL,
  `duration` decimal(3,0) default NULL,
  `price` decimal(11,0) default NULL,
  `crystal_count` int(4) default NULL,
  `sellable` varchar(5) NOT NULL default 'true',
  `dropable` varchar(5) NOT NULL default 'true',
  `destroyable` varchar(5) NOT NULL default 'true',
  `tradeable` varchar(5) NOT NULL default 'true',
  `item_skill_id` decimal(11,0) NOT NULL default '0',
  `item_skill_lvl` decimal(11,0) NOT NULL default '0',
  `enchant4_skill_id` decimal(11,0) NOT NULL default '0',
  `enchant4_skill_lvl` decimal(11,0) NOT NULL default '0',
  `onCast_skill_id` decimal(11,0) NOT NULL default '0',
  `onCast_skill_lvl` decimal(11,0) NOT NULL default '0',
  `onCast_skill_chance` decimal(11,0) NOT NULL default '0',
  `onCrit_skill_id` decimal(11,0) NOT NULL default '0',
  `onCrit_skill_lvl` decimal(11,0) NOT NULL default '0',
  `onCrit_skill_chance` decimal(11,0) NOT NULL default '0',
  PRIMARY KEY  (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `dm`;
CREATE TABLE `dm` (
  `eventNane` varchar(255) NOT NULL default '',
  `eventDesc` varchar(255) NOT NULL default '',
  `joiningLocation` varchar(255) NOT NULL default '',
  `minlvl` int(4) NOT NULL default '0',
  `maxlvl` int(4) NOT NULL default '0',
  `npcId` int(8) NOT NULL default '0',
  `npcX` int(11) NOT NULL default '0',
  `npcY` int(11) NOT NULL default '0',
  `npcZ` int(11) NOT NULL default '0',
  `rewardId` int(11) NOT NULL default '0',
  `rewardAmount` int(11) NOT NULL default '0',
  `color` int(11) NOT NULL default '0',
  `playerX` int(11) NOT NULL default '0',
  `playerY` int(11) NOT NULL default '0',
  `playerZ` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `droplist`;
CREATE TABLE `droplist` (
  `mobId` int(11) NOT NULL default '0',
  `itemId` int(11) NOT NULL default '0',
  `min` int(11) NOT NULL default '0',
  `max` int(11) NOT NULL default '0',
  `category` int(11) NOT NULL default '0',
  `chance` int(11) NOT NULL default '0',
  PRIMARY KEY  (`mobId`,`itemId`,`category`),
  KEY `key_mobId` (`mobId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `enchant_skill_trees`;
CREATE TABLE `enchant_skill_trees` (
  `skill_id` int(10) NOT NULL default '0',
  `level` int(10) NOT NULL default '0',
  `name` varchar(25) NOT NULL default '',
  `base_lvl` int(2) NOT NULL default '0',
  `enchant_type` varchar(25) default NULL,
  `sp` int(10) NOT NULL default '0',
  `exp` int(20) default NULL,
  `min_skill_lvl` int(2) NOT NULL default '0',
  `success_rate76` int(3) unsigned NOT NULL default '0',
  `success_rate77` int(3) NOT NULL default '0',
  `success_rate78` int(3) NOT NULL default '0',
  PRIMARY KEY  (`skill_id`,`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `etcitem`;
CREATE TABLE `etcitem` (
  `item_id` decimal(11,0) NOT NULL default '0',
  `item_display_id` int(11) NOT NULL default '0',
  `name` varchar(100) default NULL,
  `crystallizable` varchar(5) default NULL,
  `item_type` varchar(14) default NULL,
  `weight` decimal(4,0) default NULL,
  `consume_type` varchar(9) default NULL,
  `material` varchar(11) default NULL,
  `crystal_type` varchar(4) default NULL,
  `duration` decimal(3,0) default NULL,
  `price` decimal(11,0) default NULL,
  `crystal_count` int(4) default NULL,
  `sellable` varchar(5) default NULL,
  `dropable` varchar(5) default NULL,
  `destroyable` varchar(5) default NULL,
  `tradeable` varchar(5) default NULL,
  `oldname` varchar(100) NOT NULL default '',
  `oldtype` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `faction_quests`;
CREATE TABLE `faction_quests` (
  `id` int(11) NOT NULL default '0',
  `faction_id` int(11) NOT NULL default '0',
  `name` varchar(50) NOT NULL default '0',
  `description` varchar(255) NOT NULL default '0',
  `reward` int(11) NOT NULL default '0',
  `mobid` int(5) NOT NULL default '0',
  `amount` int(11) NOT NULL default '0',
  `min_level` int(11) NOT NULL default '0',
  `max_level` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `fish`;
CREATE TABLE `fish` (
  `id` int(5) NOT NULL default '0',
  `level` int(5) NOT NULL default '0',
  `name` varchar(40) NOT NULL default '',
  `hp` int(5) NOT NULL default '0',
  `hpregen` int(3) NOT NULL default '5',
  `fish_type` int(1) NOT NULL default '0',
  `fish_group` int(1) NOT NULL default '0',
  `fish_guts` int(4) NOT NULL default '0',
  `guts_check_time` int(4) NOT NULL default '0',
  `wait_time` int(5) NOT NULL default '0',
  `combat_time` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`,`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `fishing_skill_trees`;
CREATE TABLE `fishing_skill_trees` (
  `skill_id` int(10) NOT NULL default '0',
  `level` int(10) NOT NULL default '0',
  `name` varchar(25) NOT NULL default '',
  `sp` int(10) NOT NULL default '0',
  `min_level` int(10) NOT NULL default '0',
  `costid` int(10) NOT NULL default '0',
  `cost` int(10) NOT NULL default '0',
  `isfordwarf` int(1) NOT NULL default '0',
  PRIMARY KEY  (`skill_id`,`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `fortress_siege`;
CREATE TABLE `fortress_siege` (
  `eventName` varchar(255) NOT NULL default '',
  `eventDesc` varchar(255) NOT NULL default '',
  `joiningLocation` varchar(255) NOT NULL default '',
  `minlvl` int(4) NOT NULL default '0',
  `maxlvl` int(4) NOT NULL default '0',
  `npcId` int(8) NOT NULL default '0',
  `npcX` int(11) NOT NULL default '0',
  `npcY` int(11) NOT NULL default '0',
  `npcZ` int(11) NOT NULL default '0',
  `npcHeading` int(11) NOT NULL default '0',
  `rewardId` int(11) NOT NULL default '0',
  `rewardAmount` int(11) NOT NULL default '0',
  `joinTime` int(11) NOT NULL default '0',
  `eventTime` int(11) NOT NULL default '0',
  `minPlayers` int(4) NOT NULL default '0',
  `maxPlayers` int(4) NOT NULL default '0',
  `centerX` int(11) NOT NULL default '0',
  `centerY` int(11) NOT NULL default '0',
  `centerZ` int(11) NOT NULL default '0',
  `team1Name` varchar(255) NOT NULL default '',
  `team1X` int(11) NOT NULL default '0',
  `team1Y` int(11) NOT NULL default '0',
  `team1Z` int(11) NOT NULL default '0',
  `team1Color` int(11) NOT NULL default '0',
  `team2Name` varchar(255) NOT NULL default '',
  `team2X` int(11) NOT NULL default '0',
  `team2Y` int(11) NOT NULL default '0',
  `team2Z` int(11) NOT NULL default '0',
  `team2Color` int(11) NOT NULL default '0',
  `flagX` int(11) NOT NULL default '0',
  `flagY` int(11) NOT NULL default '0',
  `flagZ` int(11) NOT NULL default '0',
  `innerDoor1` int(11) NOT NULL default '0',
  `innerDoor2` int(11) NOT NULL default '0',
  `innerDoor3` int(11) NOT NULL default '0',
  `innerDoor4` int(11) NOT NULL default '0',
  `outerDoor1` int(11) NOT NULL default '0',
  `outerDoor2` int(11) NOT NULL default '0',
  PRIMARY KEY  (`eventName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `forums`;
CREATE TABLE `forums` (
  `forum_id` int(8) NOT NULL default '0',
  `forum_name` varchar(255) NOT NULL default '',
  `forum_parent` int(8) NOT NULL default '0',
  `forum_post` int(8) NOT NULL default '0',
  `forum_type` int(8) NOT NULL default '0',
  `forum_perm` int(8) NOT NULL default '0',
  `forum_owner_id` int(8) NOT NULL default '0',
  UNIQUE KEY `forum_id` (`forum_id`),
  KEY `forum_name` (`forum_name`(10)),
  KEY `forum_parent` (`forum_parent`),
  KEY `forum_type` (`forum_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `four_sepulchers_spawnlist`;
CREATE TABLE `four_sepulchers_spawnlist` (
  `id` int(11) NOT NULL auto_increment,
  `location` varchar(19) NOT NULL default '',
  `count` int(9) NOT NULL default '0',
  `npc_templateid` int(11) NOT NULL default '0',
  `locx` int(9) NOT NULL default '0',
  `locy` int(9) NOT NULL default '0',
  `locz` int(9) NOT NULL default '0',
  `randomx` int(9) NOT NULL default '0',
  `randomy` int(9) NOT NULL default '0',
  `heading` int(9) NOT NULL default '0',
  `respawn_delay` int(9) NOT NULL default '0',
  `key_npc_id` int(9) NOT NULL default '0',
  `spawntype` int(9) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `games`;
CREATE TABLE `games` (
  `id` int(11) NOT NULL default '0',
  `idnr` int(11) NOT NULL default '0',
  `number1` int(11) NOT NULL default '0',
  `number2` int(11) NOT NULL default '0',
  `prize` int(11) NOT NULL default '0',
  `newprize` int(11) NOT NULL default '0',
  `prize1` int(11) NOT NULL default '0',
  `prize2` int(11) NOT NULL default '0',
  `prize3` int(11) NOT NULL default '0',
  `enddate` decimal(20,0) NOT NULL default '0',
  `finished` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`,`idnr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `gameservers`;
CREATE TABLE `gameservers` (
  `server_id` int(11) NOT NULL default '0',
  `hexid` varchar(50) NOT NULL default '',
  `host` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`server_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `global_tasks`;
CREATE TABLE `global_tasks` (
  `id` int(11) NOT NULL auto_increment,
  `task` varchar(50) NOT NULL default '',
  `type` varchar(50) NOT NULL default '',
  `last_activation` decimal(20,0) NOT NULL default '0',
  `param1` varchar(100) NOT NULL default '',
  `param2` varchar(100) NOT NULL default '',
  `param3` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `gm_audit`;
CREATE TABLE `gm_audit` (
  `id` int(10) NOT NULL auto_increment,
  `gm_name` varchar(45) default NULL,
  `target` varchar(45) default NULL,
  `type` varchar(20) default NULL,
  `action` varchar(200) default NULL,
  `param` varchar(200) default NULL,
  `date` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `henna`;
CREATE TABLE `henna` (
  `symbol_id` int(11) NOT NULL default '0',
  `symbol_name` varchar(45) default NULL,
  `dye_id` int(11) default NULL,
  `dye_amount` int(11) default NULL,
  `price` int(11) default NULL,
  `stat_INT` decimal(11,0) default NULL,
  `stat_STR` decimal(11,0) default NULL,
  `stat_CON` decimal(11,0) default NULL,
  `stat_MEM` decimal(11,0) default NULL,
  `stat_DEX` decimal(11,0) default NULL,
  `stat_WIT` decimal(11,0) default NULL,
  PRIMARY KEY  (`symbol_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `henna_trees`;
CREATE TABLE `henna_trees` (
  `class_id` decimal(10,0) NOT NULL default '0',
  `symbol_id` decimal(10,0) NOT NULL default '0',
  PRIMARY KEY  (`class_id`,`symbol_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `heroes`;
CREATE TABLE `heroes` (
  `char_id` decimal(11,0) NOT NULL default '0',
  `char_name` varchar(45) NOT NULL default '',
  `class_id` decimal(3,0) NOT NULL default '0',
  `count` decimal(3,0) NOT NULL default '0',
  `played` decimal(1,0) NOT NULL default '0',
  `donator` decimal(1,0) NOT NULL default '0',
  PRIMARY KEY  (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `item_icon`;
CREATE TABLE `item_icon` (
  `item_id` int(11) NOT NULL default '0',
  `filename` varchar(150) NOT NULL default '',
  PRIMARY KEY  (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `owner_id` int(11) default NULL,
  `object_id` int(11) NOT NULL default '0',
  `item_id` int(11) default NULL,
  `count` int(11) default NULL,
  `enchant_level` int(11) default NULL,
  `loc` varchar(10) default NULL,
  `loc_data` int(11) default NULL,
  `price_sell` int(11) default NULL,
  `price_buy` int(11) default NULL,
  `time_of_use` int(11) default NULL,
  `custom_type1` int(11) default '0',
  `custom_type2` int(11) default '0',
  `mana_left` decimal(3,0) NOT NULL default '-1',
  PRIMARY KEY  (`object_id`),
  KEY `key_owner_id` (`owner_id`),
  KEY `key_loc` (`loc`),
  KEY `key_item_id` (`item_id`),
  KEY `key_time_of_use` (`time_of_use`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `itemsonground`;
CREATE TABLE `itemsonground` (
  `object_id` int(11) NOT NULL default '0',
  `item_id` int(11) default NULL,
  `count` int(11) default NULL,
  `enchant_level` int(11) default NULL,
  `x` int(11) default NULL,
  `y` int(11) default NULL,
  `z` int(11) default NULL,
  `drop_time` decimal(20,0) default NULL,
  `equipable` int(1) default '0',
  PRIMARY KEY  (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `jail_spawnlist`;
CREATE TABLE `jail_spawnlist` (
  `id` int(11) NOT NULL auto_increment,
  `location` varchar(40) default NULL,
  `count` int(9) NOT NULL default '0',
  `npc_templateid` int(9) NOT NULL default '0',
  `locx` int(9) NOT NULL default '0',
  `locy` int(9) NOT NULL default '0',
  `locz` int(9) NOT NULL default '0',
  `randomx` int(9) NOT NULL default '0',
  `randomy` int(9) NOT NULL default '0',
  `heading` int(9) NOT NULL default '0',
  `respawn_delay` int(9) NOT NULL default '0',
  `loc_id` int(9) NOT NULL default '0',
  `periodOfDay` decimal(2,0) default '0',
  PRIMARY KEY  (`id`),
  KEY `key_npc_templateid` (`npc_templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations` (
  `loc_id` int(9) NOT NULL default '0',
  `loc_x` int(9) NOT NULL default '0',
  `loc_y` int(9) NOT NULL default '0',
  `loc_zmin` int(9) NOT NULL default '0',
  `loc_zmax` int(9) NOT NULL default '0',
  `proc` int(3) NOT NULL default '0',
  PRIMARY KEY  (`loc_id`,`loc_x`,`loc_y`),
  KEY `proc` (`proc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `lvlupgain`;
CREATE TABLE `lvlupgain` (
  `classid` int(3) NOT NULL default '0',
  `defaulthpbase` decimal(5,1) NOT NULL default '0.0',
  `defaulthpadd` decimal(4,2) NOT NULL default '0.00',
  `defaulthpmod` decimal(4,2) NOT NULL default '0.00',
  `defaultcpbase` decimal(5,1) NOT NULL default '0.0',
  `defaultcpadd` decimal(4,2) NOT NULL default '0.00',
  `defaultcpmod` decimal(4,2) NOT NULL default '0.00',
  `defaultmpbase` decimal(5,1) NOT NULL default '0.0',
  `defaultmpadd` decimal(4,2) NOT NULL default '0.00',
  `defaultmpmod` decimal(4,2) NOT NULL default '0.00',
  `class_lvl` int(3) NOT NULL default '0',
  PRIMARY KEY  (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `merchant_areas_list`;
CREATE TABLE `merchant_areas_list` (
  `merchant_area_id` int(10) unsigned NOT NULL default '0',
  `merchant_area_name` varchar(25) NOT NULL default '',
  `tax` double(3,2) unsigned NOT NULL default '0.00',
  `Chaotic` int(11) NOT NULL default '0',
  PRIMARY KEY  (`merchant_area_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `merchant_buylists`;
CREATE TABLE `merchant_buylists` (
  `item_id` decimal(9,0) NOT NULL default '0',
  `price` decimal(11,0) NOT NULL default '0',
  `shop_id` decimal(9,0) NOT NULL default '0',
  `order` decimal(4,0) NOT NULL default '0',
  `count` int(11) NOT NULL default '-1',
  `currentCount` int(11) NOT NULL default '-1',
  `time` int(11) NOT NULL default '0',
  `savetimer` decimal(20,0) NOT NULL default '0',
  PRIMARY KEY  (`shop_id`,`order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `merchant_shopids`;
CREATE TABLE `merchant_shopids` (
  `shop_id` decimal(9,0) NOT NULL default '0',
  `npc_id` varchar(9) default NULL,
  PRIMARY KEY  (`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `merchants`;
CREATE TABLE `merchants` (
  `npc_id` int(11) NOT NULL default '0',
  `merchant_area_id` tinyint(4) default NULL,
  PRIMARY KEY  (`npc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `minions`;
CREATE TABLE `minions` (
  `boss_id` int(11) NOT NULL default '0',
  `minion_id` int(11) NOT NULL default '0',
  `amount_min` int(4) NOT NULL default '0',
  `amount_max` int(4) NOT NULL default '0',
  PRIMARY KEY  (`boss_id`,`minion_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `npc`;
CREATE TABLE `npc` (
  `id` decimal(11,0) NOT NULL default '0',
  `idTemplate` int(11) NOT NULL default '0',
  `name` varchar(200) default NULL,
  `serverSideName` int(1) default '0',
  `title` varchar(45) default '',
  `serverSideTitle` int(1) default '0',
  `class` varchar(200) default NULL,
  `collision_radius` decimal(5,2) default NULL,
  `collision_height` decimal(5,2) default NULL,
  `level` decimal(2,0) default NULL,
  `sex` varchar(6) default NULL,
  `type` varchar(20) default NULL,
  `attackrange` int(11) default NULL,
  `hp` decimal(8,0) default NULL,
  `mp` decimal(5,0) default NULL,
  `hpreg` decimal(8,2) default NULL,
  `mpreg` decimal(5,2) default NULL,
  `str` decimal(7,0) default NULL,
  `con` decimal(7,0) default NULL,
  `dex` decimal(7,0) default NULL,
  `int` decimal(7,0) default NULL,
  `wit` decimal(7,0) default NULL,
  `men` decimal(7,0) default NULL,
  `exp` decimal(9,0) default NULL,
  `sp` decimal(8,0) default NULL,
  `patk` decimal(5,0) default NULL,
  `pdef` decimal(5,0) default NULL,
  `matk` decimal(5,0) default NULL,
  `mdef` decimal(5,0) default NULL,
  `atkspd` decimal(3,0) default NULL,
  `aggro` decimal(6,0) default NULL,
  `matkspd` decimal(4,0) default NULL,
  `rhand` decimal(4,0) default NULL,
  `lhand` decimal(4,0) default NULL,
  `armor` decimal(1,0) default NULL,
  `walkspd` decimal(3,0) default NULL,
  `runspd` decimal(3,0) default NULL,
  `faction_id` varchar(40) default NULL,
  `faction_range` decimal(4,0) default NULL,
  `isUndead` int(11) default '0',
  `absorb_level` decimal(2,0) default '0',
  `absorb_type` enum('FULL_PARTY','LAST_HIT','PARTY_ONE_RANDOM') NOT NULL default 'LAST_HIT',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `npcskills`;
CREATE TABLE `npcskills` (
  `npcid` int(11) NOT NULL default '0',
  `skillid` int(11) NOT NULL default '0',
  `level` int(11) NOT NULL default '0',
  PRIMARY KEY  (`npcid`,`skillid`,`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `olympiad_nobles`;
CREATE TABLE `olympiad_nobles` (
  `char_id` decimal(11,0) NOT NULL default '0',
  `class_id` decimal(3,0) NOT NULL default '0',
  `char_name` varchar(45) NOT NULL default '',
  `olympiad_points` decimal(10,0) NOT NULL default '0',
  `competitions_done` decimal(3,0) NOT NULL default '0',
  PRIMARY KEY  (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `petitions`;
CREATE TABLE `petitions` (
  `petition_id` int(11) NOT NULL auto_increment,
  `char_id` int(11) NOT NULL default '0',
  `petition_txt` text NOT NULL,
  `status` varchar(255) NOT NULL default 'New',
  PRIMARY KEY  (`petition_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `pets`;
CREATE TABLE `pets` (
  `item_obj_id` decimal(11,0) NOT NULL default '0',
  `name` varchar(16) default NULL,
  `level` decimal(11,0) default NULL,
  `curHp` decimal(18,0) default NULL,
  `curMp` decimal(18,0) default NULL,
  `exp` decimal(20,0) default NULL,
  `sp` decimal(11,0) default NULL,
  `karma` decimal(11,0) default NULL,
  `pkkills` decimal(11,0) default NULL,
  `fed` decimal(11,0) default NULL,
  PRIMARY KEY  (`item_obj_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `pets_stats`;
CREATE TABLE `pets_stats` (
  `type` varchar(25) NOT NULL default '',
  `typeID` int(5) NOT NULL default '0',
  `level` int(11) NOT NULL default '0',
  `expMax` int(20) NOT NULL default '0',
  `hpMax` int(11) NOT NULL default '0',
  `mpMax` int(11) NOT NULL default '0',
  `patk` int(11) NOT NULL default '0',
  `pdef` int(11) NOT NULL default '0',
  `matk` int(11) NOT NULL default '0',
  `mdef` int(11) NOT NULL default '0',
  `acc` int(11) NOT NULL default '0',
  `evasion` int(11) NOT NULL default '0',
  `crit` int(11) NOT NULL default '0',
  `speed` int(11) NOT NULL default '0',
  `atk_speed` int(11) NOT NULL default '0',
  `cast_speed` int(11) NOT NULL default '0',
  `feedMax` int(11) NOT NULL default '0',
  `feedbattle` int(11) NOT NULL default '0',
  `feednormal` int(11) NOT NULL default '0',
  `loadMax` int(11) NOT NULL default '0',
  `hpregen` int(11) NOT NULL default '0',
  `mpregen` int(11) NOT NULL default '0',
  `owner_exp_taken` decimal(3,2) NOT NULL default '0.00',
  PRIMARY KEY  (`typeID`,`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `pledge_skill_trees`;
CREATE TABLE `pledge_skill_trees` (
  `skill_id` int(11) default NULL,
  `level` int(11) default NULL,
  `name` varchar(25) default NULL,
  `clan_lvl` int(11) default NULL,
  `Description` varchar(255) default NULL,
  `repCost` int(11) default NULL,
  `itemId` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `post_id` int(8) NOT NULL auto_increment,
  `post_owner_name` varchar(255) NOT NULL default '',
  `post_ownerid` int(8) NOT NULL default '0',
  `post_date` decimal(20,0) NOT NULL default '0',
  `post_topic_id` int(8) NOT NULL default '0',
  `post_txt` text NOT NULL,
  PRIMARY KEY  (`post_id`),
  KEY `post_topic_id` (`post_topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `quest_global_data`;
CREATE TABLE `quest_global_data` (
  `quest_name` varchar(40) NOT NULL default '',
  `var` varchar(20) NOT NULL default '',
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`quest_name`,`var`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
DROP TABLE IF EXISTS `raid_event_spawnlist`;
CREATE TABLE `raid_event_spawnlist` (
  `id` int(11) NOT NULL auto_increment,
  `location` varchar(40) NOT NULL default '',
  `raid_locX` int(9) NOT NULL default '0',
  `raid_locY` int(9) NOT NULL default '0',
  `raid_locZ` int(9) NOT NULL default '0',
  `player_locX` int(9) NOT NULL default '0',
  `player_locY` int(9) NOT NULL default '0',
  `player_locZ` int(9) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `raid_prizes`;
CREATE TABLE `raid_prizes` (
  `prize_package_id` int(11) NOT NULL default '0',
  `first_prize_id` int(11) NOT NULL default '0',
  `first_prize_ammount` int(11) NOT NULL default '0',
  `second_prize_id` int(11) NOT NULL default '0',
  `second_prize_ammount` int(11) NOT NULL default '0',
  `event_points_ammount` int(11) NOT NULL default '0',
  PRIMARY KEY  (`prize_package_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `raidboss_spawnlist`;
CREATE TABLE `raidboss_spawnlist` (
  `boss_id` int(11) NOT NULL default '0',
  `amount` int(11) NOT NULL default '0',
  `loc_x` int(11) NOT NULL default '0',
  `loc_y` int(11) NOT NULL default '0',
  `loc_z` int(11) NOT NULL default '0',
  `heading` int(11) NOT NULL default '0',
  `respawn_min_delay` int(11) NOT NULL default '43200',
  `respawn_max_delay` int(11) NOT NULL default '129600',
  `respawn_time` bigint(20) NOT NULL default '0',
  `currentHp` decimal(8,0) default NULL,
  `currentMp` decimal(8,0) default NULL,
  PRIMARY KEY  (`boss_id`,`loc_x`,`loc_y`,`loc_z`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `random_spawn`;
CREATE TABLE `random_spawn` (
  `groupId` int(11) NOT NULL default '0',
  `npcId` int(11) NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `initialDelay` bigint(20) NOT NULL default '-1',
  `respawnDelay` bigint(20) NOT NULL default '-1',
  `despawnDelay` bigint(20) NOT NULL default '-1',
  `broadcastSpawn` varchar(5) NOT NULL default 'false',
  `randomSpawn` varchar(5) NOT NULL default 'true',
  PRIMARY KEY  (`groupId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `random_spawn_loc`;
CREATE TABLE `random_spawn_loc` (
  `groupId` int(11) NOT NULL default '0',
  `x` int(11) NOT NULL default '0',
  `y` int(11) NOT NULL default '0',
  `z` int(11) NOT NULL default '0',
  `heading` int(11) NOT NULL default '-1',
  PRIMARY KEY  (`groupId`,`x`,`y`,`z`,`heading`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `maxplayer` int(5) NOT NULL default '0',
  `date` date NOT NULL default '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `seven_signs`;
CREATE TABLE `seven_signs` (
  `char_obj_id` int(11) NOT NULL default '0',
  `cabal` varchar(4) NOT NULL default '',
  `seal` int(1) NOT NULL default '0',
  `red_stones` int(11) NOT NULL default '0',
  `green_stones` int(11) NOT NULL default '0',
  `blue_stones` int(11) NOT NULL default '0',
  `ancient_adena_amount` decimal(20,0) NOT NULL default '0',
  `contribution_score` decimal(20,0) NOT NULL default '0',
  PRIMARY KEY  (`char_obj_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `seven_signs_festival`;
CREATE TABLE `seven_signs_festival` (
  `festivalId` int(1) NOT NULL default '0',
  `cabal` varchar(4) NOT NULL default '',
  `cycle` int(4) NOT NULL default '0',
  `date` bigint(50) default '0',
  `score` int(5) NOT NULL default '0',
  `members` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`festivalId`,`cabal`,`cycle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `seven_signs_status`;
CREATE TABLE `seven_signs_status` (
  `id` int(3) NOT NULL default '0',
  `current_cycle` int(10) NOT NULL default '1',
  `festival_cycle` int(10) NOT NULL default '1',
  `active_period` int(10) NOT NULL default '1',
  `date` int(10) NOT NULL default '1',
  `previous_winner` int(10) NOT NULL default '0',
  `dawn_stone_score` decimal(20,0) NOT NULL default '0',
  `dawn_festival_score` int(10) NOT NULL default '0',
  `dusk_stone_score` decimal(20,0) NOT NULL default '0',
  `dusk_festival_score` int(10) NOT NULL default '0',
  `avarice_owner` int(10) NOT NULL default '0',
  `gnosis_owner` int(10) NOT NULL default '0',
  `strife_owner` int(10) NOT NULL default '0',
  `avarice_dawn_score` int(10) NOT NULL default '0',
  `gnosis_dawn_score` int(10) NOT NULL default '0',
  `strife_dawn_score` int(10) NOT NULL default '0',
  `avarice_dusk_score` int(10) NOT NULL default '0',
  `gnosis_dusk_score` int(10) NOT NULL default '0',
  `strife_dusk_score` int(10) NOT NULL default '0',
  `accumulated_bonus0` int(10) NOT NULL default '0',
  `accumulated_bonus1` int(10) NOT NULL default '0',
  `accumulated_bonus2` int(10) NOT NULL default '0',
  `accumulated_bonus3` int(10) NOT NULL default '0',
  `accumulated_bonus4` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
DROP TABLE IF EXISTS `siege_clans`;
CREATE TABLE `siege_clans` (
  `castle_id` int(1) NOT NULL default '0',
  `clan_id` int(11) NOT NULL default '0',
  `type` int(1) default NULL,
  `castle_owner` int(1) default NULL,
  PRIMARY KEY  (`clan_id`,`castle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `skill_learn`;
CREATE TABLE `skill_learn` (
  `npc_id` int(11) NOT NULL default '0',
  `class_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`npc_id`,`class_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `skill_spellbooks`;
CREATE TABLE `skill_spellbooks` (
  `skill_id` int(11) NOT NULL default '-1',
  `item_id` int(11) NOT NULL default '-1',
  KEY `skill_id` (`skill_id`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `skill_trees`;
CREATE TABLE `skill_trees` (
  `class_id` int(10) unsigned NOT NULL default '0',
  `skill_id` int(10) unsigned NOT NULL default '0',
  `level` int(10) unsigned NOT NULL default '0',
  `name` varchar(40) NOT NULL default '',
  `sp` int(10) unsigned NOT NULL default '0',
  `min_level` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`class_id`,`skill_id`,`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `spawnlist`;
CREATE TABLE `spawnlist` (
  `id` int(11) NOT NULL auto_increment,
  `location` varchar(40) NOT NULL default '',
  `count` int(9) NOT NULL default '0',
  `npc_templateid` int(9) NOT NULL default '0',
  `locx` int(9) NOT NULL default '0',
  `locy` int(9) NOT NULL default '0',
  `locz` int(9) NOT NULL default '0',
  `randomx` int(9) NOT NULL default '0',
  `randomy` int(9) NOT NULL default '0',
  `heading` int(9) NOT NULL default '0',
  `respawn_delay` int(9) NOT NULL default '0',
  `loc_id` int(9) NOT NULL default '0',
  `periodOfDay` decimal(2,0) default '0',
  PRIMARY KEY  (`id`),
  KEY `key_npc_templateid` (`npc_templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `teleport`;
CREATE TABLE `teleport` (
  `Description` varchar(75) default NULL,
  `id` decimal(11,0) NOT NULL default '0',
  `loc_x` decimal(9,0) default NULL,
  `loc_y` decimal(9,0) default NULL,
  `loc_z` decimal(9,0) default NULL,
  `price` decimal(6,0) default NULL,
  `fornoble` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `temporaryobjecttable`;
CREATE TABLE `temporaryobjecttable` (
  `object_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `topic_id` int(8) NOT NULL default '0',
  `topic_forum_id` int(8) NOT NULL default '0',
  `topic_name` varchar(255) NOT NULL default '',
  `topic_date` decimal(20,0) NOT NULL default '0',
  `topic_ownername` varchar(255) NOT NULL default '0',
  `topic_ownerid` int(8) NOT NULL default '0',
  `topic_type` int(8) NOT NULL default '0',
  `topic_reply` int(8) NOT NULL default '0',
  PRIMARY KEY  (`topic_id`),
  KEY `topic_forum_id` (`topic_forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `tvt`;
CREATE TABLE `tvt` (
  `eventName` varchar(255) NOT NULL default '',
  `eventDesc` varchar(255) NOT NULL default '',
  `joiningLocation` varchar(255) NOT NULL default '',
  `minlvl` int(4) NOT NULL default '1',
  `maxlvl` int(4) NOT NULL default '0',
  `npcId` int(8) NOT NULL default '0',
  `npcX` int(11) NOT NULL default '0',
  `npcY` int(11) NOT NULL default '0',
  `npcZ` int(11) NOT NULL default '0',
  `npcHeading` int(11) NOT NULL default '0',
  `rewardId` int(11) NOT NULL default '0',
  `rewardAmount` int(11) NOT NULL default '0',
  `teamsCount` int(4) NOT NULL default '0',
  `joinTime` int(11) NOT NULL default '0',
  `eventTime` int(11) NOT NULL default '0',
  `minPlayers` int(4) NOT NULL default '1',
  `maxPlayers` int(4) NOT NULL default '0',
  `delayForNextEvent` bigint(20) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `tvt_teams`;
CREATE TABLE `tvt_teams` (
  `teamId` int(4) NOT NULL default '0',
  `teamName` varchar(255) NOT NULL default '',
  `teamX` int(11) NOT NULL default '0',
  `teamY` int(11) NOT NULL default '0',
  `teamZ` int(11) NOT NULL default '0',
  `teamColor` int(11) NOT NULL default '0',
  PRIMARY KEY  (`teamId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `vanhalter_spawnlist`;
CREATE TABLE `vanhalter_spawnlist` (
  `id` int(11) NOT NULL auto_increment,
  `location` varchar(40) NOT NULL default '',
  `count` int(9) NOT NULL default '0',
  `npc_templateid` int(9) NOT NULL default '0',
  `locx` int(9) NOT NULL default '0',
  `locy` int(9) NOT NULL default '0',
  `locz` int(9) NOT NULL default '0',
  `randomx` int(9) NOT NULL default '0',
  `randomy` int(9) NOT NULL default '0',
  `heading` int(9) NOT NULL default '0',
  `respawn_delay` int(9) NOT NULL default '0',
  `loc_id` int(9) NOT NULL default '0',
  `periodOfDay` decimal(2,0) default '0',
  PRIMARY KEY  (`id`),
  KEY `key_npc_templateid` (`npc_templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `version`;
CREATE TABLE `version` (
  `dbVersion` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `vipinfo`;
CREATE TABLE `vipinfo` (
  `teamID` int(11) NOT NULL default '0',
  `endx` int(11) NOT NULL default '0',
  `endy` int(11) NOT NULL default '0',
  `endz` int(11) NOT NULL default '0',
  `startx` int(11) NOT NULL default '0',
  `starty` int(11) NOT NULL default '0',
  `startz` int(11) NOT NULL default '0',
  PRIMARY KEY  (`teamID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `walker_routes`;
CREATE TABLE `walker_routes` (
  `route_id` int(11) NOT NULL default '0',
  `npc_id` int(11) NOT NULL default '0',
  `move_point` int(9) NOT NULL default '0',
  `chatText` varchar(255) default NULL,
  `move_x` int(9) NOT NULL default '0',
  `move_y` int(9) NOT NULL default '0',
  `move_z` int(9) NOT NULL default '0',
  `delay` int(9) NOT NULL default '0',
  `running` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`route_id`,`npc_id`,`move_point`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `weapon`;
CREATE TABLE `weapon` (
  `item_id` decimal(11,0) NOT NULL default '0',
  `item_display_id` int(11) NOT NULL default '0',
  `name` varchar(70) default NULL,
  `bodypart` varchar(15) default NULL,
  `crystallizable` varchar(5) default NULL,
  `weight` decimal(4,0) default NULL,
  `soulshots` decimal(2,0) default NULL,
  `spiritshots` decimal(1,0) default NULL,
  `material` varchar(11) default NULL,
  `crystal_type` varchar(4) default NULL,
  `p_dam` decimal(5,0) default NULL,
  `rnd_dam` decimal(2,0) default NULL,
  `weaponType` varchar(8) default NULL,
  `critical` decimal(2,0) default NULL,
  `hit_modify` decimal(6,5) default NULL,
  `avoid_modify` decimal(2,0) default NULL,
  `shield_def` decimal(3,0) default NULL,
  `shield_def_rate` decimal(2,0) default NULL,
  `atk_speed` decimal(3,0) default NULL,
  `mp_consume` decimal(2,0) default NULL,
  `m_dam` decimal(3,0) default NULL,
  `duration` decimal(3,0) default NULL,
  `price` decimal(11,0) default NULL,
  `crystal_count` int(4) default NULL,
  `sellable` varchar(5) NOT NULL default 'true',
  `dropable` varchar(5) NOT NULL default 'true',
  `destroyable` varchar(5) NOT NULL default 'true',
  `tradeable` varchar(5) NOT NULL default 'true',
  `item_skill_id` decimal(11,0) NOT NULL default '0',
  `item_skill_lvl` decimal(11,0) NOT NULL default '0',
  `enchant4_skill_id` decimal(11,0) NOT NULL default '0',
  `enchant4_skill_lvl` decimal(11,0) NOT NULL default '0',
  `onCast_skill_id` decimal(11,0) NOT NULL default '0',
  `onCast_skill_lvl` decimal(11,0) NOT NULL default '0',
  `onCast_skill_chance` decimal(11,0) NOT NULL default '0',
  `onCrit_skill_id` decimal(11,0) NOT NULL default '0',
  `onCrit_skill_lvl` decimal(11,0) NOT NULL default '0',
  `onCrit_skill_chance` decimal(11,0) NOT NULL default '0',
  PRIMARY KEY  (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

