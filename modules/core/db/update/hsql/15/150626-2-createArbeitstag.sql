alter table PA_ARBEITSTAG add constraint FK_PA_ARBEITSTAG_MITARBEITER_ID foreign key (MITARBEITER_ID) references PA_MITARBEITER(ID);
create index IDX_PA_ARBEITSTAG_MITARBEITER on PA_ARBEITSTAG (MITARBEITER_ID);
