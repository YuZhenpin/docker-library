FROM ubuntu-jenkins-mesos

ARG ADMIN_USERNAME
ARG ADMIN_PASSWORD

ARG MQ_URL
ARG MQ_USERNAME
ARG MQ_PASSWORD
ARG MQ_EXCHANGE_NAME
ARG MQ_VIRTUAL_HOST
ARG MQ_ROUTING_KEY

ENV ADMIN_USERNAME=${ADMIN_USERNAME:-root}
ENV ADMIN_PASSWORD=${ADMIN_PASSWORD:-admin}
ENV MQ_URL=${MQ_URL}
ENV MQ_USERNAME=${MQ_USERNAME}
ENV MQ_PASSWORD=${MQ_PASSWORD}
ENV MQ_EXCHANGE_NAME=${MQ_EXCHANGE_NAME}
ENV MQ_VIRTUAL_HOST=${MQ_VIRTUAL_HOST}
ENV MQ_ROUTING_KEY=${MQ_ROUTING_KEY}

USER root

COPY entrypoint.sh /

RUN apt-get update && apt-get install -y python-setuptools \
    && rm -rf /var/lib/apt/lists/* \
    && easy_install j2cli \
    && chmod +x /entrypoint.sh

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

# copy custom built plugins
COPY plugins/*.hpi /usr/share/jenkins/ref/plugins/

# so we can use jenkins cli
COPY config/jenkins.properties /usr/share/jenkins/ref/

# remove executors in master
COPY config/*.groovy /usr/share/jenkins/ref/init.groovy.d/

# lets configure Jenkins with some defaults
COPY config/*.xml /usr/share/jenkins/ref/

COPY templates/*.j2 /templates/

# Disable Jenkins install wizard
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

ENTRYPOINT ["/entrypoint.sh", "/bin/tini", "--", "/usr/local/bin/jenkins.sh"]

USER jenkins
