CREATE TYPE level_type_enum AS ENUM ('Classic', 'Challenge', 'Platformer');

CREATE TABLE levels_table (
    id SERIAL PRIMARY KEY,
    level_name VARCHAR(20) NOT NULL,
    level_type level_type_enum NOT NULL,
    gd_level_id TEXT UNIQUE NOT NULL,
    verification_video TEXT UNIQUE NOT NULL,
    creators JSON,
    verifier TEXT NOT NULL
);

