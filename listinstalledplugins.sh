#!/bin/bash

plugins=`/opt/eclipse/eclipse -nosplash -application org.eclipse.equinox.p2.director -destination /opt/eclipse -listInstalledRoots |grep "/"`
for x in $plugins; do echo $x|awk -F '/' '{print $1}'; done
