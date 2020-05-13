--
DROP TABLE IF EXISTS antbi.dashboard_board;
CREATE TABLE antbi.dashboard_board (
  board_id serial primary key,
  user_id varchar(50) NOT NULL,
  category_id bigint DEFAULT NULL,
  board_name varchar(100) NOT NULL,
  layout_json text,
  create_time TIMESTAMP DEFAULT now(),
  update_time TIMESTAMP DEFAULT now()
);

DROP TABLE IF EXISTS antbi.dashboard_category;
CREATE TABLE antbi.dashboard_category (
  category_id serial primary key,
  category_name varchar(100) NOT NULL,
  user_id varchar(100) NOT NULL
);

DROP TABLE IF EXISTS antbi.dashboard_datasource;
CREATE TABLE antbi.dashboard_datasource (
  datasource_id serial primary key,
  user_id varchar(50) NOT NULL,
  source_name varchar(100) NOT NULL,
  source_type varchar(100) NOT NULL,
  config text,
  create_time TIMESTAMP DEFAULT now(),
  update_time TIMESTAMP DEFAULT now()
);

DROP TABLE IF EXISTS antbi.dashboard_widget;
CREATE TABLE antbi.dashboard_widget (
  widget_id serial primary key,
  user_id varchar(100) NOT NULL,
  category_name varchar(100) DEFAULT NULL,
  widget_name varchar(100) DEFAULT NULL,
  data_json text,
  create_time TIMESTAMP DEFAULT now(),
  update_time TIMESTAMP DEFAULT now()
);

DROP TABLE IF EXISTS antbi.dashboard_dataset;
CREATE TABLE antbi.dashboard_dataset (
  dataset_id serial primary key,
  user_id varchar(100) NOT NULL,
  category_name varchar(100) DEFAULT NULL,
  dataset_name varchar(100) DEFAULT NULL,
  data_json text,
  create_time TIMESTAMP DEFAULT now(),
  update_time TIMESTAMP DEFAULT now()
);

DROP TABLE IF EXISTS antbi.dashboard_user;
CREATE TABLE antbi.dashboard_user (
  user_id varchar(50) NOT NULL,
  login_name varchar(100) DEFAULT NULL,
  user_name varchar(100) DEFAULT NULL,
  user_password varchar(100) DEFAULT NULL,
  user_status varchar(100) DEFAULT NULL,
  create_time TIMESTAMP DEFAULT now(),
  update_time TIMESTAMP DEFAULT now()
);

INSERT INTO antbi.dashboard_user (user_id,login_name,user_name,user_password)
VALUES('1', 'admin', 'Administrator', 'ff9830c42660c1dd1942844f8069b74a');

DROP TABLE IF EXISTS antbi.dashboard_user_role;
CREATE TABLE antbi.dashboard_user_role (
  user_role_id serial primary key,
  user_id varchar(100) DEFAULT NULL,
  role_id varchar(100) DEFAULT NULL
);

DROP TABLE IF EXISTS antbi.dashboard_role;
CREATE TABLE antbi.dashboard_role (
  role_id varchar(100) NOT NULL,
  role_name varchar(100) DEFAULT NULL,
  user_id varchar(50) DEFAULT NULL
);

DROP TABLE IF EXISTS antbi.dashboard_role_res;
CREATE TABLE antbi.dashboard_role_res (
  role_res_id serial primary key,
  role_id varchar(100) DEFAULT NULL,
  res_type varchar(100) DEFAULT NULL,
  res_id bigint DEFAULT NULL,
  permission varchar(20) DEFAULT NULL
);

DROP TABLE IF EXISTS antbi.dashboard_job;
CREATE TABLE antbi.dashboard_job (
  job_id serial primary key,
  job_name varchar(200) DEFAULT NULL,
  cron_exp varchar(200) DEFAULT NULL,
  start_date timestamp NULL DEFAULT NULL,
  end_date timestamp NULL DEFAULT NULL,
  job_type varchar(200) DEFAULT NULL,
  job_config text,
  user_id varchar(100) DEFAULT NULL,
  last_exec_time timestamp NULL DEFAULT NULL,
  job_status bigint,
  exec_log text
);

DROP TABLE IF EXISTS antbi.dashboard_board_param;
CREATE TABLE antbi.dashboard_board_param (
  board_param_id serial primary key,
  user_id varchar(50) NOT NULL,
  board_id bigint NOT NULL,
  config text,
  create_time TIMESTAMP DEFAULT now(),
  update_time TIMESTAMP DEFAULT now()
);

DROP TABLE IF EXISTS antbi.dashboard_homepage;
CREATE TABLE antbi.dashboard_homepage (
  board_id bigint NOT NULL,
  user_id varchar(50) NOT NULL
);
