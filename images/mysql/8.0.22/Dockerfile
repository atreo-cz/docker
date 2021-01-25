FROM mysql:8.0.22

ENV MYSQL_DATABASE=app
ENV MYSQL_ROOT_PASSWORD=toor

WORKDIR /var/lib/mysql

CMD ["mysqld", "--default-authentication-plugin=mysql_native_password"]
