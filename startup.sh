#!/bin/sh

echo Welcome to fabric8: http://fabric8.io/
echo
echo Starting Fabric8 container: $FABRIC8_KARAF_NAME 
echo Executing Java main: $FABRIC8_JAVA_MAIN
echo ZooKeeper: $FABRIC8_ZOOKEEPER_URL using environment: $FABRIC8_FABRIC_ENVIRONMENT

# TODO allow this to be disabled via an env var
service sshd start

sudo -u fabric8 java -cp lib/* $FABRIC8_JAVA_MAIN
