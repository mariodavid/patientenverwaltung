/*
 * Copyright (c) 2015 de.csh.patientenverwaltung.gui.patient
 */
package de.csh.patientenverwaltung.gui.patient;

import com.haulmont.cuba.gui.components.AbstractEditor;
import com.haulmont.cuba.gui.components.Button;
import com.haulmont.cuba.gui.components.Component;
import com.haulmont.cuba.gui.components.Table;
import com.haulmont.reports.gui.actions.EditorPrintFormAction;
import com.haulmont.reports.gui.actions.TablePrintFormAction;
import de.csh.patientenverwaltung.entity.Patient;

import javax.inject.Inject;
import java.util.Map;

/**
 * @author mario
 */
public class PatientEdit extends AbstractEditor<Patient> {

    @Inject
    private Button patientenakteDruckenButton;

    @Inject
    private Table voruntersuchungstermineTable;

    @Override
    public void init(Map<String, Object> params) {

        EditorPrintFormAction patientenakteAction = new EditorPrintFormAction("Patientenakte", this, null);
        patientenakteAction.setCaption("Patientenakte drucken");
        patientenakteDruckenButton.setAction(patientenakteAction);

    }

    public void termineinladungDruckenAction(Component source) {
        TablePrintFormAction action = new TablePrintFormAction("Termineinladung", this, voruntersuchungstermineTable);
        action.actionPerform(source);
    }
}