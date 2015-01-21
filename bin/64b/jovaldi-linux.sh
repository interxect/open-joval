#!/bin/sh
# Copyright (C) 2011 jOVAL.org.  All rights reserved.
# This software is licensed under the AGPL 3.0 license available at http://www.joval.org/agpl_v3.txt
#
export INSTALL_DIR=$(dirname $0)/../..
export LIB=${INSTALL_DIR}/lib
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
export JMEM=-Xmx2048m
${JAVA_HOME}/bin/java ${JMEM} "-Djovaldi.baseDir=${INSTALL_DIR}" -cp "${LIB}/*" org.joval.scap.oval.di.Main "$@"
