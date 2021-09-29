CREATE TABLE unit
(
    id text NOT NULL,
    specialization text  NOT NULL,
    destination text NOT NULL,
    available boolean NOT NULL,
    start_date text NOT NULL,
    end_date text NOT NULL,
    unit_strength int NOT NULL,
    organization text NOT NULL,
    CONSTRAINT unit_pkey PRIMARY KEY (id)
);

INSERT INTO unit
SELECT id, specialization, destination, available, start_date, end_date, unit_strength, organization
FROM json_populate_record (NULL::unit,
    '{
        "id":"2fb5ff1c5c07f9b070be10f86287da86",
        "destination":"Halle Westf.",
        "specialization":"Bergung",
        "available":true,
        "start_date":"20210912",
        "end_date":"20210919",
        "unit_strength":7,
        "organization" : "THW"
    }'
);


INSERT INTO unit
SELECT id, specialization, destination, available, start_date, end_date, unit_strength, organization
FROM json_populate_record (NULL::unit,
    '{
       "id":"5bb591cbef1e17560411ea0a91118748",
       "destination":"Halle Westf.",
       "specialization":"Zug Trupp",
       "available":true,
       "start_date":"20210912",
       "end_date":"20210919",
       "unit_strength":5,
       "organization" : "THW"
     }'
);


INSERT INTO unit
SELECT id, specialization, destination, available, start_date, end_date, unit_strength, organization
FROM json_populate_record (NULL::unit,
    '{
       "id":"308ccfb3c58d352a197abd8b23ba445b",
       "destination":"Bielefeld",
       "specialization":"Schwere Bergung",
       "available":true,
       "start_date":"20210912",
       "end_date":"20210919",
       "unit_strength":6,
       "organization" : "THW"
     }'
);

INSERT INTO unit
SELECT id, specialization, destination, available, start_date, end_date, unit_strength, organization
FROM json_populate_record (NULL::unit,
    '{
       "id":"3083fd538eff681d95b5341bef6f72d5",
       "destination":"Bielefeld",
       "specialization":"Brückenbau",
       "available":true,
       "start_date":"20210912",
       "end_date":"20210919",
       "unit_strength":7,
       "organization" : "THW"
     }'
);

INSERT INTO unit
SELECT id, specialization, destination, available, start_date, end_date, unit_strength, organization
FROM json_populate_record (NULL::unit,
    '{
             "id":"8286650a4714ba6bbf44bbe2019d681e",
             "destination":"Bielefeld",
             "specialization":"",
             "available":true,
             "start_date":"20210912",
             "end_date":"20210919",
             "unit_strength":23,
             "organization" : "Bundeswehr"
    }'
);

INSERT INTO unit
SELECT id, specialization, destination, available, start_date, end_date, unit_strength, organization
FROM json_populate_record (NULL::unit,
    '{
             "id":"8286650a4714ba6bbf44sbe2019d685e",
             "destination":"Minden",
             "specialization":"",
             "available":true,
             "start_date":"20210912",
             "end_date":"20210919",
             "unit_strength":40,
             "organization" : "Bundeswehr"
    }'
);

INSERT INTO unit
SELECT id, specialization, destination, available, start_date, end_date, unit_strength, organization
FROM json_populate_record (NULL::unit,
    '{
           "id":"8286650a4714ba6bbf44bbe2019d681e",
           "destination":"Bielefeld",
           "specialization":"",
           "available":true,
           "start_date":"20210912",
           "end_date":"20210919",
           "unit_strength": 23,
           "organization" : "Rotes Kreutz"
    }'
);