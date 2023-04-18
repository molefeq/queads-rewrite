DROP TABLE IF EXISTS que_ads.policy;
DROP TABLE IF EXISTS que_ads.sub_category;
DROP TABLE IF EXISTS que_ads.category;
DROP TABLE IF EXISTS que_ads.city;
DROP TABLE IF EXISTS que_ads.province;
DROP TABLE IF EXISTS que_ads.user;
DROP TABLE IF EXISTS que_ads.role;
DROP TABLE IF EXISTS que_ads.refresh_token;
DROP SCHEMA IF EXISTS que_ads;

CREATE SCHEMA IF NOT EXISTS que_ads;

CREATE TABLE IF NOT EXISTS que_ads.role (
	id serial4 NOT NULL,
	"name" varchar(50) NOT NULL,
	code varchar(10) NOT NULL,
	CONSTRAINT ck_unique_role_code UNIQUE (code),
	CONSTRAINT role_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS que_ads.user (
	id bigserial NOT NULL,
	"name" varchar(100) NOT NULL,
	last_name varchar(100) NULL,
	email_address varchar(200) NOT NULL,
	username varchar(100) NOT NULL,
	"password" varchar(200) NOT NULL,
	forgot_password_key varchar(20) NULL,
	last_login_date timestamp NULL,
	create_date timestamp NOT NULL,
	role_id int4 NOT NULL,
	CONSTRAINT ck_unique_username UNIQUE (username),
	CONSTRAINT user_pkey PRIMARY KEY (id),
	CONSTRAINT fk_role_id_user_role_id FOREIGN KEY (role_id) REFERENCES que_ads."role"(id)
);

CREATE TABLE IF NOT EXISTS que_ads.category (
	id serial4 NOT NULL,
	"name" varchar(50) NOT NULL,
	CONSTRAINT category_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS que_ads.sub_category(
	id serial4 NOT NULL,
	"name" varchar(50) NOT NULL,
	category_id int4 NOT NULL,
	CONSTRAINT sub_category_pkey PRIMARY KEY (id),
	CONSTRAINT fk_category_id_sub_category_category_id FOREIGN KEY (category_id) REFERENCES que_ads.category(id)
);

CREATE TABLE IF NOT EXISTS que_ads.province (
	id serial4 NOT NULL,
	"name" varchar(50) NOT NULL,
	code varchar(4) NOT NULL,
	CONSTRAINT ck_unique_province_code UNIQUE (code),
	CONSTRAINT province_pkey PRIMARY KEY (id)
);

CREATE TABLE que_ads.refresh_token (
	id bigserial NOT NULL,
	refresh_token varchar(500) NOT NULL,
	expiry_date timestamp NOT NULL,
	CONSTRAINT ck_unique_refresh_token UNIQUE (refresh_token),
	CONSTRAINT refresh_token_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS que_ads.city (
	id serial4 NOT NULL,
	"name" varchar(50) NOT NULL,
	code varchar(10) NOT NULL,
	postal_code varchar(10) NOT NULL,
	province_id int4 NOT NULL,
	CONSTRAINT city_pkey PRIMARY KEY (id),
	CONSTRAINT ck_unique_city_code UNIQUE (code),
	CONSTRAINT fk_province_id_city_province_id FOREIGN KEY (province_id) REFERENCES que_ads.province(id)
);

CREATE TABLE IF NOT EXISTS que_ads.policy (
	id bigserial NOT NULL,
	subject varchar(100) NOT NULL,
	"content" text NOT NULL,
	phone_number varchar(20) NULL,
	images varchar(500) NULL,
	view_count int4 NOT NULL DEFAULT 0,
	reply_count int4 NOT NULL DEFAULT 0,
	sub_category_id int4 NOT NULL,
	city_id int4 NOT NULL,
	user_id int8 NOT NULL,
	edit_date timestamp NULL,
	create_date timestamp NOT NULL,
	CONSTRAINT policy_pkey PRIMARY KEY (id),
	CONSTRAINT fk_city_id_policy_city_id FOREIGN KEY (city_id) REFERENCES que_ads.city(id),
	CONSTRAINT fk_sub_category_id_policy_sub_category_id FOREIGN KEY (sub_category_id) REFERENCES que_ads.sub_category(id),
	CONSTRAINT fk_user_id_policy_user_id FOREIGN KEY (user_id) REFERENCES que_ads."user"(id)
);
