/*
 * Copyright (c) 2015 de.csh.patientenverwaltung.entity
 */
package de.csh.patientenverwaltung.entity;

import com.haulmont.chile.core.datatypes.impl.EnumClass;

/**
 * @author mario
 */
public enum Anrede implements EnumClass<String>{

    HERR("Herr"),
    FRAU("Frau");

    private String id;

    Anrede (String value) {
        this.id = value;
    }

    public String getId() {
        return id;
    }

    public static Anrede fromId(String id) {
        for (Anrede at : Anrede.values()) {
            if (at.getId().equals(id)) {
                return at;
            }
        }
        return null;
    }
}