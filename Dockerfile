FROM quay.io/ansible/awx-ee:24.5.0

USER root

RUN yum update -y && \
    yum install -y epel-release && \
    yum install -y nc iputils && \
    yum clean all
RUN setcap cap_net_raw+ep /bin/ping

USER 1000
