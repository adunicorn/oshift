CREATE TABLE CardHolder (
       Id    varchar(36) PRIMARY KEY,
       FirstName   varchar(100) NOT NULL CHECK (FirstName <> ''),
       LastName   varchar(100) NOT NULL CHECK (FirstName <> '')
);

insert into CardHolder(Id, FirstName, LastName) VALUES ('42', 'Arialdo', 'Martini');
