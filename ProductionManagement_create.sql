-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-01-15 23:33:51.931

-- tables
-- Table: role
CREATE TABLE role (
    id int NOT NULL CONSTRAINT role_pk PRIMARY KEY,
    role_name varchar(128) NOT NULL
);

-- Table: team_member
CREATE TABLE team_member (
    id int NOT NULL CONSTRAINT team_member_pk PRIMARY KEY,
    first_name varchar(64) NOT NULL,
    last_name varchar(64) NOT NULL,
    role_id int NOT NULL
);

-- End of file.

