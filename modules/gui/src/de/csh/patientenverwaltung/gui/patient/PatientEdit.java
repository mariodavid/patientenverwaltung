/*
 * Copyright (c) 2015 de.csh.patientenverwaltung.gui.patient
 */
package de.csh.patientenverwaltung.gui.patient;

import com.haulmont.cuba.gui.components.AbstractEditor;
import com.haulmont.cuba.gui.components.Button;
import com.haulmont.cuba.gui.components.Table;
import com.haulmont.reports.gui.actions.TablePrintFormAction;
import de.csh.patientenverwaltung.entity.Patient;

import javax.inject.Inject;
import java.util.Map;

/**
 * @author mario
 */
public class PatientEdit extends AbstractEditor<Patient> {


    @Inject
    private Button termineinladungDruckenButton;


    @Inject
    private Table voruntersuchungstermineTable;

    @Override
    public void init(Map<String, Object> params) {

        TablePrintFormAction action = new TablePrintFormAction("Termineinladung", this, voruntersuchungstermineTable);
        action.setCaption("Termineinladung drucken");
        voruntersuchungstermineTable.addAction(action);
        termineinladungDruckenButton.setAction(action);
    }

}