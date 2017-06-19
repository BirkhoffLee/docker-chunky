#!/bin/bash
exec java -Dchunky.home="/data" $JAVA_ARGS -jar /srv/ChunkyLauncher.jar --update
exec java -Dchunky.home="/data" $JAVA_ARGS -jar /srv/ChunkyLauncher.jar -download-mc $MINECRAFT_VERSION
exec java -Dchunky.home="/data" $JAVA_ARGS -jar /srv/ChunkyLauncher.jar $@