FROM centos:7

MAINTAINER edison@amixsi.com.br

ADD install.sh /tmp/
RUN /tmp/install.sh && rm /tmp/install.sh

WORKDIR /wrk
