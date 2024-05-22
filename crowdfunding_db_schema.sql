-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

DROP TABLE IF EXISTS "Contacts", "Category", "Subcategory", "Campaign";

CREATE TABLE "Contacts" (
    "Contact_id" INT   NOT NULL,
    "First_name" varchar(100)   NOT NULL,
    "Last_name" varchar(100)   NOT NULL,
    "Email" varchar(100)   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "Contact_id"
     )
);

CREATE TABLE "Category" (
    "Category_id" varchar(10)   NOT NULL,
    "Category" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "Category_id"
     )
);

CREATE TABLE "Subcategory" (
    "Subcategory_id" varchar(30)   NOT NULL,
    "Subcategory" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "Subcategory_id"
     )
);

CREATE TABLE "Campaign" (
    "cf_id" INT   NOT NULL,
    "Contact_id" INT   NOT NULL,
    "Company_name" varchar(50)   NOT NULL,
    "Description" varchar(150)   NOT NULL,
    "Goal" money   NOT NULL,
    "Pledged" money   NOT NULL,
    "Outcome" varchar(50)   NOT NULL,
    "Backers_count" INT   NOT NULL,
    "Country" varchar(10)   NOT NULL,
    "Currency" varchar(10)   NOT NULL,
    "Launched_date" date   NOT NULL,
    "End_date" date   NOT NULL,
    "Category_id" varchar(10)   NOT NULL,
    "Subcategory_id" varchar(30)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_Contact_id" FOREIGN KEY("Contact_id")
REFERENCES "Contacts" ("Contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_Category_id" FOREIGN KEY("Category_id")
REFERENCES "Category" ("Category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_Subcategory_id" FOREIGN KEY("Subcategory_id")
REFERENCES "Subcategory" ("Subcategory_id");

