all: craftbukkit.jar plugins/PhysicalShop.jar plugins/WorldBorder.jar plugins/Citadel.1_5_2_R3.v2_2_6.jar plugins/RandomSpawn-2.6.jar plugins/PrisonPearl.1_5_2_R3.v1_6_3.jar
	mysql -uroot -e "DROP USER 'bukkit'@'localhost';"
	mysql -uroot -e "CREATE USER 'bukkit'@'localhost';"
	mysql -uroot -e "CREATE DATABASE IF NOT EXISTS bukkit;"
	mysql -uroot -e "GRANT ALL ON bukkit.* to 'bukkit'@'localhost';"

craftbukkit.jar:
	wget http://dl.bukkit.org/downloads/craftbukkit/get/02110_1.5.2-R0.1/craftbukkit-beta.jar
	mv craftbukkit-beta.jar craftbukkit.jar

plugins/PhysicalShop.jar:
	wget -P plugins/ http://dev.bukkit.org/media/files/666/637/PhysicalShop.jar

plugins/WorldBorder.jar:
	wget -P plugins/ http://dev.bukkit.org/media/files/696/223/WorldBorder.jar 

plugins/RandomSpawn-2.6.jar:
	wget -P plugins/ http://dev.bukkit.org/media/files/696/56/RandomSpawn-2.6.jar

plugins/Citadel.1_5_2_R3.v2_2_6.jar:
	wget -P plugins/ http://dev.bukkit.org/media/files/701/599/Citadel.1_5_2_R3.v2_2_6.jar
	mysql -ubukkit bukkit < plugins/Citadel/database_tables.sql

plugins/PrisonPearl.1_5_2_R3.v1_6_3.jar:
	wget -P plugins/ http://dev.bukkit.org/media/files/701/596/PrisonPearl.1_5_2_R3.v1_6_3.jar

clean:
	rm -rf world \
		world_nether \
		world_the_end \
		help.yml \
		server.log \
		server.properties \
		craftbukkit.jar \
		plugins/*.jar \
		finished
