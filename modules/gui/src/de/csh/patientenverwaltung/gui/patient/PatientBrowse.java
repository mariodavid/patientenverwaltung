/*
 * Copyright (c) 2015 de.csh.patientenverwaltung.gui.patient
 */
package de.csh.patientenverwaltung.gui.patient;

import com.haulmont.cuba.gui.components.AbstractLookup;
import com.haulmont.cuba.gui.components.Button;
import com.haulmont.cuba.gui.components.Table;
import com.haulmont.reports.gui.actions.TablePrintFormAction;

import javax.inject.Inject;
import java.util.Map;

/**
 * @author mario
 */
public class PatientBrowse extends AbstractLookup {
    
    
    @Inject
    private Button patientenakteDruckenButton;


    @Inject
    private Table patientsTable;

    @Override
    public void init(Map<String, Object> params) {

        TablePrintFormAction action = new TablePrintFormAction("Patientenakte", this, patientsTable);
        action.setCaption("Patientenakte drucken");
        patientsTable.addAction(action);
        patientenakteDruckenButton.setAction(action);
    }

}