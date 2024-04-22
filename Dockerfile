# Jenkins with Python3
# Build: docker build -t jenkins-python .
FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt-get install -y python3 python3-pip
