/*
 * Copyright (c) ${YEAR} ${PACKAGE_NAME}
 */

package de.csh.patientenverwaltung.web.calendar

import com.haulmont.cuba.core.global.AppBeans
import com.vaadin.ui.components.calendar.event.BasicEvent
import com.vaadin.ui.components.calendar.event.BasicEventProvider
import com.vaadin.ui.components.calendar.event.CalendarEvent
import de.csh.patientenverwaltung.entity.Operationstermin
import de.csh.patientenverwaltung.entity.Voruntersuchungstermin
import de.csh.patientenverwaltung.service.OperationsterminService


public class CustomEventProvider extends BasicEventProvider{

    protected OperationsterminService operationsterminService = AppBeans.get(OperationsterminService.NAME);

    @Override
    public List<CalendarEvent> getEvents(Date startDate, Date endDate) {

        List<Operationstermin> operationstermine = operationsterminService.ermittleOperationstermine(startDate, endDate)
        List<CalendarEvent> events = operationstermine.collect { new TimeEntryCalendarEventAdapter(operationstermin: it)}



        List<Voruntersuchungstermin> voruntersuchungstermiine = operationsterminService.ermittleVoruntersuchungstermine(startDate, endDate)
        events.addAll(voruntersuchungstermiine.collect { new VoruntersuchungsterminCalendarEventAdapter(voruntersuchungstermin: it)})

        events = events.sort {it.getStart()}.reverse()

        return events;
    }


}