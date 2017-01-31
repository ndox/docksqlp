FROM registry.access.redhat.com/rhel7
MAINTAINER Nico

#RUN yum -y install libaio1 unzip rlwrap
#ADD oracle-instantclient12.1-sqlplus-12.1.0.2.0-1.x86_64.rpm /
ADD instantclient-sqlplus-linux.x64-12.1.0.2.0.zip /tmp

RUN unzip /tmp/instantclient-basic-linux.x64-12.1.0.2.0.zip -d /tmp

# CMD /instantclient_12_1/sqlplus <user>/<password>@xxx:1521/ORCL
CMD sleep 1000000;
