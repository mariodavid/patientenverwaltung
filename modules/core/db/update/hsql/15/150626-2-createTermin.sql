alter table PA_TERMIN add constraint FK_PA_TERMIN_PATIENT_ID foreign key (PATIENT_ID) references PA_PATIENT(ID);
create index IDX_PA_TERMIN_PATIENT on PA_TERMIN (PATIENT_ID);
