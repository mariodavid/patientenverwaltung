-- SEC_GROUP
-- INSERT INTO PUBLIC.SEC_GROUP (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, PARENT_ID) VALUES ('0fa2b1a5-1d68-4d69-9fbd-dff348347f93', '2015-06-26 13:14:24.532000', null, 0, null, null, null, null, 'Company', null);
INSERT INTO PUBLIC.SEC_GROUP (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, PARENT_ID) VALUES ('f506036b-587b-c209-3fe3-eea4721625aa', '2015-06-29 10:12:34.536000', 'admin', 1, '2015-06-29 10:12:34.536000', null, null, null, 'Zubringer', '0fa2b1a5-1d68-4d69-9fbd-dff348347f93');

-- SEC_GROUP_HIERACHY
INSERT INTO PUBLIC.SEC_GROUP_HIERARCHY (ID, CREATE_TS, CREATED_BY, GROUP_ID, PARENT_ID, HIERARCHY_LEVEL) VALUES ('e0fb9105-935c-1d7b-89d0-7de5e779b6c4', '2015-06-29 10:12:34.546000', 'admin', 'f506036b-587b-c209-3fe3-eea4721625aa', '0fa2b1a5-1d68-4d69-9fbd-dff348347f93', 0);

-- SEC_USER
-- INSERT INTO PUBLIC.SEC_USER (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, LOGIN, LOGIN_LC, PASSWORD, NAME, FIRST_NAME, LAST_NAME, MIDDLE_NAME, POSITION_, EMAIL, LANGUAGE_, TIME_ZONE, TIME_ZONE_AUTO, ACTIVE, GROUP_ID, IP_MASK, CHANGE_PASSWORD_AT_LOGON) VALUES ('60885987-1b61-4247-94c7-dff348347f93', '2015-06-26 13:14:24.533000', null, 0, null, null, null, null, 'admin', 'admin', 'cc2229d1b8a052423d9e1c9ef0113b850086586a', 'Administrator', null, null, null, null, null, null, null, null, true, '0fa2b1a5-1d68-4d69-9fbd-dff348347f93', null, null);
INSERT INTO PUBLIC.SEC_USER (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, LOGIN, LOGIN_LC, PASSWORD, NAME, FIRST_NAME, LAST_NAME, MIDDLE_NAME, POSITION_, EMAIL, LANGUAGE_, TIME_ZONE, TIME_ZONE_AUTO, ACTIVE, GROUP_ID, IP_MASK, CHANGE_PASSWORD_AT_LOGON) VALUES ('9d6b534e-a238-5960-8624-57812b28aebf', '2015-06-29 10:09:36.388000', 'admin', 2, '2015-06-29 10:16:32.901000', 'admin', null, null, 'zubringer', 'zubringer', '7c247a057ba3cb869db0a5973f447a8b00f13a28', 'Zubringer K. ', 'Klaus', 'Zubringer', null, null, null, 'de', null, null, true, 'f506036b-587b-c209-3fe3-eea4721625aa', null, false);





-- PA_KRANKENKASSE
INSERT INTO PUBLIC.PA_KRANKENKASSE (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, ANSCHRIFT, PLZ, ORT, TELEFON, FAX, EMAIL) VALUES ('40b6273b-702c-6ea8-2957-9bf9b216dcb0', '2015-07-03 08:30:07.430000', 'admin', 1, '2015-07-03 08:30:07.430000', null, null, null, 'TK', 'Museumstr. 33 - 35', '22765', 'Hamburg', '040 - 69 21-69 69', '040 - 69 21-61 41', 'info@tk.de');
INSERT INTO PUBLIC.PA_KRANKENKASSE (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, ANSCHRIFT, PLZ, ORT, TELEFON, FAX, EMAIL) VALUES ('981b427a-6184-e4d1-b00f-a7ec7c79150e', '2015-07-03 08:32:04.248000', 'admin', 1, '2015-07-03 08:32:04.248000', null, null, null, 'AOK', 'Rosenthaler Straße 31', '10178', 'Berlin', '030 34646-0', '030 34646-2502', 'info@aok.de');
INSERT INTO PUBLIC.PA_KRANKENKASSE (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, ANSCHRIFT, PLZ, ORT, TELEFON, FAX, EMAIL) VALUES ('e7c05825-6e13-6368-04e0-aa7707767bd6', '2015-07-03 08:31:06.869000', 'admin', 1, '2015-07-03 08:31:06.869000', null, null, null, 'BKK', 'Willy-Brandt-Platz 8', '38440', 'Wolfsburg', '0800 2556655', '0800 4540114', 'info@deutschebkk.de');

-- PA_MITARBEITER
INSERT INTO PUBLIC.PA_MITARBEITER (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, VORNAME) VALUES ('247f08a3-2683-4d02-836d-a64acc8eb092', '2015-06-26 13:42:00.484000', 'admin', 3, '2015-06-30 08:33:52.903000', 'admin', null, null, 'Meier', 'Maria');
INSERT INTO PUBLIC.PA_MITARBEITER (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, VORNAME) VALUES ('675316e4-ac53-4786-1833-4cf0b9933743', '2015-06-26 13:41:41.903000', 'admin', 1, '2015-06-26 13:41:41.903000', null, null, null, 'David', 'Mario');

-- PA_RAUM
INSERT INTO PUBLIC.PA_RAUM (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME) VALUES ('442c15ff-84ce-411a-2795-61df543b6845', '2015-06-26 13:23:39.483000', 'admin', 1, '2015-06-26 13:23:39.483000', null, null, null, 'OP2');
INSERT INTO PUBLIC.PA_RAUM (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME) VALUES ('e40408c0-0cda-0361-e04a-460b6f5e748b', '2015-06-26 13:23:36.498000', 'admin', 1, '2015-06-26 13:23:36.498000', null, null, null, 'OP1');

-- PA_AUGENARZT
INSERT INTO PUBLIC.PA_AUGENARZT (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ANREDE, TITEL, NAME, VORNAME, ANSCHRIFT, PLZ, ORT, TELEFON, FAX, EMAIL) VALUES ('21da18b1-ccdc-b9b9-0081-31560acc7877', '2015-07-02 10:41:09.926000', 'admin', 1, '2015-07-02 10:41:09.926000', null, null, null, 'Herr', 'Dr. med.', 'Nielkiebel', 'Peter', 'Heinstraße 44a', '45125', 'Pogeez', null, null, null);
INSERT INTO PUBLIC.PA_AUGENARZT (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ANREDE, TITEL, NAME, VORNAME, ANSCHRIFT, PLZ, ORT, TELEFON, FAX, EMAIL) VALUES ('77b19dd9-ac70-168d-5252-0ab012a6d7b1', '2015-07-02 16:29:53.189000', 'admin', 1, '2015-07-02 16:29:53.189000', null, null, null, 'Herr', 'Dr.', 'Bursche', 'Klausi', 'Dorfstraße 1', '88595', 'Burschhausen', null, null, null);
INSERT INTO PUBLIC.PA_AUGENARZT (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ANREDE, TITEL, NAME, VORNAME, ANSCHRIFT, PLZ, ORT, TELEFON, FAX, EMAIL) VALUES ('cbf9ec49-daa4-10f4-409b-c4379e185231', '2015-07-02 10:36:50.549000', 'admin', 1, '2015-07-02 10:36:50.549000', null, null, null, 'Herr', 'Dr.', 'Barenburg', 'Kai', 'Kielweg 33', '23568', 'Lübeck', '0451 123456789', '01548 15478', 'barenburg@praxis-kleinlaut.de');

-- PA_PATIENT
INSERT INTO PUBLIC.PA_PATIENT (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, VORNAME, GEBURTSDATUM, ANSCHRIFT, PLZ, ORT, GESCHLECHT, AUGENARZT_ID, KRANKENKASSE_ID) VALUES ('1b6f11d3-557f-a1ed-c420-ce052fe90750', '2015-06-29 10:12:11.810000', 'zubringer', 5, '2015-07-02 16:35:55.819000', 'admin', null, null, 'Meiser', 'Hans', '1985-09-19', 'Dorfstraße 7', '23560', 'Lübeck', 'M', '77b19dd9-ac70-168d-5252-0ab012a6d7b1', '40b6273b-702c-6ea8-2957-9bf9b216dcb0');
INSERT INTO PUBLIC.PA_PATIENT (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, VORNAME, GEBURTSDATUM, ANSCHRIFT, PLZ, ORT, GESCHLECHT, AUGENARZT_ID, KRANKENKASSE_ID) VALUES ('5b83e0d9-e228-c9d6-e75e-bee2e3e7affb', '2015-07-01 11:47:53.909000', 'admin', 3, '2015-07-02 12:35:15.156000', 'admin', null, null, 'Klausen', 'Matthias Heinz Karl', '2000-04-15', 'Karlstraße 7', '56260', 'Magdeburg', 'M', 'cbf9ec49-daa4-10f4-409b-c4379e185231', 'e7c05825-6e13-6368-04e0-aa7707767bd6');
INSERT INTO PUBLIC.PA_PATIENT (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, VORNAME, GEBURTSDATUM, ANSCHRIFT, PLZ, ORT, GESCHLECHT, AUGENARZT_ID, KRANKENKASSE_ID) VALUES ('81f0a708-33c0-e3a6-ddbc-586e056d2994', '2015-06-26 14:34:12.717000', 'admin', 2, '2015-06-26 14:34:12.717000', null, '2015-06-29 14:01:33.113000', 'admin', 'Mario', 'David', '1985-09-19', 'Bornkamp 123', '23560', 'Lübeck', 'M', null, null);
INSERT INTO PUBLIC.PA_PATIENT (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, VORNAME, GEBURTSDATUM, ANSCHRIFT, PLZ, ORT, GESCHLECHT, AUGENARZT_ID, KRANKENKASSE_ID) VALUES ('89a6d77d-14ba-fe4a-820f-e9d7adf7c474', '2015-06-29 15:29:31.349000', 'admin', 3, '2015-07-02 12:35:00.692000', 'admin', null, null, 'Meier', 'Mario', '1985-09-19', 'Dorfstraße 7', '23911', 'Pogeez', 'M', '21da18b1-ccdc-b9b9-0081-31560acc7877', 'e7c05825-6e13-6368-04e0-aa7707767bd6');
INSERT INTO PUBLIC.PA_PATIENT (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, VORNAME, GEBURTSDATUM, ANSCHRIFT, PLZ, ORT, GESCHLECHT, AUGENARZT_ID, KRANKENKASSE_ID) VALUES ('bf3b79e0-c3d9-ebf6-1fee-98daf2614a43', '2015-07-01 08:36:46.813000', 'admin', 3, '2015-07-02 16:36:02.127000', 'admin', null, null, 'Weiser', 'Mitchell', '1988-05-18', 'Postalle 1', '88293', 'München', 'M', 'cbf9ec49-daa4-10f4-409b-c4379e185231', '40b6273b-702c-6ea8-2957-9bf9b216dcb0');
INSERT INTO PUBLIC.PA_PATIENT (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, VORNAME, GEBURTSDATUM, ANSCHRIFT, PLZ, ORT, GESCHLECHT, AUGENARZT_ID, KRANKENKASSE_ID) VALUES ('c58c39d1-fe5b-d6c5-a245-15912c7db9fe', '2015-06-29 14:02:02.718000', 'admin', 3, '2015-07-02 16:17:06.346000', 'admin', null, null, 'Kleber', 'Klaus', '2000-10-18', 'Dorfstraße 11', '56230', 'Neustadt', 'M', 'cbf9ec49-daa4-10f4-409b-c4379e185231', '40b6273b-702c-6ea8-2957-9bf9b216dcb0');
INSERT INTO PUBLIC.PA_PATIENT (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, VORNAME, GEBURTSDATUM, ANSCHRIFT, PLZ, ORT, GESCHLECHT, AUGENARZT_ID, KRANKENKASSE_ID) VALUES ('cef345f0-dd10-935e-c1f6-22dc56bce915', '2015-06-26 13:15:08.942000', 'admin', 2, '2015-06-26 13:15:08.942000', null, '2015-06-29 14:01:35.828000', 'admin', 'Mario', 'David', '1985-09-19', 'Bornkamp', '23560', 'Lübeck', 'M', null, null);

-- PA_OPERATIONSTERMIN
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('0acca06e-1a80-489a-d0f8-88acccb9031b', '2015-07-02 12:27:53.083000', 'admin', 1, '2015-07-02 12:27:53.083000', null, null, null, '5b83e0d9-e228-c9d6-e75e-bee2e3e7affb', null, '2015-05-12', '15:00:00', '15:30:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('10b5526a-83c8-7b0e-e3b9-a8e651ebe60c', '2015-06-29 16:47:26.877000', 'admin', 2, '2015-06-29 16:47:26.877000', null, '2015-06-30 15:25:42.024000', 'admin', '5b83e0d9-e228-c9d6-e75e-bee2e3e7affb', null, '2014-01-02', '12:00:00', '15:00:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('111384b7-a949-f82f-e4d3-f3dd3fbc97c8', '2015-07-02 12:21:10.942000', 'admin', 1, '2015-07-02 12:21:10.942000', null, null, null, '1b6f11d3-557f-a1ed-c420-ce052fe90750', 'R', '2015-07-31', '12:00:00', '12:30:00', true, 'meine besonderhiet', null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('2408ff21-5fb5-26cc-231d-ceb8fba5bf00', '2015-06-29 16:11:01.868000', 'admin', 3, '2015-06-29 16:11:11.494000', 'admin', '2015-06-30 15:25:52.653000', 'admin', '1b6f11d3-557f-a1ed-c420-ce052fe90750', 'L', '2015-06-25', '08:15:00', '08:30:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('301fd439-8e54-7bf2-7294-3a51e737bc64', '2015-07-02 11:25:57.858000', 'admin', 1, '2015-07-02 11:25:57.858000', null, null, null, '5b83e0d9-e228-c9d6-e75e-bee2e3e7affb', 'R', '2015-07-10', '15:00:00', '15:30:00', true, 'keine besonderheiten', null, '247f08a3-2683-4d02-836d-a64acc8eb092');
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('368531ed-c80d-bf78-e920-43dcc96b2894', '2015-07-01 12:50:08.757000', 'admin', 1, '2015-07-01 12:50:08.757000', null, null, null, '1b6f11d3-557f-a1ed-c420-ce052fe90750', null, '2015-08-01', '08:00:00', '08:30:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('3ca3a8de-d706-b86b-9ed9-eed9753a159e', '2015-07-01 11:43:50.886000', 'admin', 2, '2015-07-02 16:16:21.556000', 'admin', null, null, 'c58c39d1-fe5b-d6c5-a245-15912c7db9fe', 'R', '2015-07-03', '12:00:00', '12:30:00', true, null, null, '675316e4-ac53-4786-1833-4cf0b9933743');
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('5ac42756-4e6a-ae1f-85f3-488f8742d270', '2015-07-01 11:43:08.423000', 'admin', 1, '2015-07-01 11:43:08.423000', null, null, null, 'bf3b79e0-c3d9-ebf6-1fee-98daf2614a43', null, '2015-07-03', '20:00:00', '20:30:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('61a6192f-3d56-dde4-97fa-b6e2e1b36c2b', '2015-07-01 11:09:39.809000', 'admin', 1, '2015-07-01 11:09:39.809000', null, null, null, '89a6d77d-14ba-fe4a-820f-e9d7adf7c474', null, '2015-07-01', '12:30:00', '13:00:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('6276d20b-1081-1c8c-950c-e171e16e4414', '2015-06-29 16:08:13.591000', 'admin', 2, '2015-06-29 16:08:13.591000', null, '2015-06-30 15:25:50.023000', 'admin', 'c58c39d1-fe5b-d6c5-a245-15912c7db9fe', 'L', '2015-06-25', '07:30:00', '07:45:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('658f8652-900f-4468-dcdd-4a39182cea7f', '2015-06-29 16:12:36.967000', 'admin', 3, '2015-06-29 16:17:22.357000', 'admin', '2015-06-30 15:10:42.224000', 'admin', '5b83e0d9-e228-c9d6-e75e-bee2e3e7affb', null, '2015-06-25', '08:45:00', '09:00:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('65e6e398-f748-b8d2-7ad3-3dafc9c21eec', '2015-07-02 12:27:08.768000', 'admin', 1, '2015-07-02 12:27:08.768000', null, null, null, '5b83e0d9-e228-c9d6-e75e-bee2e3e7affb', null, '2015-07-22', '15:00:00', '15:30:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('6872def4-e879-b97f-ca20-84066f1fec27', '2015-07-02 10:57:36.083000', 'admin', 1, '2015-07-02 10:57:36.083000', null, null, null, 'c58c39d1-fe5b-d6c5-a245-15912c7db9fe', 'R', '2015-07-09', '12:00:00', '12:30:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('6895043a-066c-e5f4-67d5-c19397118ab0', '2015-06-26 13:25:08.624000', 'admin', 4, '2015-06-26 13:42:40.375000', 'admin', '2015-06-30 15:25:44.241000', 'admin', 'cef345f0-dd10-935e-c1f6-22dc56bce915', 'L', '2015-06-24', '18:00:00', '19:00:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('6e657e45-13e2-8540-20cf-555e1ad6d3ae', '2015-06-29 16:02:18.796000', 'admin', 3, '2015-06-29 16:07:48.652000', 'admin', '2015-06-29 16:08:20.346000', 'admin', '89a6d77d-14ba-fe4a-820f-e9d7adf7c474', 'L', '2015-06-25', '16:45:00', '17:00:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('75d569c2-1ba4-48c0-8ce1-86404f5c808b', '2015-07-01 11:52:28.330000', 'admin', 1, '2015-07-01 11:52:28.330000', null, null, null, '89a6d77d-14ba-fe4a-820f-e9d7adf7c474', null, '2015-07-03', '21:00:00', '21:30:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('83846e09-8942-c20c-7986-47d0d26df419', '2015-06-29 16:10:27.860000', 'admin', 3, '2015-06-29 16:17:30.671000', 'admin', '2015-06-30 15:10:39.512000', 'admin', '5b83e0d9-e228-c9d6-e75e-bee2e3e7affb', null, '2015-06-25', '08:00:00', '08:15:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('86da05f1-d8cf-cf1b-9c28-603a126a9ebf', '2015-07-01 11:46:40.433000', 'admin', 2, '2015-07-02 11:03:27.010000', 'admin', null, null, '1b6f11d3-557f-a1ed-c420-ce052fe90750', null, '2015-06-30', '15:00:00', '15:30:00', null, 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('88ada1b0-bc54-2224-aae3-72491242b644', '2015-06-29 16:11:30.965000', 'admin', 3, '2015-06-29 16:11:45.254000', 'admin', '2015-06-30 15:25:54.614000', 'admin', 'c58c39d1-fe5b-d6c5-a245-15912c7db9fe', 'L', '2015-06-25', '08:30:00', '08:45:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('8f6fe824-efd8-6fe9-e083-ba5a587f600e', '2015-06-30 15:28:32.633000', 'admin', 3, '2015-07-02 16:16:29.535000', 'admin', null, null, 'c58c39d1-fe5b-d6c5-a245-15912c7db9fe', 'L', '2015-07-02', '12:00:00', '12:30:00', null, null, null, '247f08a3-2683-4d02-836d-a64acc8eb092');
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('91b7b52d-015a-5975-6ea7-e7320daf9ba6', '2015-06-29 16:02:05.739000', 'admin', 3, '2015-07-02 11:01:06.012000', 'admin', null, null, '89a6d77d-14ba-fe4a-820f-e9d7adf7c474', 'L', '2015-06-30', '08:00:00', '08:30:00', false, 'der Herr ist nicht so nett', null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('a1f4a6fc-5ba2-43e8-abb3-6308467128f8', '2015-06-29 16:12:52.400000', 'admin', 2, '2015-06-29 16:12:52.400000', null, '2015-06-30 15:25:56.944000', 'admin', '89a6d77d-14ba-fe4a-820f-e9d7adf7c474', 'L', '2015-06-25', '09:30:00', '09:45:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('a47446d2-2ba1-a383-8ac8-68bcea753ca0', '2015-07-01 11:48:01.391000', 'admin', 2, '2015-07-02 11:03:45.144000', 'admin', null, null, '5b83e0d9-e228-c9d6-e75e-bee2e3e7affb', null, '2015-07-01', '16:00:00', '16:30:00', null, 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('a9d895ba-0a14-32d8-14a2-15438a167413', '2015-07-01 11:42:35.577000', 'admin', 1, '2015-07-01 11:42:35.577000', null, null, null, 'bf3b79e0-c3d9-ebf6-1fee-98daf2614a43', null, '2015-07-01', '09:00:00', '09:30:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('acbf2b9e-3b05-5d2e-91f8-004fa1ad2130', '2015-07-01 11:03:02.458000', 'admin', 1, '2015-07-01 11:03:02.458000', null, null, null, 'bf3b79e0-c3d9-ebf6-1fee-98daf2614a43', null, '2015-07-01', '09:00:00', '09:30:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('aee2572f-86da-fbeb-a405-b66bc0489c04', '2015-07-02 12:25:26.230000', 'admin', 1, '2015-07-02 12:25:26.230000', null, null, null, '5b83e0d9-e228-c9d6-e75e-bee2e3e7affb', null, '2015-07-07', '12:00:00', '12:30:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('af917831-f201-9735-451c-12b7f44f133a', '2015-07-01 11:41:17.219000', 'admin', 1, '2015-07-01 11:41:17.219000', null, null, null, '89a6d77d-14ba-fe4a-820f-e9d7adf7c474', null, '2015-07-01', '15:00:00', '15:30:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('b0b1aac6-632c-736b-4d41-5c8f702d4fd7', '2015-07-01 14:42:07.184000', 'admin', 1, '2015-07-01 14:42:07.184000', null, null, null, '1b6f11d3-557f-a1ed-c420-ce052fe90750', null, '2015-07-02', '12:00:00', '12:30:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('b88625f0-7b0d-439f-886e-e3e7bb025563', '2015-07-01 11:06:07.495000', 'admin', 2, '2015-07-02 11:00:49.720000', 'admin', null, null, '89a6d77d-14ba-fe4a-820f-e9d7adf7c474', null, '2015-07-02', '15:00:00', '15:30:00', true, null, null, '247f08a3-2683-4d02-836d-a64acc8eb092');
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('cc825fd9-2e4b-d1e6-106b-57a3a68e4d54', '2015-07-01 12:57:21.323000', 'admin', 2, '2015-07-02 11:04:00.602000', 'admin', null, null, '1b6f11d3-557f-a1ed-c420-ce052fe90750', null, '2015-07-03', '16:00:00', '16:30:00', null, 'kleine Bemerkung', null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('d4bf4b9f-7347-1425-1236-5c12f7c84c76', '2015-06-29 16:10:10.465000', 'admin', 2, '2015-06-29 16:10:10.465000', null, '2015-06-30 15:25:47.174000', 'admin', '89a6d77d-14ba-fe4a-820f-e9d7adf7c474', 'L', '2015-06-25', '07:45:00', '08:00:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('d6b8a034-a123-dc07-6775-0d9c022efb42', '2015-07-01 11:44:20.062000', 'admin', 1, '2015-07-01 11:44:20.062000', null, null, null, 'c58c39d1-fe5b-d6c5-a245-15912c7db9fe', null, '2015-07-02', '15:00:00', '15:30:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('e3b2c232-7b84-9705-c36f-7de5641d4af7', '2015-07-01 08:37:05.085000', 'admin', 2, '2015-07-02 11:24:03.632000', 'admin', null, null, 'bf3b79e0-c3d9-ebf6-1fee-98daf2614a43', 'L', '2015-07-03', '14:00:00', '14:30:00', null, null, null, '247f08a3-2683-4d02-836d-a64acc8eb092');
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('eca2714a-06b7-ebc1-f6e1-81fedf4b67fd', '2015-07-01 12:49:50.139000', 'admin', 1, '2015-07-01 12:49:50.139000', null, null, null, '1b6f11d3-557f-a1ed-c420-ce052fe90750', null, '2015-07-01', '08:00:00', '08:30:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('f104fc2a-cb37-ff1a-16e3-182602c8f4dc', '2015-07-02 13:03:15.231000', 'admin', 1, '2015-07-02 13:03:15.231000', null, null, null, '1b6f11d3-557f-a1ed-c420-ce052fe90750', null, '2015-07-01', '12:00:00', '12:30:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('f1afb4c1-212a-092f-fb8a-7ed908851b38', '2015-06-30 15:26:12.556000', 'admin', 5, '2015-07-01 08:41:59.416000', 'admin', null, null, '1b6f11d3-557f-a1ed-c420-ce052fe90750', null, '2015-06-30', '15:00:00', '15:45:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('f9db5cb8-1cfd-a099-f886-45b7200aaabb', '2015-06-26 13:23:50.673000', 'admin', 2, '2015-06-26 13:23:50.673000', null, '2015-06-30 15:25:35.490000', 'admin', 'cef345f0-dd10-935e-c1f6-22dc56bce915', 'R', '2015-06-26', '15:00:00', '18:00:00', null, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('fa19535b-e41b-072c-30e4-ac9ea69e28c7', '2015-07-02 12:24:53.477000', 'admin', 1, '2015-07-02 12:24:53.477000', null, null, null, '5b83e0d9-e228-c9d6-e75e-bee2e3e7affb', 'R', '2015-07-16', '12:00:00', '12:30:00', false, null, null, null);
INSERT INTO PUBLIC.PA_OPERATIONSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, AUGE, DATUM, BEGINN, ENDE, ERSTE_OPERATION, BESONDERHEITEN, PATIENT_BENACHRICHTIGT, ERSTELLT_VON_ID) VALUES ('fdf278c7-5c45-5349-c091-244343612ab6', '2015-06-29 16:03:15.786000', 'admin', 3, '2015-06-29 16:05:51.193000', 'admin', '2015-06-29 16:08:22.318000', 'admin', 'c58c39d1-fe5b-d6c5-a245-15912c7db9fe', 'L', '2015-06-25', '17:00:00', '17:15:00', null, null, null, null);

-- PA_VORUNTERSUCHUNGSTERMIN
INSERT INTO PUBLIC.PA_VORUNTERSUCHUNGSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, DATUM, BEGINN, ENDE) VALUES ('1962e544-680f-b435-dde9-b828c8008040', '2015-06-29 14:21:21.416000', 'admin', 3, '2015-06-29 14:29:24.079000', 'admin', '2015-06-30 08:03:19.423000', 'admin', '1b6f11d3-557f-a1ed-c420-ce052fe90750', '2015-07-02', '14:55:14', '14:55:40');
INSERT INTO PUBLIC.PA_VORUNTERSUCHUNGSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, DATUM, BEGINN, ENDE) VALUES ('2a13bc62-6952-d800-7458-8fb0a4ec5d32', '2015-07-02 15:06:32.681000', 'admin', 2, '2015-07-02 15:12:05.112000', 'admin', null, null, '1b6f11d3-557f-a1ed-c420-ce052fe90750', '2015-07-01', '12:50:00', '13:20:00');
INSERT INTO PUBLIC.PA_VORUNTERSUCHUNGSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, DATUM, BEGINN, ENDE) VALUES ('3c54f6eb-d5b7-7d18-0778-3946f6b6c432', '2015-06-30 08:03:19.412000', 'admin', 3, '2015-07-02 13:37:57.242000', 'admin', '2015-07-02 13:38:51.027000', 'admin', '1b6f11d3-557f-a1ed-c420-ce052fe90750', '2015-07-02', '14:55:14', '14:55:40');
INSERT INTO PUBLIC.PA_VORUNTERSUCHUNGSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, DATUM, BEGINN, ENDE) VALUES ('48e7db48-7812-1adb-e5c1-389e19a8ceda', '2015-07-02 15:45:53.625000', 'admin', 1, '2015-07-02 15:45:53.625000', null, null, null, '89a6d77d-14ba-fe4a-820f-e9d7adf7c474', '2015-06-30', '13:30:00', '14:00:00');
INSERT INTO PUBLIC.PA_VORUNTERSUCHUNGSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, DATUM, BEGINN, ENDE) VALUES ('65572d0a-b85b-7bdc-9c55-42ca8ca69e02', '2015-07-02 15:45:41.368000', 'admin', 1, '2015-07-02 15:45:41.368000', null, null, null, '1b6f11d3-557f-a1ed-c420-ce052fe90750', '2015-06-30', '12:00:00', '12:30:00');
INSERT INTO PUBLIC.PA_VORUNTERSUCHUNGSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, DATUM, BEGINN, ENDE) VALUES ('6f360bac-8c6b-534a-ccca-095211f94467', '2015-07-02 13:14:19.318000', 'admin', 2, '2015-07-02 13:14:19.318000', null, '2015-07-02 13:38:48.990000', 'admin', '89a6d77d-14ba-fe4a-820f-e9d7adf7c474', '2015-07-02', '14:55:14', '14:55:40');
INSERT INTO PUBLIC.PA_VORUNTERSUCHUNGSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, DATUM, BEGINN, ENDE) VALUES ('957edb28-41ce-3d11-bd08-b7789756848f', '2015-06-29 15:52:50.420000', 'admin', 3, '2015-07-02 13:38:01.662000', 'admin', '2015-07-02 13:38:53.961000', 'admin', 'c58c39d1-fe5b-d6c5-a245-15912c7db9fe', '2015-07-02', '14:55:14', '14:55:40');
INSERT INTO PUBLIC.PA_VORUNTERSUCHUNGSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, DATUM, BEGINN, ENDE) VALUES ('a86983fb-ae16-34ff-b787-7bb2be03cc8b', '2015-07-02 15:40:55.305000', 'admin', 1, '2015-07-02 15:40:55.305000', null, null, null, '1b6f11d3-557f-a1ed-c420-ce052fe90750', '2015-07-02', '12:00:00', '12:30:00');
INSERT INTO PUBLIC.PA_VORUNTERSUCHUNGSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, DATUM, BEGINN, ENDE) VALUES ('d351d879-3310-57b1-9d4a-74a75bd5928b', '2015-06-29 15:29:31.349000', 'admin', 3, '2015-07-02 13:38:06.511000', 'admin', '2015-07-02 13:38:46.517000', 'admin', '89a6d77d-14ba-fe4a-820f-e9d7adf7c474', '2015-07-02', '14:55:14', '14:55:40');
INSERT INTO PUBLIC.PA_VORUNTERSUCHUNGSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, DATUM, BEGINN, ENDE) VALUES ('d5438ce8-0079-9ea0-3e74-1a15147a0ae1', '2015-07-02 13:37:24.693000', 'admin', 2, '2015-07-02 15:11:33.286000', 'admin', null, null, '5b83e0d9-e228-c9d6-e75e-bee2e3e7affb', '2015-07-03', '15:00:00', '15:30:00');
INSERT INTO PUBLIC.PA_VORUNTERSUCHUNGSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, DATUM, BEGINN, ENDE) VALUES ('d842174b-e93e-f71e-e330-723680b0b312', '2015-07-02 13:40:49.568000', 'admin', 4, '2015-07-02 15:11:51.630000', 'admin', null, null, '89a6d77d-14ba-fe4a-820f-e9d7adf7c474', '2015-07-08', '16:00:00', '16:30:00');
INSERT INTO PUBLIC.PA_VORUNTERSUCHUNGSTERMIN (ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PATIENT_ID, DATUM, BEGINN, ENDE) VALUES ('facee3a5-76ac-9297-d554-da0f41c7996c', '2015-07-02 15:40:23.953000', 'admin', 1, '2015-07-02 15:40:23.953000', null, null, null, '5b83e0d9-e228-c9d6-e75e-bee2e3e7affb', '2015-07-03', '12:00:00', '12:30:00');
