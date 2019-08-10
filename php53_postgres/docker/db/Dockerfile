FROM centos:centos6
RUN yum update -y && \
    yum -y install gcc wget

WORKDIR /usr/tmp
RUN wget https://ftp.postgresql.org/pub/source/v8.4.22/postgresql-8.4.22.tar.gz
RUN tar -zxf postgresql-8.4.22.tar.gz
WORKDIR /usr/tmp/
RUN ./postgresql-8.4.22/configure --without-readline --without-zlib
RUN make && \
    make install
ENV PATH /usr/local/pgsql/bin:$PATH

RUN adduser postgres
RUN mkdir /usr/local/pgsql/data && chown postgres /usr/local/pgsql/data
RUN su postgres