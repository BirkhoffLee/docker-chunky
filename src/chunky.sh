#!/bin/bash
java -Dchunky.home="/data" $JAVA_ARGS -jar /srv/ChunkyLauncher.jar --update
java -Dchunky.home="/data" $JAVA_ARGS -jar /srv/ChunkyLauncher.jar -download-mc $MINECRAFT_VERSION
exec java -Dchunky.home="/data" $JAVA_ARGS -jar /srv/ChunkyLauncher.jar $@