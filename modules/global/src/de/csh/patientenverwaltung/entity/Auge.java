/*
 * Copyright (c) 2015 de.csh.patientenverwaltung.entity
 */
package de.csh.patientenverwaltung.entity;

import com.haulmont.chile.core.datatypes.impl.EnumClass;

/**
 * @author mario
 */
public enum Auge implements EnumClass<String>{

    RECHTS("R"),
    LINKS("L");

    private String id;

    Auge (String value) {
        this.id = value;
    }

    public String getId() {
        return id;
    }

    public static Auge fromId(String id) {
        for (Auge at : Auge.values()) {
            if (at.getId().equals(id)) {
                return at;
            }
        }
        return null;
    }
}