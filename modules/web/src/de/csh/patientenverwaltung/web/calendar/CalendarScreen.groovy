/*
 * Copyright (c) ${YEAR} ${PACKAGE_NAME}
 */

package de.csh.patientenverwaltung.web.calendar

import com.haulmont.cuba.core.global.*
import com.haulmont.cuba.gui.WindowManager;
import com.haulmont.cuba.gui.components.*
import com.haulmont.cuba.security.global.UserSession;
import com.haulmont.cuba.web.gui.components.WebComponentsHelper

//import com.haulmont.timesheets.entity.Holiday;
//import com.haulmont.timesheets.entity.TimeEntry;
//import com.haulmont.timesheets.entity.TimeEntryStatus;
//import com.haulmont.timesheets.global.*;
//import com.haulmont.timesheets.gui.ComponentsHelper;
//import com.haulmont.timesheets.gui.commandline.CommandLineFrameController;
//import com.haulmont.timesheets.gui.holiday.HolidayEdit;
//import com.haulmont.timesheets.gui.timeentry.TimeEntryEdit;
//import com.haulmont.timesheets.web.toolkit.ui.TimeSheetsCalendar;
import com.vaadin.event.Action
import com.vaadin.ui.AbstractOrderedLayout;
import com.vaadin.ui.Calendar;
import com.vaadin.ui.components.calendar.CalendarComponentEvents;
import com.vaadin.ui.components.calendar.CalendarDateRange
import com.vaadin.ui.components.calendar.event.CalendarEvent
import de.csh.patientenverwaltung.entity.Operationstermin
import de.csh.patientenverwaltung.entity.Voruntersuchungstermin
import de.csh.patientenverwaltung.gui.operationstermin.OperationsterminEdit
import de.csh.patientenverwaltung.gui.voruntersuchungstermin.VoruntersuchungsterminEdit
import de.csh.patientenverwaltung.util.DateTimeUtils
import groovy.time.TimeCategory
import org.apache.commons.lang.time.DateUtils;

import javax.inject.Inject

/**
 * Created by mario on 30.06.15.
 */
class CalendarScreen extends AbstractWindow {
    @Inject
    protected BoxLayout calBox;
    @Inject
    protected BoxLayout summaryBox;
    @Inject
    protected Label monthLabel;
    @Inject
    protected DateField monthSelector;
    @Inject
    protected ViewRepository viewRepository;
    @Inject
    protected UserSession userSession;
    @Inject
    protected Messages messages;
    @Inject
    protected TimeSource timeSource;

    protected Calendar calendar

//    @Inject
//    protected ValidationTools validationTools;
    @Inject
    protected UuidSource uuidSource;
//    @Inject
//    protected DateTools dateTools;
    @Inject
    protected Label monthSummary;

//    protected TimeSheetsCalendar calendar;
    protected Date firstDayOfMonth;
//    protected TimeSheetsCalendarEventProvider dataSource;

    @Override
    public void init(Map<String, Object> params) {

//        showNotification(dsContext.toString(), IFrame.NotificationType.TRAY)

//        dsContext.getDataSupplier().loadList()
        firstDayOfMonth = DateTimeUtils.getFirstDayOfMonth(timeSource.currentTimestamp());

        initCalendar();
//        initShowCommandLineAction();

//        monthSelector.addListener(new ValueListener() {
//            @Override
//            public void valueChanged(Object source, String property, Object prevValue, Object value) {
//                firstDayOfMonth = DateTimeUtils.getFirstDayOfMonth((Date) value);
//                updateCalendarRange();
//            }
//        });

//        commandLine.setTimeEntriesHandler(new CommandLineFrameController.ResultTimeEntriesHandler() {
//            @Override
//            public void handle(List<TimeEntry> resultTimeEntries) {
//                if (CollectionUtils.isNotEmpty(resultTimeEntries)) {
//                    //todo eude what if there are more than 1 entry
//                    final TimeEntry voruntersuchungstermin = resultTimeEntries.get(0);
//                    ResultAndCause validationResult = validationTools.validateTags(voruntersuchungstermin);
//                    if (validationResult.isNegative) {
//                        showOptionDialog(getMessage("caption.attention"),
//                                validationResult.cause + getMessage("confirmation.manuallyTagSetting"),
//                                MessageType.CONFIRMATION_HTML,
//                                Arrays.<com.haulmont.cuba.gui.components.Action>asList(
//                                        new DialogAction(DialogAction.Type.YES) {
//                                            @Override
//                                            public void actionPerform(Component component) {
//                                                doHandle(voruntersuchungstermin);
//                                            }
//                                        },
//                                        new DialogAction(DialogAction.Type.NO)));
//                    } else {
//                        doHandle(voruntersuchungstermin);
//                    }
//                }
//            }
//
//            private void doHandle(TimeEntry voruntersuchungstermin) {
//                final List<TimeEntry> results = new ArrayList<>();
//                java.util.Calendar javaCalendar = java.util.Calendar.getInstance();
//                javaCalendar.setTime(firstDayOfMonth);
//                int currentMonth = javaCalendar.get(java.util.Calendar.MONTH);
//                int nextDayMonth = javaCalendar.get(java.util.Calendar.MONTH);
//
//                while (currentMonth == nextDayMonth) {
//                    if (dateTools.isWorkday(javaCalendar.getTime())) {
//                        TimeEntry copy = (TimeEntry) InstanceUtils.copy(voruntersuchungstermin);
//                        copy.setId(uuidSource.createUuid());
//                        copy.setDate(javaCalendar.getTime());
//                        copy.setStatus(TimeEntryStatus.NEW);
//                        copy.setUser(userSession.getCurrentOrSubstitutedUser());
//                        results.add(copy);
//                    }
//
//                    javaCalendar.add(java.util.Calendar.DAY_OF_MONTH, 1);
//                    nextDayMonth = javaCalendar.get(java.util.Calendar.MONTH);
//                }
//
//                CommitContext context = new CommitContext();
//                context.getCommitInstances().addAll(results);
//                @SuppressWarnings("unchecked")
//                Set<TimeEntry> committed = (Set) getDsContext().getDataSupplier().commit(context);
//                List<CalendarEvent> events = new ArrayList<>();
//                for (TimeEntry entry : committed) {
//                    events.add(new OperationsterminCalendarEventAdapter(entry));
//                }
//                dataSource.addEvents(events);
//            }
//        });
    }

//    protected void initShowCommandLineAction() {
//        AbstractAction action = new AbstractAction("showCommandLine") {
//            @Override
//            public String getCaption() {
//                return "";
//            }
//
//            @Override
//            public void actionPerform(Component component) {
//                if (commandLine.getHeight() <= 0) {
//                    commandLine.setHeight("70px");
//                } else {
//                    commandLine.setHeight("0px");
//                }
//            }
//        };
//        action.setShortcut("CTRL-ALT-Q");
//        addAction(action);
//    }

    protected void initCalendar() {
//        dataSource = new TimeSheetsCalendarEventProvider(userSession.getCurrentOrSubstitutedUser());
//        dataSource.addEventSetChangeListener(new CalendarEventProvider.EventSetChangeListener() {
//            @Override
//            public void eventSetChange(CalendarEventProvider.EventSetChangeEvent changeEvent) {
//                updateSummaryColumn();
//            }
//        });

        calendar = new Calendar();


        calendar.setWidth("100%");
        calendar.setHeight("100%");
        calendar.setTimeFormat(Calendar.TimeFormat.Format24H)
        calendar.setFirstVisibleHourOfDay(7)
        calendar.setLastVisibleHourOfDay(19)
        calendar.setFirstVisibleDayOfWeek(0)
        calendar.setLastVisibleDayOfWeek(5)
//        calendar.setMoreMsgFormat(messages.getMessage(getClass(), "calendar.moreMsgFormat"));
        calendar.setDropHandler(null);
        calendar.setEventCaptionAsHtml(true)
        calendar.setHandler(new CalendarComponentEvents.EventMoveHandler() {
            @Override
            public void eventMove(CalendarComponentEvents.MoveEvent event) {

                showNotification(event.getNewStart().toString(), IFrame.NotificationType.TRAY)
//                if (event.getCalendarEvent() instanceof OperationsterminCalendarEventAdapter) {
//                    OperationsterminCalendarEventAdapter adapter = (OperationsterminCalendarEventAdapter) event.getCalendarEvent();
//                    adapter.getTimeEntry().setDate(event.getNewStart());
//                    TimeEntry committed = getDsContext().getDataSupplier().commit(adapter.getTimeEntry(),
//                            viewRepository.getView(TimeEntry.class, "voruntersuchungstermin-full"));
//                    dataSource.changeEventTimeEntity(committed);
//                    updateSummaryColumn();
//                }
            }
        });
//        calendar.setHandler((CalendarComponentEvents.WeekClickHandler) null);
//        calendar.setHandler(new CalendarComponentEvents.DateClickHandler() {
//            @Override
//            public void dateClick(CalendarComponentEvents.DateClickEvent event) {
//                TimeEntry voruntersuchungstermin = new TimeEntry();
//                voruntersuchungstermin.setDate(event.getDate());
//                editOperationstermin(voruntersuchungstermin);
//            }
//        });
//        calendar.setHandler((CalendarComponentEvents.EventResizeHandler) null);

        calendar.setHandler(new CalendarComponentEvents.EventClickHandler() {
            @Override
            public void eventClick(CalendarComponentEvents.EventClick event) {
                if (event.getCalendarEvent() instanceof OperationsterminCalendarEventAdapter) {

                    OperationsterminCalendarEventAdapter eventAdapter = (OperationsterminCalendarEventAdapter) event.getCalendarEvent();
                    editOperationstermin(eventAdapter.operationstermin);
                }

                else if (event.getCalendarEvent() instanceof VoruntersuchungsterminCalendarEventAdapter) {
                    VoruntersuchungsterminCalendarEventAdapter eventAdapter = (VoruntersuchungsterminCalendarEventAdapter) event.getCalendarEvent();
                    editVoruntersuchungstermin(eventAdapter.voruntersuchungstermin);
                }

            }
        });

        calendar.addActionHandler(new CalendarActionHandler())
        calendar.setEventProvider(new CustomEventProvider())

        calendar.setStartDate(new Date());
        use(TimeCategory) {

            calendar.setEndDate(new Date() + 30.days);
        }
        AbstractOrderedLayout calendarLayout = WebComponentsHelper.unwrap(calBox);
        calendarLayout.addComponent(calendar);
//        calendarLayout.setExpandRatio(calendar, 1);
//
        updateCalendarRange();
//        updateSummaryColumn();
    }

    public void setToday() {
//        firstDayOfMonth = DateTimeUtils.getFirstDayOfMonth(timeSource.currentTimestamp());
        updateCalendarRange();
    }

    public void showNextMonth() {
        firstDayOfMonth = DateUtils.addMonths(firstDayOfMonth, 1);
        updateCalendarRange();
    }

    public void showPreviousMonth() {
        firstDayOfMonth = DateUtils.addMonths(firstDayOfMonth, -1);
        updateCalendarRange();
    }

    public void addTimeEntry() {
        editOperationstermin(new Operationstermin());
    }

//    protected void updateSummaryColumn() {
//        summaryBox.removeAll();
//        CubaVerticalActionsLayout summaryLayout = WebComponentsHelper.unwrap(summaryBox);
//        CubaVerticalActionsLayout summaryCaptionVbox = new CubaVerticalActionsLayout();
//        summaryCaptionVbox.setHeight("30px");
//        summaryCaptionVbox.setWidth("100%");
//        com.vaadin.ui.Label summaryCaption = new com.vaadin.ui.Label();
//        summaryCaption.setContentMode(ContentMode.HTML);
//        summaryCaption.setValue(getMessage("label.summaryCaption"));
//        summaryCaption.setWidthUndefined();
//        summaryCaptionVbox.addComponent(summaryCaption);
//        summaryCaptionVbox.setComponentAlignment(summaryCaption, com.vaadin.ui.Alignment.MIDDLE_CENTER);
//        summaryLayout.addComponent(summaryCaptionVbox);
//
//        FactAndPlan[] summariesByWeeks = calculateSummariesByWeeks();
//        FactAndPlan summaryForMonth = new FactAndPlan();
//        for (int i = 1; i < summariesByWeeks.length; i++) {
//            com.vaadin.ui.Label hourLabel = new com.vaadin.ui.Label();
//            hourLabel.setContentMode(ContentMode.HTML);
//            FactAndPlan summaryForTheWeek = summariesByWeeks[i];
//            if (summaryForTheWeek == null) {
//                summaryForTheWeek = new FactAndPlan();
//            }
//            if (summaryForTheWeek.isMatch()) {
//                hourLabel.setValue(formatMessage("label.hoursSummary",
//                        summaryForTheWeek.fact.getHours(), summaryForTheWeek.fact.getMinutes()));
//            } else {
//                hourLabel.setValue(formatMessage("label.hoursSummaryNotMatch",
//                        summaryForTheWeek.fact.getHours(), summaryForTheWeek.fact.getMinutes(),
//                        summaryForTheWeek.plan.getHours(), summaryForTheWeek.plan.getMinutes()));
//                hourLabel.addStyleName("overtime");
//            }
//            hourLabel.setWidthUndefined();
//            summaryLayout.addComponent(hourLabel);
//            summaryLayout.setExpandRatio(hourLabel, 1);
//            summaryLayout.setComponentAlignment(hourLabel, com.vaadin.ui.Alignment.MIDDLE_CENTER);
//
//            summaryForMonth.fact.add(summaryForTheWeek.fact);
//            summaryForMonth.plan.add(summaryForTheWeek.plan);
//        }
//
//        if (summaryForMonth.isMatch()) {
//            monthSummary.setValue(formatMessage("label.monthSummaryFormat",
//                    summaryForMonth.fact.getHours(), summaryForMonth.fact.getMinutes()));
//            monthSummary.setStyleName("month-summary");
//        } else {
//            monthSummary.setValue(formatMessage("label.monthSummaryFormatNotMatch",
//                    summaryForMonth.fact.getHours(), summaryForMonth.fact.getMinutes(),
//                    summaryForMonth.plan.getHours(), summaryForMonth.plan.getMinutes()));
//            monthSummary.setStyleName("month-summary-overtime");
//        }
//    }
//
//    protected FactAndPlan[] calculateSummariesByWeeks() {
//        Date start = firstDayOfMonth;
//        java.util.Calendar javaCalendar = java.util.Calendar.getInstance(userSession.getLocale());
//        javaCalendar.setTime(firstDayOfMonth);
//        int countOfWeeksInTheMonth = javaCalendar.getActualMaximum(java.util.Calendar.WEEK_OF_MONTH);
//        Date lastDayOfMonth = DateTimeUtils.getLastDayOfMonth(firstDayOfMonth);
//
//        FactAndPlan[] summariesByWeeks = new FactAndPlan[countOfWeeksInTheMonth + 1];
//        int weekIndex = 0;
//        for (; start.getTime() <= lastDayOfMonth.getTime(); start = DateUtils.addWeeks(start, 1)) {
//            Date firstDayOfWeek = DateTimeUtils.getFirstDayOfWeek(start);
//            Date lastDayOfWeek = DateTimeUtils.getLastDayOfWeek(start);
//
//            if (firstDayOfWeek.getTime() < firstDayOfMonth.getTime()) {
//                firstDayOfWeek = firstDayOfMonth;
//            }
//            if (lastDayOfWeek.getTime() > lastDayOfMonth.getTime()) {
//                lastDayOfWeek = lastDayOfMonth;
//            }
//            FactAndPlan summaryForTheWeek = new FactAndPlan();
//            User currentOrSubstitutedUser = userSession.getCurrentOrSubstitutedUser();
//            summaryForTheWeek.fact.setTime(
//                    validationTools.actualWorkHoursForPeriod(firstDayOfWeek, lastDayOfWeek, currentOrSubstitutedUser)
//            );
//            summaryForTheWeek.plan.setTime(
//                    validationTools.workHoursForPeriod(firstDayOfWeek, lastDayOfWeek, currentOrSubstitutedUser)
//            );
//            summariesByWeeks[++weekIndex] = summaryForTheWeek;
//        }
//        return summariesByWeeks;
//    }

    protected void updateCalendarRange() {
        Date lastDayOfMonth = DateTimeUtils.getLastDayOfMonth(firstDayOfMonth);

//        dataSource.updateWithRange(
//                DateTimeUtils.getFirstDayOfWeek(firstDayOfMonth),
//                DateTimeUtils.getLastDayOfWeek(lastDayOfMonth));

        calendar.setStartDate(firstDayOfMonth);
        calendar.setEndDate(lastDayOfMonth);

//        updateSummaryColumn();
        updateMonthCaption();
    }

    protected void updateMonthCaption() {
        monthLabel.setValue(String.format("%s %s", getMonthName(firstDayOfMonth), getYear(firstDayOfMonth)));
    }

    protected String getMonthName(Date firstDayOfMonth) {
        return DateUtils.toCalendar(firstDayOfMonth).getDisplayName(java.util.Calendar.MONTH, java.util.Calendar.LONG, userSession.getLocale());
    }
//
//
    protected int getYear(Date firstDayOfMonth) {
        return DateUtils.toCalendar(firstDayOfMonth).get(java.util.Calendar.YEAR);
    }

    protected void editOperationstermin(Operationstermin termin) {
        final OperationsterminEdit editor = openEditor('pa$Operationstermin.edit', termin, WindowManager.OpenType.DIALOG);
        editor.addListener(new Window.CloseListener() {
            @Override
            public void windowClosed(String actionId) {
                if (COMMIT_ACTION_ID.equals(actionId)) {
//                    dataSource.changeEventTimeEntity(editor.getItem());


                    def optermin = editor.getItem()
                    def meldung = "Operationstermin: ${optermin.patient.name}, ${optermin.patient.vorname} (${optermin.datum}) erfolgreich angelegt"
                    showNotification(meldung, IFrame.NotificationType.TRAY)

                    openWindow("calendar-screen", WindowManager.OpenType.THIS_TAB)
                }
            }
        });
    }
    protected void editVoruntersuchungstermin(Voruntersuchungstermin termin) {
        final VoruntersuchungsterminEdit editor = openEditor('pa$Voruntersuchungstermin.edit', termin, WindowManager.OpenType.DIALOG);
        editor.addListener(new Window.CloseListener() {
            @Override
            public void windowClosed(String actionId) {
                if (COMMIT_ACTION_ID.equals(actionId)) {
//                    dataSource.changeEventTimeEntity(editor.getItem());


                    def voruntersuchungstermin = editor.getItem()
                    def meldung = "Voruntersuchungstermin: ${voruntersuchungstermin.patient.name}, ${voruntersuchungstermin.patient.vorname} (${voruntersuchungstermin.datum}) erfolgreich angelegt"
                    showNotification(meldung, IFrame.NotificationType.TRAY)

                    openWindow("calendar-screen", WindowManager.OpenType.THIS_TAB)
                }
            }
        });
    }

    public void showMonatsansicht(Component source) {
        calendar.setStartDate(new Date());
        use(TimeCategory) {

            calendar.setEndDate(new Date() + 30.days);
        }
    }

    public void showWochenansicht(Component source) {
        Date wochenbeginn = DateTimeUtils.getFirstDayOfWeek(new Date());
        Date wochenende = DateTimeUtils.getLastDayOfWeek(new Date());

        calendar.setStartDate(wochenbeginn);
        calendar.setEndDate(wochenende);
    }

    public void showTagesansicht() {
        calendar.setStartDate(new Date());
        calendar.setEndDate(new Date());
    }

    public void showZweiWochenansicht ( ) {
        Date wochenbeginn = DateTimeUtils.getFirstDayOfWeek(new Date());
        Date wochenende = DateTimeUtils.getLastDayOfWeek(new Date());

        calendar.setStartDate(wochenbeginn);
        use(TimeCategory) {
            calendar.setEndDate(wochenende + 7.days);
        }
    }

    public void addVoruntersuchungstermin() {
        editVoruntersuchungstermin(new Voruntersuchungstermin());
    }

    protected class CalendarActionHandler implements Action.Handler {
        protected Action addEventAction = new Action(messages.getMessage(getClass(), "addTimeEntry"));
        protected Action addVoruntersuchungsterminAction = new Action(messages.getMessage(getClass(), "addVoruntersuchungstermin"));
        protected Action deleteEventAction = new Action(messages.getMessage(getClass(), "deleteTimeEntry"));
        protected Action copyEventAction = new Action(messages.getMessage(getClass(), "copyTimeEntry"));

        @Override
        public Action[] getActions(Object target, Object sender) {
            // The target should be a CalendarDateRage for the
            // entire day from midnight to midnight.
            if (!(target instanceof CalendarDateRange))
                return null;
            CalendarDateRange dateRange = (CalendarDateRange) target;

            // The sender is the Calendar object
            if (!(sender instanceof Calendar))
                return null;
            Calendar calendar = (Calendar) sender;

            // List all the events on the requested day
            List<CalendarEvent> events = calendar.getEvents(dateRange.getStart(), dateRange.getEnd());

            if (events.size() == 0)
                return [addEventAction, addVoruntersuchungsterminAction];
            else
                return [addEventAction, addVoruntersuchungsterminAction /*, copyEventAction, deleteEventAction */]
        }

        @Override
        public void handleAction(Action action, Object sender, Object target) {
            if (action == addEventAction) {
                // Check that the click was not done on an event
                if (target instanceof Date) {
                    Date datum = (Date) target;
                    Operationstermin termin = new Operationstermin();
                    termin.setDatum(datum);
                    if (datum.hours != 0) {
                        termin.setBeginn(datum)
                    }
                    editOperationstermin(termin);
                } else {
                    showNotification(messages.getMessage(getClass(), "cantAddTimeEntry"),
                            IFrame.NotificationType.WARNING);
                }
            }
            else if (action == addVoruntersuchungsterminAction) {
                // Check that the click was not done on an event
                if (target instanceof Date) {
                    Date datum = (Date) target;
                    Voruntersuchungstermin termin = new Voruntersuchungstermin();
                    termin.setDatum(datum);
                    if (datum.hours != 0) {
                        termin.setBeginn(datum)
                    }
                    editVoruntersuchungstermin(termin);
                } else {
                    showNotification(messages.getMessage(getClass(), "cantAddTimeEntry"),
                            IFrame.NotificationType.WARNING);
                }
            }
// else if (action == deleteEventAction) {
//                // Check if the action was clicked on top of an event
//                if (target instanceof HolidayCalendarEventAdapter) {
//                    showNotification(messages.getMessage(getClass(), "cantDeleteHoliday"),
//                            IFrame.NotificationType.WARNING);
//                } else if (target instanceof OperationsterminCalendarEventAdapter) {
//                    OperationsterminCalendarEventAdapter event = (OperationsterminCalendarEventAdapter) target;
//                    new EventRemoveAction("eventRemove", getFrame(), event).actionPerform(null);
//                } else {
//                    showNotification(messages.getMessage(getClass(), "cantDeleteTimeEntry"),
//                            IFrame.NotificationType.WARNING);
//                }
//            }
        }
    }

//    protected class EventRemoveAction extends ComponentsHelper.CustomRemoveAction {
//
//        protected OperationsterminCalendarEventAdapter event;
//
//        protected EventRemoveAction(String id, IFrame frame, OperationsterminCalendarEventAdapter event) {
//            super(id, frame);
//            this.event = event;
//        }
//
//        @Override
//        protected void doRemove() {
//            calendar.removeEvent(event);
//            getDsContext().getDataSupplier().remove(event.getTimeEntry());
//        }
//    }
//
//    protected static class FactAndPlan {
//
//        protected HoursAndMinutes fact = new HoursAndMinutes();
//        protected HoursAndMinutes plan = new HoursAndMinutes();
//
//        protected boolean isMatch() {
//            return fact.equals(plan);
//        }
//    }
}
