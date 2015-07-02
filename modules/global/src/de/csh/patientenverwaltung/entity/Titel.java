/*
 * Copyright (c) 2015 de.csh.patientenverwaltung.entity
 */
package de.csh.patientenverwaltung.entity;

import com.haulmont.chile.core.datatypes.impl.EnumClass;

/**
 * @author mario
 */
public enum Titel implements EnumClass<String>{

    DR("Dr."),
    DR_MED("Dr. med."),
    PROF_DR_MED("Prof. Dr. med.");

    private String id;

    Titel (String value) {
        this.id = value;
    }

    public String getId() {
        return id;
    }

    public static Titel fromId(String id) {
        for (Titel at : Titel.values()) {
            if (at.getId().equals(id)) {
                return at;
            }
        }
        return null;
    }
}