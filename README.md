# DO NOT USE IN PROD, PASSWORD IS HARDCODED!

## To run

`$ docker-compose up`

# (1)import the .sql file to the database
`$ psql -U postgres -d db < test-data/weather.sql`

# (2) import data from .csv files to the database
`$ psql -U postgres -d db -c "\COPY locations FROM test-data/weather_small_locations.csv CSV"`

`$ psql -U postgres -d db -c "\COPY conditions FROM test-data/weather_small_conditions.csv CSV"`

# (3) Log in to grafana 
- at http://localhost:3000
- Create a postgresql connector and connect to `timescaledb:5432` with defined password
- Create a dashboard
