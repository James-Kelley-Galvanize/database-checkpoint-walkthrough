DROP DATABASE IF EXISTS vacations;
CREATE DATABASE vacations;
DROP TABLE IF EXISTS destinations;
DROP TABLE IF EXISTS airlines;
DROP TABLE IF EXISTS airlines_destinations;

CREATE TABLE destinations (
  name VARCHAR(255) NOT NULL,
  average_temp INT NOT NULL,
  cost_of_flight INT NOT NULL,
  has_beach BOOLEAN NOT NULL,
  has_mountains BOOLEAN NOT NULL,
  id serial PRIMARY KEY
);

CREATE TABLE airlines (
  name VARCHAR(255) NOT NULL,
  id serial PRIMARY KEY
);

CREATE TABLE airlines_destinations (
  airline VARCHAR(255) NOT NULL,
  destination VARCHAR(255) NOT NULL,
  id serial PRIMARY KEY
);

INSERT INTO destinations (name, average_temp, cost_of_flight,  has_beach, has_mountains) VALUES ('Thailand', 82, 765, TRUE,TRUE), ('Minnesota',41,235,FALSE,FALSE), ('New Zealand',66,433,TRUE,TRUE), ('England',45,290,FALSE,FALSE), ('Tristan da Cunha',59,1304,TRUE,TRUE);

INSERT INTO airlines (name) VALUES ('Spirit'), ('Lufthansa'), ('Delta'), ('Southwest');

INSERT INTO airlines_destinations (airline, destination) VALUES ('Spirit', 'New Zealand'), ('Spirit', 'Scotland'), ('Lufthansa', 'Tristan da Cunha'), ('Lufthansa', 'Scotland'), ('Lufthansa', 'Thailand'), ('Delta', 'Thailand'), ('Delta', 'Minnesota'), ('Delta', 'England'), ('Delta', 'Scotland'), ('Southwest', 'New Zealand'), ('Southwest', 'Tristan da Cunha'), ('Southwest', 'Minnesota');