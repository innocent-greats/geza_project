--
-- Class LocationCoords as table location_coords
--

CREATE TABLE "location_coords" (
  "id" serial,
  "latitude" double precision NOT NULL,
  "longitude" double precision NOT NULL
);

ALTER TABLE ONLY "location_coords"
  ADD CONSTRAINT location_coords_pkey PRIMARY KEY (id);


--
-- Class Person as table person
--

CREATE TABLE "person" (
  "id" serial,
  "firstName" text NOT NULL,
  "lastName" text NOT NULL,
  "userName" text NOT NULL,
  "password" text,
  "phone" text NOT NULL,
  "location" text NOT NULL
);

ALTER TABLE ONLY "person"
  ADD CONSTRAINT person_pkey PRIMARY KEY (id);

CREATE INDEX user_name_idx ON "person" USING btree ("userName");


--
-- Class Comment as table comment
--

CREATE TABLE "comment" (
  "id" serial,
  "comment" text NOT NULL,
  "dateCreated" timestamp without time zone NOT NULL,
  "commenterId" integer NOT NULL
);

ALTER TABLE ONLY "comment"
  ADD CONSTRAINT comment_pkey PRIMARY KEY (id);

ALTER TABLE ONLY "comment"
  ADD CONSTRAINT comment_fk_0
    FOREIGN KEY("commenterId")
      REFERENCES person(id)
        ON DELETE CASCADE;

--
-- Class Business as table business
--

CREATE TABLE "business" (
  "id" serial,
  "personId" integer NOT NULL,
  "logo" text NOT NULL,
  "name" text NOT NULL,
  "category" text NOT NULL,
  "address" text NOT NULL,
  "ratings" json NOT NULL,
  "reviews" json NOT NULL,
  "isActive" boolean NOT NULL,
  "dateCreated" timestamp without time zone NOT NULL
);

ALTER TABLE ONLY "business"
  ADD CONSTRAINT business_pkey PRIMARY KEY (id);

CREATE INDEX business_name_idx ON "business" USING btree ("name");

ALTER TABLE ONLY "business"
  ADD CONSTRAINT business_fk_0
    FOREIGN KEY("personId")
      REFERENCES person(id)
        ON DELETE CASCADE;

--
-- Class Product as table product
--

CREATE TABLE "product" (
  "id" serial,
  "businessId" integer NOT NULL,
  "image" text NOT NULL,
  "images" json,
  "name" text NOT NULL,
  "uniqueName" text NOT NULL,
  "category" text NOT NULL,
  "price" text,
  "rating" json NOT NULL,
  "isTrending" text NOT NULL
);

ALTER TABLE ONLY "product"
  ADD CONSTRAINT product_pkey PRIMARY KEY (id);

CREATE INDEX user_name_idx ON "product" USING btree ("uniqueName");

ALTER TABLE ONLY "product"
  ADD CONSTRAINT product_fk_0
    FOREIGN KEY("businessId")
      REFERENCES business(id)
        ON DELETE CASCADE;

--
-- Class Rating as table rating
--

CREATE TABLE "rating" (
  "id" serial,
  "ratedItemId" text NOT NULL,
  "ratedItemCategory" text NOT NULL,
  "rating" text NOT NULL,
  "dateCreated" timestamp without time zone NOT NULL,
  "raterId" integer NOT NULL
);

ALTER TABLE ONLY "rating"
  ADD CONSTRAINT rating_pkey PRIMARY KEY (id);

ALTER TABLE ONLY "rating"
  ADD CONSTRAINT rating_fk_0
    FOREIGN KEY("raterId")
      REFERENCES person(id)
        ON DELETE CASCADE;

--
-- Class Review as table review
--

CREATE TABLE "review" (
  "id" serial,
  "review" text NOT NULL,
  "dateCreated" timestamp without time zone NOT NULL,
  "reviewerId" integer NOT NULL,
  "comments" json NOT NULL
);

ALTER TABLE ONLY "review"
  ADD CONSTRAINT review_pkey PRIMARY KEY (id);

ALTER TABLE ONLY "review"
  ADD CONSTRAINT review_fk_0
    FOREIGN KEY("reviewerId")
      REFERENCES person(id)
        ON DELETE CASCADE;

--
-- Class Service as table service
--

CREATE TABLE "service" (
  "id" serial,
  "businessId" integer NOT NULL,
  "image" text NOT NULL,
  "images" json,
  "name" text NOT NULL,
  "uniqueName" text NOT NULL,
  "category" text NOT NULL,
  "price" text,
  "rating" json NOT NULL,
  "isTrending" text NOT NULL
);

ALTER TABLE ONLY "service"
  ADD CONSTRAINT service_pkey PRIMARY KEY (id);

CREATE INDEX user_name_idx ON "service" USING btree ("uniqueName");

ALTER TABLE ONLY "service"
  ADD CONSTRAINT service_fk_0
    FOREIGN KEY("businessId")
      REFERENCES business(id)
        ON DELETE CASCADE;

