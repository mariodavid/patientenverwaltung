/*
 * Copyright (c) 2015 de.csh.patientenverwaltung.entity
 */
package de.csh.patientenverwaltung.entity;

import com.haulmont.chile.core.datatypes.impl.EnumClass;

/**
 * @author mario
 */
public enum Wochentag implements EnumClass<String>{

    MONTAG("MO"),
    DIENSTAG("DI"),
    MITTWOCH("MI"),
    DONNERSTAG("DO"),
    FREITAG("FR");

    private String id;

    Wochentag (String value) {
        this.id = value;
    }

    public String getId() {
        return id;
    }

    public static Wochentag fromId(String id) {
        for (Wochentag at : Wochentag.values()) {
            if (at.getId().equals(id)) {
                return at;
            }
        }
        return null;
    }
}