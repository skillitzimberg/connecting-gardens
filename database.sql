CREATE DATABASE IF NOT EXISTS growinggardens DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE growinggardens;

CREATE TABLE user (
  uid int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  organization varchar(255) NOT NULL,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  phone_number varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  address1 varchar(255) NOT NULL,
  address2 varchar(255) NOT NULL,
  city varchar(255) NOT NULL,
  state varchar(255) NOT NULL,
  zip_code int(11) NOT NULL,
  username varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  category ENUM('CONSUMER', 'PRODUCER', 'BOTH'),
  garden_type ENUM('IN_GROUND', 'ACCESSIBLE_RAISE', 'CONTAINERS', 'COMMUNITY_PLOT', 'LEAD_FREE'),
)

CREATE TABLE inventory (
  uid int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  category varchar(255) NOT NULL,
  name varchar(255) NOT NULL,
  description varchar(255) NOT NULL
)

CREATE TABLE user_inventory (
  user_uid int(11) NOT NULL PRIMARY KEY,
  quantity varchar(255) NOT NULL
)

CREATE TABLE message (
  message_uid int(11) NOT NULL PRIMARY KEY,
  message varchar(255) NOT NULL,
  suggested_address1 varchar(255) NOT NULL,
  suggested_address2 varchar(255) NOT NULL,
  suggested_city varchar(255) NOT NULL,
  suggested_state varchar(255) NOT NULL,
  suggested_zip_code int(11) NOT NULL,
  preferred_date1 DATETIME NOT NULL,
  preferred_date2 DATETIME NOT NULL,
  preferred_date3 DATETIME NOT NULL
)
