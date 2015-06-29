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
);
