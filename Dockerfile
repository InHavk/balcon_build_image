FROM centos:7
MAINTAINER Anton Trusov <inhavk@gmail.com>


RUN \
  yum -y install curl git epel-release && \
  yum -y install python36 python36-setuptools && \
  curl https://bootstrap.pypa.io/get-pip.py -o - | /usr/bin/python3 && \
  pip3 install twine && \
  yum clean all
