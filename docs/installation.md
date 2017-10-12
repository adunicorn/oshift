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

Open a terminal in the `loader` pod

Then generate the schema with:

```
$ python /app/execsql.py $POSTGRESQL_SERVICE_HOST /app/sql/create-schema.sql
```

To insert a number of sample rows, run:

```
$ python /app/execsql.py $POSTGRESQL_SERVICE_HOST /app/sql/values.sql
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

