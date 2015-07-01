/*
 * Copyright (c) ${YEAR} ${PACKAGE_NAME}
 */

package de.csh.patientenverwaltung.web.calendar

import com.haulmont.cuba.core.global.AppBeans
import com.vaadin.shared.ui.calendar.CalendarState
import com.vaadin.ui.components.calendar.event.BasicEvent
import com.vaadin.ui.components.calendar.event.BasicEventProvider
import com.vaadin.ui.components.calendar.event.CalendarEvent
import com.vaadin.ui.components.calendar.event.CalendarEventProvider
import de.csh.patientenverwaltung.entity.Operationstermin
import de.csh.patientenverwaltung.service.OperationsterminService
import groovy.time.TimeCategory

import javax.inject.Inject

/**
 * Created by mario on 30.06.15.
 */
//public class CustomEventProvider implements CalendarEventProvider {
public class CustomEventProvider extends BasicEventProvider{

    protected OperationsterminService operationsterminService = AppBeans.get(OperationsterminService.NAME);

    @Override
    public List<CalendarEvent> getEvents(Date startDate, Date endDate) {

        List<Operationstermin> operationstermine = operationsterminService.ermittleOperationstermine(startDate, endDate)


        List<CalendarEvent> events = new ArrayList<CalendarEvent>();

        operationstermine.each { operationstermin ->

            events.add(new BasicEvent(
                    start: ermittleStart(operationstermin),
                    end: ermittleEnde(operationstermin),
                    caption: "${operationstermin.patient?.name}, ${operationstermin.patient.vorname}",
                    styleName: "meinStyle"
            ));


        }

        return events;
    }

    private Date ermittleStart(Operationstermin operationstermin) {
        Date start = operationstermin.datum.clone()
        start.setHours(operationstermin.beginn.hours)
        start.setMinutes(operationstermin.beginn.minutes)
        start
    }

    private Date ermittleEnde(Operationstermin operationstermin) {
        Date ende = operationstermin.datum.clone()
        ende.setHours(operationstermin.ende.hours)
        ende.setMinutes(operationstermin.ende.minutes)
        ende
    }

}