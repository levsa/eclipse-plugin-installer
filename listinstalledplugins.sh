#!/bin/bash

ECLIPSE_DIR=/Applications/eclipse

plugins=`${ECLIPSE_DIR}/eclipse -nosplash -application org.eclipse.equinox.p2.director -destination ${ECLIPSE_DIR} -listInstalledRoots |grep "/"`
for x in $plugins; do echo $x|awk -F '/' '{print $1}'; done
