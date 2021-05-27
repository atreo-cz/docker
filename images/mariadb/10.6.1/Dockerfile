FROM mariadb:10.6.1-focal

ENV PUID=501
ENV PGID=20
ENV TZ=Europe/Prague
ENV MYSQL_DATABASE=app
ENV MYSQL_USER=root
ENV MYSQL_ROOT_HOST=127.0.0.1
ENV MYSQL_ROOT_PASSWORD=toor
ENV MYSQL_PASSWORD=toor

CMD ["mysqld", "--default-authentication-plugin=mysql_native_password"]
