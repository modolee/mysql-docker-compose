FROM mysql:5.7
COPY ./conf/init/privileges.sql /docker-entrypoint-initdb.d/