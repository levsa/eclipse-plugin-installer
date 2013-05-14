#!/bin/bash

#this seems cool, with many repos:
#https://gist.github.com/1513071

#comma separated list of features, suffixed by .feature.group/version (version optional?)
. features/$1
echo $FEATURES

echo /opt/eclipse/eclipse -nosplash -application org.eclipse.equinox.p2.director -repository "$ECLIPSE_REPOS" -destination /opt/eclipse -uninstallIU "$FEATURES"
/opt/eclipse/eclipse -nosplash -application org.eclipse.equinox.p2.director -repository "$ECLIPSE_REPOS" -destination /opt/eclipse -uninstallIU "$FEATURES"
