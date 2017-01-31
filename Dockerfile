FROM registry.access.redhat.com/rhel7
MAINTAINER Nico

#RUN yum -y install libaio1 unzip rlwrap
RUN yum -y install unzip
#ADD oracle-instantclient12.1-sqlplus-12.1.0.2.0-1.x86_64.rpm /
ADD instantclient-sqlplus-linux.x64-12.1.0.2.0.zip /

RUN unzip instantclient-sqlplus-linux.x64-12.1.0.2.0.zip

RUN LD_LIBRARY_PATH=/instantclient-sqlplus-linux.x64-12.1.0.2.0:${LD_LIBRARY_PATH}
RUN export LD_LIBRARY_PATH

RUN PATH=/instantclient-sqlplus-linux.x64-12.1.0.2.0:${PATH}
RUN export PATH

RUN QLPATH=/instantclient-sqlplus-linux.x64-12.1.0.2.0:${SQLPATH}
RUN export SQLPATH

# CMD /instantclient_12_1/sqlplus <user>/<password>@xxx:1521/ORCL
CMD sleep 1000000;
