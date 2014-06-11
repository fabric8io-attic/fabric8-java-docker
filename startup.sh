#!/bin/sh

echo Welcome to fabric8: http://fabric8.io/
echo
echo Environment variables:
env | sort 
echo

# TODO allow this to be disabled via an env var
#service sshd start

echo "executing java $FABRIC8_JAVA_AGENT $FABRIC8_JVM_ARGS -cp "classes:lib/*" $FABRIC8_JAVA_MAIN $FABRIC8_MAIN_ARGS"
java $FABRIC8_JAVA_AGENT $FABRIC8_JVM_ARGS -cp "classes:lib/*" $FABRIC8_JAVA_MAIN $FABRIC8_MAIN_ARGS
