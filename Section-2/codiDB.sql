BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "student" (
	"studentNo"	INT,
	"SSN"	INT,
	"name"	TEXT,
	"studentDOB"	date,
	"skills"	VARCHAR,
	"cohortId"	INT,
	FOREIGN KEY("cohortId") REFERENCES "cohort",
	PRIMARY KEY("studentNo")
);
CREATE TABLE IF NOT EXISTS "cohort" (
	"cohortId"	INT,
	"number"	INT,
	"start_date"	date,
	"end_date"	date,
	"topics"	INT,
	FOREIGN KEY("topics") REFERENCES "topic",
	PRIMARY KEY("cohortId")
);
CREATE TABLE IF NOT EXISTS "office" (
	"officeId"	INT,
	PRIMARY KEY("officeId")
);
CREATE TABLE IF NOT EXISTS "mentor" (
	"id"	INT,
	"mentorName"	text,
	"DOB"	date,
	"seniorityLevel"	text,
	"salary"	float,
	"officeId"	INT,
	"SSN"	INT,
	"depId"	INT,
	FOREIGN KEY("officeId") REFERENCES "topic",
	PRIMARY KEY("id"),
	FOREIGN KEY("depId") REFERENCES "department"
);
CREATE TABLE IF NOT EXISTS "topic" (
	"topicId"	INT,
	"title"	text,
	"description"	varchar(100),
	"id"	INT,
	FOREIGN KEY("id") REFERENCES "mentor",
	PRIMARY KEY("topicId")
);
CREATE TABLE IF NOT EXISTS "department" (
	"depId"	INT,
	"depName"	text,
	"officeId"	INT,
	"topicId"	INT,
	PRIMARY KEY("depId"),
	FOREIGN KEY("topicId") REFERENCES "topic",
	FOREIGN KEY("officeId") REFERENCES "office"
);
INSERT INTO "office" VALUES (1);
INSERT INTO "office" VALUES (2);
INSERT INTO "office" VALUES (3);
INSERT INTO "office" VALUES (4);
COMMIT;
