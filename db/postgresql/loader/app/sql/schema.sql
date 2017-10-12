DROP TABLE IF EXISTS transactions;

CREATE TABLE transactions (
  id           varchar(36)  PRIMARY KEY,
  product      varchar(100) NOT NULL,
  amount       varchar(100) NOT NULL
);
