alter table PA_PATIENT add column AUGENARZT_ID varchar(36) ;
update PA_PATIENT set PLZ = '' where PLZ is null ;
alter table PA_PATIENT alter column PLZ set not null ;
update PA_PATIENT set ORT = '' where ORT is null ;
alter table PA_PATIENT alter column ORT set not null ;
