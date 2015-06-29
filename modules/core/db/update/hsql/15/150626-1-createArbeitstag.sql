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
);
