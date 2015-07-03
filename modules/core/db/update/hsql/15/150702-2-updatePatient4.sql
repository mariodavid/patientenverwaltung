alter table PA_PATIENT add column KRANKENKASSE_ID varchar(36) ;
alter table PA_PATIENT drop column KRAKENKASSE_ID cascade ;
