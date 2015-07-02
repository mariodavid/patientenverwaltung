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
);
