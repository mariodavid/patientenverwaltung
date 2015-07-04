/*
 * Copyright (c) ${YEAR} ${PACKAGE_NAME}
 */

package de.csh.patientenverwaltung.web.calendar

import com.haulmont.cuba.gui.ComponentsHelper
import com.vaadin.ui.components.calendar.event.BasicEvent
import de.csh.patientenverwaltung.entity.Operationstermin
import de.csh.patientenverwaltung.entity.Patient

public class OperationsterminCalendarEventAdapter extends BasicEvent {

    Operationstermin operationstermin;


    @Override
    public String getCaption() {
        Patient patient = operationstermin.patient

        return "${patient?.name}, ${patient?.vorname}"
    }

    @Override
    public String getDescription() {
        return "Operationstermin: $operationstermin.datum ($caption)"
    }

    @Override
    public Date getStart() {
        Date start = operationstermin.datum.clone()
        start.setHours(operationstermin.beginn.hours)
        start.setMinutes(operationstermin.beginn.minutes)
        return start
    }

    @Override
    public Date getEnd() {
        Date ende = operationstermin.datum.clone()
        ende.setHours(operationstermin.ende.hours)
        ende.setMinutes(operationstermin.ende.minutes)
        return ende
    }


    @Override
    public boolean isAllDay() {
        return false;
    }
}