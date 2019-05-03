FROM openshift3/jenkins-2-rhel7:v3.11.98

COPY contrib/jenkins/* /opt/openshift/configuration/init.groovy.d/

COPY contrib/s2i/run /usr/libexec/s2i/run

USER root


ENV JAVA_HOME=/usr/lib/jvm/jre

RUN chmod +x /usr/libexec/s2i/run

ENV TZ="Europe/Berlin"

USER 1001
