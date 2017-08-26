FROM ubuntu-jenkins

USER root

# Add the docker binary so running Docker commands from the master works nicely
RUN install-plugins.sh workflow-job antisamy-markup-formatter matrix-auth blueocean:$BLUEOCEAN_VERSION mesos

USER jenkins
