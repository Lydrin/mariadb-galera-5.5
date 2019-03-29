FROM ubuntu:trusty

RUN  sudo apt-get update \
    && sudo apt install -q -y software-properties-common \
    && sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db \
    && sudo add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://mariadb.mirrors.ovh.net/MariaDB/repo/5.5/ubuntu trusty main' \
    && sudo apt-get update \
    && sudo apt-get install -q -y mariadb-galera-server mariadb-client galera

EXPOSE 3306
COPY my.cnf /etc/mysql/my.cnf
CMD ["mysqld"]