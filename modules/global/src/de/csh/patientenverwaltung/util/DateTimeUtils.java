/*
 * Copyright (c) ${YEAR} ${PACKAGE_NAME}
 */

package de.csh.patientenverwaltung.util;

import org.apache.commons.lang.time.DateUtils;

import com.haulmont.cuba.core.global.AppBeans;
import com.haulmont.cuba.core.global.Messages;
import com.haulmont.cuba.core.global.UserSessionSource;
import com.haulmont.cuba.security.global.UserSession;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.time.DateUtils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by mario on 01.07.15.
 */
public final class DateTimeUtils {
        private DateTimeUtils() {
        }

        public static Calendar getCalendarWithoutTime(Date date) {
            return getCalendarWithoutTime(date, userSession().getLocale());
        }

        public static Calendar getCalendarWithoutTime(Date date, Locale locale) {
            Calendar calendar = Calendar.getInstance(locale);
            calendar.setTime(date);
            calendar.set(Calendar.HOUR_OF_DAY, 0);
            calendar.set(Calendar.MINUTE, 0);
            calendar.set(Calendar.SECOND, 0);
            calendar.set(Calendar.MILLISECOND, 0);
            return calendar;
        }

        public static Date getDateWithoutTime(Date date) {
            return getCalendarWithoutTime(date).getTime();
        }

        public static Date getFirstDayOfWeek(Date date) {
            return getFirstDayOfWeek(date, userSession().getLocale());
        }

        public static Date getFirstDayOfWeek(Date date, Locale locale) {
            Calendar calendar = getCalendarWithoutTime(date, locale);
            calendar.set(Calendar.DAY_OF_WEEK, calendar.getFirstDayOfWeek());
            return calendar.getTime();
        }

        public static Date getLastDayOfWeek(Date date) {
            return DateUtils.addDays(getFirstDayOfWeek(date), 6);
        }

        public static Date getSpecificDayOfWeek(Date date, int javaCalendarDayNumber) {
            return getSpecificDayOfWeek(date, javaCalendarDayNumber, userSession().getLocale());
        }

        public static Date getSpecificDayOfWeek(Date date, int javaCalendarDayNumber, Locale locale) {
            Calendar calendar = getCalendarWithoutTime(date, locale);
            calendar.set(Calendar.DAY_OF_WEEK, javaCalendarDayNumber);
            return calendar.getTime();
        }

        public static Date getFirstDayOfMonth(Date date) {
            Calendar calendar = getCalendarWithoutTime(date);
            calendar.set(Calendar.DAY_OF_MONTH, 1);
            return calendar.getTime();
        }

        public static Date getLastDayOfMonth(Date date) {
            Calendar calendar = getCalendarWithoutTime(date);
            calendar.set(Calendar.DAY_OF_MONTH, calendar.getActualMaximum(Calendar.DAY_OF_MONTH));
            return calendar.getTime();
        }

        public static int getCalendarDayOfWeek(Date date) {
            return DateUtils.toCalendar(date).get(Calendar.DAY_OF_WEEK);
        }

//        public static Set<String> getDatesRangeAsSeparateStrings(Date startDate, Date endDate, String format) {
//            List<Holiday> holidays = projectsService().getHolidaysForPeriod(startDate, endDate);
//            if (CollectionUtils.isEmpty(holidays)) {
//                return Collections.emptySet();
//            }
//            Set<String> stringHolidays = new HashSet<>();
//
//            for (Holiday holiday : holidays) {
//                stringHolidays.addAll(holidayAsSeparateStrings(holiday, startDate, endDate, format));
//            }
//
//            return stringHolidays;
//        }

        public static DateFormat getDateFormat() {
            return new SimpleDateFormat(messages().getMainMessage("dateFormat"));
        }

//        private static Set<String> holidayAsSeparateStrings(Holiday holiday, Date startDate, Date endDate, String format) {
//            Date start;
//            Date end;
//            if (holiday.getStartDate().getTime() >= startDate.getTime()) {
//                start = holiday.getStartDate();
//            } else {
//                start = startDate;
//            }
//            if (holiday.getEndDate().getTime() <= endDate.getTime()) {
//                end = holiday.getEndDate();
//            } else {
//                end = endDate;
//            }
//
//            if (start.equals(startDate) && end.equals(endDate)) {
//                return Collections.emptySet();
//            } else {
//                Set<String> stringDates = new HashSet<>();
//                DateFormat formatter = new SimpleDateFormat(format);
//                while (start.getTime() <= end.getTime()) {
//                    stringDates.add(formatter.format(start));
//                    start = DateUtils.addDays(start, 1);
//                }
//
//                return stringDates;
//            }
//        }

        private static Messages messages() {
            return AppBeans.get(Messages.NAME, Messages.class);
        }

        private static UserSession userSession() {
            return AppBeans.get(UserSessionSource.class).getUserSession();
        }

//        private static ProjectsService projectsService() { return AppBeans.get(ProjectsService.NAME); }
}
