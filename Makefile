#
#
.PHONY: ubuntu-openjdk
ubuntu-openjdk:
	docker build -t ubuntu-openjdk ./ubuntu-openjdk

.PHONY: ubuntu-jenkins
ubuntu-jenkins:
	docker build -t ubuntu-jenkins ./ubuntu-jenkins

.PHONY: ubuntu-blueocean
ubuntu-blueocean:
	docker build -t ubuntu-blueocean ./ubuntu-blueocean

.PHONY: ubuntu-jenkins-mesos
ubuntu-jenkins-mesos:
	docker build -t ubuntu-jenkins-mesos ./ubuntu-jenkins-mesos

.PHONY: jenkins-master
jenkins-master:
	docker build -t jenkins-master ./jenkins-master

