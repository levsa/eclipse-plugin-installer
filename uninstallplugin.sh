#!/bin/bash

#this seems cool, with many repos:
#https://gist.github.com/1513071

#comma separated list of features, suffixed by .feature.group/version (version optional?)
. features/$1
echo $FEATURES

ECLIPSE_DIR=/Applications/eclipse

echo ${ECLIPSE_DIR}/eclipse -nosplash -application org.eclipse.equinox.p2.director -repository "$ECLIPSE_REPOS" -destination ${ECLIPSE_DIR} -uninstallIU "$FEATURES"
${ECLIPSE_DIR}/eclipse -nosplash -application org.eclipse.equinox.p2.director -repository "$ECLIPSE_REPOS" -destination ${ECLIPSE_DIR} -uninstallIU "$FEATURES"
