/*
 * Copyright (c) 2015 de.csh.patientenverwaltung.service
 */
package de.csh.patientenverwaltung.service;

import de.csh.patientenverwaltung.entity.Operationstermin;
import de.csh.patientenverwaltung.entity.Voruntersuchungstermin;

import java.util.Date;
import java.util.List;

public interface OperationsterminService {
    String NAME = "pa_OperationsterminService";

    List<Operationstermin> ermittleOperationstermine(Date startDate, Date endDate);
    List<Voruntersuchungstermin> ermittleVoruntersuchungstermine(Date startDate, Date endDate);
}