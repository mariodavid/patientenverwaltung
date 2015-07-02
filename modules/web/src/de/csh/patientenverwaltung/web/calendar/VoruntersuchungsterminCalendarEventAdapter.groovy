/*
 * Copyright (c) ${YEAR} ${PACKAGE_NAME}
 */

package de.csh.patientenverwaltung.web.calendar

import com.vaadin.ui.components.calendar.event.BasicEvent
import de.csh.patientenverwaltung.entity.Patient
import de.csh.patientenverwaltung.entity.Voruntersuchungstermin
import groovy.time.TimeCategory

public class VoruntersuchungsterminCalendarEventAdapter extends BasicEvent {

    Voruntersuchungstermin voruntersuchungstermin;


    @Override
    public String getCaption() {
        Patient patient = voruntersuchungstermin.patient

        return "${patient?.name} ${patient?.vorname}"
    }

    @Override
    public String getDescription() {
        return "Voruntersuchungstermin: $voruntersuchungstermin.datum ($caption)"
    }

    @Override
    public Date getStart() {
        Date start = voruntersuchungstermin.datum.clone()
        start.setHours(voruntersuchungstermin.beginn.hours)
        start.setMinutes(voruntersuchungstermin.beginn.minutes)
        return start
    }

    @Override
    public Date getEnd() {
        Date ende = voruntersuchungstermin.datum.clone()
        ende.setHours(voruntersuchungstermin.ende.hours)
        ende.setMinutes(voruntersuchungstermin.ende.minutes)
        return ende
    }


    @Override
    public boolean isAllDay() {
        return false;
    }

    @Override
    String getStyleName() {
        return "meinStyle"
    }
}