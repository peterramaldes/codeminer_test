CREATE DATABASE codeminer_test;
CREATE USER codeminer_user WITH PASSWORD 'codeminer_pass';
GRANT ALL PRIVILEGES ON DATABASE "codeminer_test" to codeminer_user;

\c codeminer_test;

create table sometable(id int, name char(10));