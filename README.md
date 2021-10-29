

## QUERIES

1. SELECT * FROM destinations;
2. SELECT * FROM destinations WHERE has_beach=TRUE;
3. SELECT * FROM destinations WHERE average_temp>60;
4. SELECT * FROM destinations WHERE has_beach=TRUE AND has_mountains=TRUE;
5. SELECT * FROM destinations WHERE cost_of_flight<500 AND has_mountains=TRUE;
6. INSERT INTO destinations (name, average_temp, cost_of_flight,  has_beach, has_mountains) VALUES ('The Bahamas', 78, 345, TRUE,FALSE);
7. UPDATE destinations SET cost_of_flight=1000 WHERE name='New Zealand';
8. DELETE FROM destinations WHERE name='Minnesota';
**If using pre-seeded join table, ALSO** DELETE FROM airlines_destinations WHERE destination='Minnesota';
9. UPDATE destinations SET name='Scotland' WHERE name='England';
**If using pre-seeded join table, ALSO** DELETE FROM airlines_destinations WHERE destination='England';
10. See seed script for single-line command that could be used here instead of via the seed script.  If so, 'England' should be changed to 'Scotland' before using.
11. SELECT * FROM airlines WHERE name IN (SELECT airline FROM airlines_destinations WHERE destination='New Zealand');
12. SELECT * FROM airlines WHERE name NOT IN (SELECT airline FROM airlines_destinations WHERE destination='Scotland');
13. SELECT destinations.name, destinations.average_temp, destinations.cost_of_flight, destinations.has_beach, destinations.has_mountains, airlines.name AS airline_name FROM destinations JOIN airlines ON airlines.name IN (SELECT airline FROM airlines_destinations WHERE airlines_destinations.destination = destinations.name);
**OR** 
SELECT destinations.name, destinations.average_temp, destinations.cost_of_flight, destinations.has_beach, destinations.has_mountains, airlines.name AS airline_name FROM destinations, airlines WHERE airlines.name IN (SELECT airline FROM airlines_destinations WHERE airlines_destinations.destination = destinations.name);