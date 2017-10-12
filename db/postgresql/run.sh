docker run -d --name postgresql \
       -e POSTGRESQL_USER=user \
       -e POSTGRESQL_PASSWORD=user \
       -e POSTGRESQL_DATABASE=issuing \
       -p 5432:5432 \
       centos/postgresql-95-centos7:9.5
