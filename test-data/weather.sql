DROP TABLE IF EXISTS "locations";
CREATE TABLE "locations"(
    device_id    TEXT,
    location     TEXT,
    environment  TEXT
);

DROP TABLE IF EXISTS "conditions";
CREATE TABLE "conditions"(
    time         TIMESTAMP WITH TIME ZONE NOT NULL,
    device_id    TEXT,
    temperature  NUMERIC,
    humidity     NUMERIC
);

CREATE INDEX ON "conditions"(time DESC);
CREATE INDEX ON "conditions"(device_id, time DESC);
-- 86400000000 is in usecs and is equal to 1 day
SELECT create_hypertable('conditions', 'time', chunk_time_interval => 86400000000);
