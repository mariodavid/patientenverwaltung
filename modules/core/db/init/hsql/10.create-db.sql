-- begin PA_PATIENT
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
    GESCHLECHT varchar(50) not null,
    --
    primary key (ID)
)^
-- end PA_PATIENT

-- begin PA_RAUM
create table PA_RAUM (
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
    --
    primary key (ID)
)^
-- end PA_RAUM
-- begin PA_OPERATIONSTERMIN
create table PA_OPERATIONSTERMIN (
    ID varchar(36) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    PATIENT_ID varchar(36) not null,
    AUGE varchar(50) not null,
    RAUM_ID varchar(36) not null,
    DATUM date not null,
    BEGINN time not null,
    ENDE time not null,
    --
    primary key (ID)
)^
-- end PA_OPERATIONSTERMIN
-- begin PA_MITARBEITER
create table PA_MITARBEITER (
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
    --
    primary key (ID)
)^
-- end PA_MITARBEITER
-- begin PA_OPERATIONSTERMIN_MITARBEITER_LINK
create table PA_OPERATIONSTERMIN_MITARBEITER_LINK (
    MITARBEITER_ID varchar(36) not null,
    OPERATIONSTERMIN_ID varchar(36) not null,
    primary key (MITARBEITER_ID, OPERATIONSTERMIN_ID)
)^
-- end PA_OPERATIONSTERMIN_MITARBEITER_LINK
-- begin PA_ARBEITSTAG
create table PA_ARBEITSTAG (
    ID varchar(36) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    WOCHENTAG varchar(50) not null,
    BEGINN time not null,
    ENDE time not null,
    MITARBEITER_ID varchar(36),
    --
    primary key (ID)
)^
-- end PA_ARBEITSTAG
-- begin PA_VORUNTERSUCHUNGSTERMIN
create table PA_VORUNTERSUCHUNGSTERMIN (
    ID varchar(36) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    PATIENT_ID varchar(36) not null,
    ZEITPUNKT timestamp not null,
    --
    primary key (ID)
)^
-- end PA_VORUNTERSUCHUNGSTERMIN
