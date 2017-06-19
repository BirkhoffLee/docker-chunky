#!/bin/bash

bold=$(tput bold)
suffix=$(tput sgr0)
prefix="$bold== "

echo "${prefix}Updating Chunky....$suffix"
java -Dchunky.home="/data" $JAVA_ARGS -jar /srv/ChunkyLauncher.jar --update

echo "${prefix}Downloading Minecraft ${MINECRAFT_VERSION}....$suffix"
java -Dchunky.home="/data" $JAVA_ARGS -jar /srv/ChunkyLauncher.jar -download-mc $MINECRAFT_VERSION

echo "${prefix}Running.... (Ctrl-C to force stop)$suffix"
exec java -Dchunky.home="/data" $JAVA_ARGS -jar /srv/ChunkyLauncher.jar $@