FROM registry.access.redhat.com/jboss-eap-7/eap71-openshift
ADD standalone-full-poc.xml /opt/eap/standalone/configuration/
RUN /opt/eap/bin/add-user.sh admin admin@123 --silent
CMD ["/opt/eap/bin/standalone.sh", "-c", "standalone-full-poc.xml", "-b", "0.0.0.0","-bmanagement", "0.0.0.0"]


