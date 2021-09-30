# Documentation

This project is Build for the [Hackathon](https://hackathonamring.de/)
It provides multiple REST-Endpoints for Units that must be organised for one Challange.

## How to Build

```bash

docker-compose up -d --build

```

## API-Documentation
You can use the HTTP File in this Project or use the HTTP-Client of your preference.
The following examples made with curl.

Example Unit
```json
{
"id":"2fb5ff1c5c07f9b070be10f86287da86",
"destination":"Halle Westf.",
"specialization":"Bergung",
"available":true,
"start_date":"20210912",
"end_date":"20210919",
"unit_strength":7,
"organization" : "THW"
}
```
Get available Units
Retuns all Units that have available = true
```bash
curl --location --request GET 'http://localhost:4000/units/available' \
--header 'Content-Type: application/json'
```

Get all Units
Retuns all Units
```bash
curl --location --request GET 'http://localhost:4000/units' \
--header 'Content-Type: application/json'
```

Add new Units
Adds the Posted Unit to the Unit Database
```bash
curl --location --request POST 'http://localhost:4000/units' \
--header 'Content-Type: application/json' \
--data-raw '{
"id":"2fb5ff1c5c07f9b070be10f86287da86",
"destination":"Halle Westf.",
"specialization":"Bergung",
"available":true,
"start_date":"20210912",
"end_date":"20210919",
"unit_strength":7,
"organization" : "THW"
}'
```
