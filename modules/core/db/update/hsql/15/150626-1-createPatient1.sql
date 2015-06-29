create table PA_PATIENT (
    ID varchar(36) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    VORNAME varchar(255) not null,
    GEBURTSDATUM date not null,
    ANSCHRIFT varchar(255) not null,
    PLZ varchar(255),
    ORT varchar(255),
    --
    primary key (ID)
);
