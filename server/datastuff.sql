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

INSERT INTO table_name (level_name, level_type, gd_level_id, verification_video, creators, verifier)
VALUES ($1, $2, $3, $4, $5, $6);