FROM ubuntu-blueocean

USER root

# Setup
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv E56151BF

# Add the repository
RUN echo "deb http://repos.mesosphere.com/ubuntu xenial main" | \
    tee /etc/apt/sources.list.d/mesosphere.list
RUN apt-get -y update
RUN apt-get -y install mesos
