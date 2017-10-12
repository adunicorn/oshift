# Installation

Setup the cluster with

```
./setup.sh
```

Install OpenShift running

```
./setup-cluster.sh
```

## Database creation

In the OpenShift the PostgreSQL db will ge generated empty.

Run an image with python and `psycopg2`:

```
db/postgresql/build-db.sh
```

Then generate the schema with:

```
$ python /app/execsql.py 192.168.1.73 /app/sql/create-schema.sql
```

To insert a number of sample rows, run:

```
$ python /app/execsql.py postgres_ip /app/sql/values.sql
```

New random values can be generated with: 

```
python db/postgresql/generate-random-values.py > db/postgresql/sql/values.sql
```

## Login

| Username | Password    |
| -------- | ----------- |
| admin    | OriginAdmin |
| user     | OriginUser  |

