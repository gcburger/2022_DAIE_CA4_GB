-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-01-19 01:48:22.917

-- tables
-- Table: asset
CREATE TABLE asset (
    id int NOT NULL CONSTRAINT asset_pk PRIMARY KEY,
    description varchar(128) NOT NULL,
    type varchar(128) NOT NULL,
    project_id int NOT NULL,
    library_id int NOT NULL
);

-- Table: library
CREATE TABLE library (
    id int NOT NULL CONSTRAINT library_pk PRIMARY KEY,
    library_name varchar(128) NOT NULL
);

-- Table: project
CREATE TABLE project (
    id int NOT NULL CONSTRAINT project_pk PRIMARY KEY,
    project_name varchar(128) NOT NULL,
    description text NOT NULL,
    delivery_date date NOT NULL,
    team_id int NOT NULL
);

-- Table: role
CREATE TABLE role (
    id int NOT NULL CONSTRAINT role_pk PRIMARY KEY,
    role_name varchar(128) NOT NULL
);

-- Table: team
CREATE TABLE team (
    id int NOT NULL CONSTRAINT team_pk PRIMARY KEY,
    team_name varchar(128) NOT NULL
);

-- Table: team_member
CREATE TABLE team_member (
    id int NOT NULL CONSTRAINT team_member_pk PRIMARY KEY,
    first_name varchar(64) NOT NULL,
    last_name varchar(64) NOT NULL,
    role_id int NOT NULL,
    team_id int NOT NULL
);

-- Table: work_item
CREATE TABLE work_item (
    id int NOT NULL CONSTRAINT work_item_pk PRIMARY KEY,
    description text NOT NULL,
    status varchar(64) NOT NULL,
    asset_id int NOT NULL,
    team_member_id int NOT NULL
);

-- End of file.

