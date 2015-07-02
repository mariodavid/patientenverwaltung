/*
 * Copyright (c) 2015 de.csh.patientenverwaltung.web
 */
package de.csh.patientenverwaltung.web;

import com.haulmont.cuba.gui.WindowManager;
import com.haulmont.cuba.web.app.mainwindow.AppMainWindow;
import com.haulmont.cuba.gui.components.Component;

/**
 * @author mario
 */
public class ExtMainWindow extends AppMainWindow {

    public void opKalenderOeffnen(Component source) {
        openWindow("calendar-screen", WindowManager.OpenType.THIS_TAB);
    }

    public void patientenLookupAction(Component source) {


        openWindow("pa$Patient.lookup", WindowManager.OpenType.THIS_TAB);
    }
}
