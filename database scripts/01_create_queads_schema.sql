DROP TABLE IF EXISTS que_ads.policy;
DROP TABLE IF EXISTS que_ads.city;
DROP TABLE IF EXISTS que_ads.province;
DROP TABLE IF EXISTS que_ads.user;
DROP TABLE IF EXISTS que_ads.role;
DROP SCHEMA IF EXISTS que_ads;

CREATE SCHEMA IF NOT EXISTS que_ads;

CREATE TABLE IF NOT EXISTS que_ads.role (
	id serial PRIMARY KEY ,
	name VARCHAR(50) NOT NULL,
	code VARCHAR(10) NOT NULL CONSTRAINT ck_unique_role_code UNIQUE
);

CREATE TABLE IF NOT EXISTS que_ads.user (
	id bigserial PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NULL,
	email_address VARCHAR(200) NOT NULL,
	username VARCHAR(100) NOT NULL CONSTRAINT ck_unique_username UNIQUE,
	password_salt bytea NOT NULL,
	password_hash bytea NOT NULL,
	forgot_password_key uuid NULL,
	last_login_date timestamp NULL,
	create_date timestamp NOT NULL,
	role_id int NOT NULL,		
	CONSTRAINT fk_role_id_user_role_id FOREIGN KEY (role_id)
	  REFERENCES que_ads.role (id)
);

CREATE TABLE IF NOT EXISTS que_ads.province (
	id serial PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	code VARCHAR(4) NOT NULL CONSTRAINT ck_unique_province_code UNIQUE
);

CREATE TABLE IF NOT EXISTS que_ads.city (
	id serial PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	code VARCHAR(10) NOT NULL CONSTRAINT ck_unique_city_code UNIQUE,
	postal_code VARCHAR(10) NOT NULL,
	province_id int NOT NULL,
	CONSTRAINT fk_province_id_city_province_id FOREIGN KEY (province_id)
	  REFERENCES que_ads.province (id)
);

CREATE TABLE IF NOT EXISTS que_ads.policy (
	id bigserial PRIMARY KEY ,
	subject VARCHAR(100) NOT NULL,
	content text NOT NULL,
	phone_number VARCHAR(20) NULL,
	images text[] NULL,
	view_count int NOT NULL DEFAULT 0,
	reply_count int NOT NULL DEFAULT 0,
	city_id int NOT NULL,
	user_id bigint NOT NULL,
	edit_date timestamp NULL,
	create_date timestamp NOT NULL,	
	CONSTRAINT fk_user_id_policy_user_id FOREIGN KEY (user_id)
	  REFERENCES que_ads.user (id),
	CONSTRAINT fk_city_id_policy_city_id FOREIGN KEY (city_id)
	  REFERENCES que_ads.city (id)
);
