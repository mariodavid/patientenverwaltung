alter table PA_OPERATIONSTERMIN add constraint FK_PA_OPERATIONSTERMIN_ERSTELLT_VON_ID foreign key (ERSTELLT_VON_ID) references PA_MITARBEITER(ID);
create index IDX_PA_OPERATIONSTERMIN_ERSTELLT_VON on PA_OPERATIONSTERMIN (ERSTELLT_VON_ID);
