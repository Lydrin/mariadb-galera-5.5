FROM ubuntu:trusty

RUN  sudo apt-get update \
    && sudo apt install -q -y software-properties-common \
    && sudo add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://mariadb.mirrors.ovh.net/MariaDB/repo/5.5/ubuntu trusty main' \
    && sudo apt-get update \
    && sudo apt-get install -q -y mariadb-galera-server mariadb-client galera

EXPOSE 3306
CMD ["mysqld"]