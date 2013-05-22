all: finished

craftbukkit.jar:
	wget http://dl.bukkit.org/downloads/craftbukkit/get/02110_1.5.2-R0.1/craftbukkit-beta.jar
	mv craftbukkit-beta.jar craftbukkit.jar

plugins/PhysicalShop.jar:
	wget -P plugins/ http://dev.bukkit.org/media/files/666/637/PhysicalShop.jar

plugins/WorldBorder.jar:
	wget -P plugins/ http://dev.bukkit.org/media/files/696/223/WorldBorder.jar 

finished: craftbukkit.jar plugins/PhysicalShop.jar plugins/WorldBorder.jar
	touch finished
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
