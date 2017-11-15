FROM jenkins/jenkins:lts

LABEL maintainer="Thiago Retondar - <https://github.com/thiagoretondar>"

USER root

RUN apt-get update

USER jenkins
