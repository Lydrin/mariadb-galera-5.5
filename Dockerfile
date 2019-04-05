FROM ubuntu:18.04

RUN  apt-get update \
    && apt install -q -y software-properties-common \
    && apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db \
    && add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://mariadb.mirrors.ovh.net/MariaDB/repo/5.5/ubuntu trusty main' \
    && apt-get update \
    && apt-get install -q -y mariadb-galera-server mariadb-client galera

EXPOSE 3306