update PA_VORUNTERSUCHUNGSTERMIN set BEGINN = current_time where BEGINN is null ;
alter table PA_VORUNTERSUCHUNGSTERMIN alter column BEGINN set not null ;
