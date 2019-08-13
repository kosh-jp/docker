FROM centos:centos6
RUN yum update -y && \
    yum -y install php php-cli php-common php-gd php-mbstring php-pgsql php-pdo
CMD ["apachectl", "-D", "FOREGROUND"]