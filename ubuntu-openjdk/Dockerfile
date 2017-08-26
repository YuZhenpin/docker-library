FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install -y software-properties-common python-software-properties \
    && add-apt-repository -y ppa:openjdk-r/ppa \
    && apt-get update \
    && apt-get install -y openjdk-8-jdk-headless ca-certificates-java \
    && rm -rf /var/lib/apt/lists/* \
    && update-alternatives --config java \
    && update-alternatives --config javac

