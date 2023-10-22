-- CreateTable
CREATE TABLE "agentname" (
    "name_id" INTEGER NOT NULL,
    "firstname" VARCHAR(255) NOT NULL,
    "lastname" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255),
    "phone" CHAR(13) NOT NULL,
    "pollingunit_uniqueid" INTEGER NOT NULL,

    CONSTRAINT "agentname_pkey" PRIMARY KEY ("name_id")
);

-- CreateTable
CREATE TABLE "announced_lga_results" (
    "result_id" INTEGER NOT NULL,
    "lga_name" VARCHAR(50) NOT NULL,
    "party_abbreviation" CHAR(4) NOT NULL,
    "party_score" INTEGER NOT NULL,
    "entered_by_user" VARCHAR(50) NOT NULL,
    "date_entered" DATE NOT NULL,
    "user_ip_address" VARCHAR(50) NOT NULL,

    CONSTRAINT "announced_lga_results_pkey" PRIMARY KEY ("result_id")
);

-- CreateTable
CREATE TABLE "announced_pu_results" (
    "result_id" INTEGER NOT NULL,
    "polling_unit_uniqueid" VARCHAR(50) NOT NULL,
    "party_abbreviation" CHAR(4) NOT NULL,
    "party_score" INTEGER NOT NULL,
    "entered_by_user" VARCHAR(50) NOT NULL,
    "date_entered" DATE NOT NULL,
    "user_ip_address" VARCHAR(50) NOT NULL,

    CONSTRAINT "announced_pu_results_pkey" PRIMARY KEY ("result_id")
);

-- CreateTable
CREATE TABLE "announced_state_results" (
    "result_id" INTEGER NOT NULL,
    "state_name" VARCHAR(50) NOT NULL,
    "party_abbreviation" CHAR(4) NOT NULL,
    "party_score" INTEGER NOT NULL,
    "entered_by_user" VARCHAR(50) NOT NULL,
    "date_entered" DATE NOT NULL,
    "user_ip_address" VARCHAR(50) NOT NULL,

    CONSTRAINT "announced_state_results_pkey" PRIMARY KEY ("result_id")
);

-- CreateTable
CREATE TABLE "announced_ward_results" (
    "result_id" INTEGER NOT NULL,
    "ward_name" VARCHAR(50) NOT NULL,
    "party_abbreviation" CHAR(4) NOT NULL,
    "party_score" INTEGER NOT NULL,
    "entered_by_user" VARCHAR(50) NOT NULL,
    "date_entered" DATE NOT NULL,
    "user_ip_address" VARCHAR(50) NOT NULL,

    CONSTRAINT "announced_ward_results_pkey" PRIMARY KEY ("result_id")
);

-- CreateTable
CREATE TABLE "lga" (
    "uniqueid" INTEGER NOT NULL,
    "lga_id" INTEGER NOT NULL,
    "lga_name" VARCHAR(50) NOT NULL,
    "state_id" INTEGER NOT NULL,
    "lga_description" TEXT,
    "entered_by_user" VARCHAR(50) NOT NULL,
    "date_entered" DATE NOT NULL,
    "user_ip_address" VARCHAR(50) NOT NULL,

    CONSTRAINT "lga_pkey" PRIMARY KEY ("uniqueid")
);

-- CreateTable
CREATE TABLE "party" (
    "id" INTEGER NOT NULL,
    "partyid" VARCHAR(11) NOT NULL,
    "partyname" VARCHAR(11) NOT NULL,

    CONSTRAINT "party_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "polling_unit" (
    "uniqueid" INTEGER NOT NULL,
    "polling_unit_id" INTEGER NOT NULL,
    "ward_id" INTEGER NOT NULL,
    "lga_id" INTEGER NOT NULL,
    "uniquewardid" INTEGER,
    "polling_unit_number" VARCHAR(50),
    "polling_unit_name" VARCHAR(50),
    "polling_unit_description" TEXT,
    "lat" VARCHAR(255),
    "long" VARCHAR(255),
    "entered_by_user" VARCHAR(50),
    "date_entered" DATE,
    "user_ip_address" VARCHAR(50),

    CONSTRAINT "polling_unit_pkey" PRIMARY KEY ("uniqueid")
);

-- CreateTable
CREATE TABLE "states" (
    "state_id" INTEGER NOT NULL,
    "state_name" VARCHAR(50) NOT NULL,

    CONSTRAINT "states_pkey" PRIMARY KEY ("state_id")
);

-- CreateTable
CREATE TABLE "ward" (
    "uniqueid" INTEGER NOT NULL,
    "ward_id" INTEGER NOT NULL,
    "ward_name" VARCHAR(50) NOT NULL,
    "lga_id" INTEGER NOT NULL,
    "ward_description" TEXT,
    "entered_by_user" VARCHAR(50) NOT NULL,
    "date_entered" DATE NOT NULL,
    "user_ip_address" VARCHAR(50) NOT NULL,

    CONSTRAINT "ward_pkey" PRIMARY KEY ("uniqueid")
);
