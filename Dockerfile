FROM mysql:5.7.16

MAINTAINER phpramework <phpramework@gmail.com>

ENV MYSQL_ROOT_PASSWORD=my_root \
    MYSQL_DATABASE=hello_world \
    MYSQL_USER=benchmarkdbuser \
    MYSQL_PASSWORD=benchmarkdbpass

COPY 99-charset.cnf /etc/mysql/conf.d/99-charset.cnf
COPY create.sql /docker-entrypoint-initdb.d/create.sql
