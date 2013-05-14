#!/bin/bash

#comma separated list of repos
#repositories="http://download.eclipse.org/releases/indigo/"
#repositories=http://dist.springsource.org/release/GRECLIPSE/e3.7/
#repositories=http://dist.springsource.org/release/GRECLIPSE/e4.2/
. features/$1

plugins=`/opt/eclipse/eclipse -nosplash -application org.eclipse.equinox.p2.director -repository $ECLIPSE_REPOS -list|grep "feature.group"`
for x in $plugins; do echo $x|awk -F '=' '{print $1}'; done
