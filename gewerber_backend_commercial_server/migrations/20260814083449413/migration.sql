BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "commercial_waitlist_entry" (
    "id" bigserial PRIMARY KEY,
    "email" text NOT NULL,
    "locale" text NOT NULL DEFAULT 'de'::text,
    "source" text NOT NULL DEFAULT 'website'::text,
    "referrer" text,
    "utmSource" text,
    "utmMedium" text,
    "utmCampaign" text,
    "businessType" text,
    "status" text NOT NULL DEFAULT 'pending'::text,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "invitedAt" timestamp without time zone
);

-- Indexes
CREATE UNIQUE INDEX "commercial_waitlist_entry__email__unique_idx" ON "commercial_waitlist_entry" USING btree ("email");


--
-- MIGRATION VERSION FOR gewerber_commercial
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('gewerber_commercial', '20260814083449413', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260814083449413', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20260416151914983-insights-perf', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260416151914983-insights-perf', "timestamp" = now();


COMMIT;
