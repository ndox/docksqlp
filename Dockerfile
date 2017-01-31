FROM registry.access.redhat.com/rhel7
MAINTAINER Nico

RUN yum -y install libaio1 unzip rlwrap
ADD instantclient-basic-linux.x64-12.1.0.2.0.zip /

RUN unzip instantclient-basic-linux.x64-12.1.0.2.0.zip


ENV LD_LIBRARY_PATH instantclient_12_1

# CMD /instantclient_12_1/sqlplus <user>/<password>@xxx:1521/ORCL
CMD sleep 1000000;
