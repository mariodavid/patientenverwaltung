alter table PA_PATIENT add column GESCHLECHT varchar(50) ;
update PA_PATIENT set GESCHLECHT = 'M' where GESCHLECHT is null ;
alter table PA_PATIENT alter column GESCHLECHT set not null ;
