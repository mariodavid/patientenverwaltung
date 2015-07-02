/*
 * Copyright (c) 2015 de.csh.patientenverwaltung.gui.operationstermin
 */
package de.csh.patientenverwaltung.gui.operationstermin

import com.haulmont.cuba.gui.components.AbstractEditor
import com.haulmont.cuba.gui.components.TimeField
import com.haulmont.cuba.gui.data.ValueListener
import de.csh.patientenverwaltung.entity.Operationstermin
import groovy.time.TimeCategory

import javax.inject.Named

public class OperationsterminEdit extends AbstractEditor<Operationstermin> {


    @Named("fieldGroup.beginn")
    private TimeField beginn;

    @Named("fieldGroup.ende")
    private TimeField ende;

    @Override
    public void init(Map<String, Object> params) {
        beginn.addListener(new ValueListener() {
            @Override
            public void valueChanged(Object source, String property, Object prevValue, Object value) {
                Date endeDate = null
                use(TimeCategory) {
                    if (value) {
                        endeDate = (Date) value + 30.minutes
                    }
                }
                ende.setValue(endeDate);
            }
        });
    }



}