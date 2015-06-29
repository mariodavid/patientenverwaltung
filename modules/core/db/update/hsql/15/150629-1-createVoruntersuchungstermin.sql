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
);
