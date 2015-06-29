create table PA_TERMIN (
    ID varchar(36) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    ZEITPUNKT timestamp not null,
    PATIENT_ID varchar(36) not null,
    --
    primary key (ID)
);
