/*
 * Copyright (c) 2015 de.csh.patientenverwaltung.entity
 */
package de.csh.patientenverwaltung.entity;

import com.haulmont.chile.core.datatypes.impl.EnumClass;

/**
 * @author mario
 */
public enum Geschlecht implements EnumClass<String>{

    MAENNLICH("M"),
    WEIBLICH("W");

    private String id;

    Geschlecht (String value) {
        this.id = value;
    }

    public String getId() {
        return id;
    }

    public static Geschlecht fromId(String id) {
        for (Geschlecht at : Geschlecht.values()) {
            if (at.getId().equals(id)) {
                return at;
            }
        }
        return null;
    }
}