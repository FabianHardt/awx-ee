FROM quay.io/ansible/awx-ee:24.5.0

USER root

RUN yum update -y && \
    yum install -y epel-release && \
    yum install -y nc && \
    yum install -y iputils

USER 1000
