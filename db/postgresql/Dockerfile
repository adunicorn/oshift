FROM centos/postgresql-95-centos7:9.5
LABEL maintainer "Arialdo Martini <arialdomartini@gmail.com>"
ENV POSTGRESQL_USER user
ENV POSTGRESQL_PASSWORD user
ENV POSTGRESQL_DATABASE issuing
ENV PGPASSWORD=user



# Create the schema
COPY ./sql /sql
RUN /opt/rh/rh-postgresql95/root/usr/bin/psql -U user -d issuing -a -f /sql/create-schema.sql

EXPOSE 5432