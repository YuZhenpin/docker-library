#!/bin/bash
set -e

j2 /templates/basic-security.groovy.j2 > /usr/share/jenkins/ref/init.groovy.d/basic-security.groovy
j2 /templates/mq-notifier.xml.j2 > /usr/share/jenkins/ref/mq-notifier.xml

echo "$@"
exec "$@"
