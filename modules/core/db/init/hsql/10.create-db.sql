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
    AUGENARZT_ID varchar(36),
    ANSCHRIFT varchar(255) not null,
    PLZ varchar(255) not null,
    ORT varchar(255) not null,
    GESCHLECHT varchar(50) not null,
    KRAKENKASSE_ID varchar(36),
    --
    primary key (ID)
)^-- end PA_PATIENT

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
    AUGE varchar(50),
    DATUM date not null,
    BEGINN time not null,
    ENDE time not null,
    ERSTE_OPERATION boolean,
    BESONDERHEITEN varchar(4000),
    PATIENT_BENACHRICHTIGT boolean,
    ERSTELLT_VON_ID varchar(36),
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
    DATUM date not null,
    BEGINN time not null,
    ENDE time not null,
    --
    primary key (ID)
)^
-- end PA_VORUNTERSUCHUNGSTERMIN
-- begin PA_AUGENARZT
create table PA_AUGENARZT (
    ID varchar(36) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    ANREDE varchar(50),
    TITEL varchar(50),
    NAME varchar(255) not null,
    VORNAME varchar(255) not null,
    ANSCHRIFT varchar(255) not null,
    PLZ varchar(255),
    ORT varchar(255),
    TELEFON varchar(255),
    FAX varchar(255),
    EMAIL varchar(255),
    --
    primary key (ID)
)^
-- end PA_AUGENARZT
-- begin PA_AUGENARZT_ANGESTELLTE
create table PA_AUGENARZT_ANGESTELLTE (
    ID varchar(36) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    VORNAME varchar(255),
    AUGENARZT_ID varchar(36),
    --
    primary key (ID)
)^
-- end PA_AUGENARZT_ANGESTELLTE
-- begin PA_KRAKENKASSE
create table PA_KRAKENKASSE (
    ID varchar(36) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    ANSCHRIFT varchar(255),
    PLZ varchar(255),
    ORT varchar(255),
    TELEFON varchar(255),
    FAX varchar(255),
    EMAIL varchar(255),
    --
    primary key (ID)
)^
-- end PA_KRAKENKASSE
