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
public class CustomEventProvider implements CalendarEventProvider{
//public class CustomEventProvider extends BasicEventProvider{

    protected OperationsterminService operationsterminService = AppBeans.get(OperationsterminService.NAME);

    @Override
    public List<CalendarEvent> getEvents(Date startDate, Date endDate){

        List<Operationstermin> operationstermine = operationsterminService.ermittleOperationstermine(startDate, endDate)


        List<CalendarEvent> events = new ArrayList<CalendarEvent>();

        operationstermine.each {
            events.add(new BasicEvent(
                    start: it.beginn,
                    end: it.ende,
                    caption: it.patient?.name.toString()

            ));
        }
//        GregorianCalendar cal = new GregorianCalendar();
//        cal.setTime(new Date());
//
//        Date start = cal.getTime();
//        cal.add(GregorianCalendar.HOUR, 5);
//        Date end = cal.getTime();
//
//        BasicEvent event = new BasicEvent();
//        event.setCaption("My Event123123");
//        event.setDescription("My Event Description");
//        event.setStart(start);
//        event.setEnd(end);
//        events.add(event);
//
//
//            cal.add(GregorianCalendar.HOUR, 5);
//            Date start2 = cal.getTime();
//            cal.add(GregorianCalendar.HOUR, 5);
//            Date end2 = cal.getTime();
//
//            BasicEvent event2 = new BasicEvent();
//            event2.setCaption("My Event 2");
//            event2.setDescription("My Event Description");
//            event2.setStart(start2);
//            event2.setEnd(end2);
//            events.add(event2);




        return events;
    }
}