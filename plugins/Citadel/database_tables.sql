CREATE TABLE `faction` ( `name` varchar(255) NOT NULL, `founder` varchar(255) DEFAULT NULL, `password` varchar(255) DEFAULT NULL, PRIMARY KEY (`name`) );

CREATE TABLE `faction_member` ( `faction_name` varchar(255) DEFAULT NULL, `member_name` varchar(255) DEFAULT NULL, UNIQUE KEY `uq_faction_member_1` (`faction_name`,`member_name`) );

CREATE TABLE `member` ( `member_name` varchar(255) NOT NULL, PRIMARY KEY (`member_name`) );

CREATE TABLE `moderator` ( `member_name` varchar(255) DEFAULT NULL, `faction_name` varchar(255) DEFAULT NULL, UNIQUE KEY `uq_moderator_1` (`faction_name`,`member_name`) );

CREATE TABLE `personal_group` ( `group_name` varchar(255) NOT NULL, `owner_name` varchar(255) DEFAULT NULL, PRIMARY KEY (`group_name`) );

CREATE TABLE `reinforcement` ( `x` int(11) NOT NULL DEFAULT '0', `y` int(11) NOT NULL DEFAULT '0', `z` int(11) NOT NULL DEFAULT '0', `world` varchar(255) NOT NULL DEFAULT '', `material_id` int(11) DEFAULT NULL, `durability` int(11) DEFAULT NULL, `security_level` int(11) DEFAULT NULL, `name` varchar(255) DEFAULT NULL, `version` int(11) NOT NULL DEFAULT '0', `chunk_id` varchar(255) DEFAULT NULL, PRIMARY KEY (`x`,`y`,`z`,`world`), KEY `ix_reinforcement_owner_1` (`name`), KEY `ix_chunk_lookup` (`world`,`x`,`z`), KEY `ix_chunk_id` (`chunk_id`) );
