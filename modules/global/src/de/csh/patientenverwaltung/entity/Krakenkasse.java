/*
 * Copyright (c) 2015 de.csh.patientenverwaltung.entity
 */
package de.csh.patientenverwaltung.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;

/**
 * @author mario
 */
@NamePattern("%s|name")
@Table(name = "PA_KRAKENKASSE")
@Entity(name = "pa$Krakenkasse")
public class Krakenkasse extends StandardEntity {
    private static final long serialVersionUID = -8781537394188281780L;

    @Column(name = "NAME")
    protected String name;

    @Column(name = "ANSCHRIFT")
    protected String anschrift;

    @Column(name = "PLZ")
    protected String plz;

    @Column(name = "ORT")
    protected String ort;

    @Column(name = "TELEFON")
    protected String telefon;

    @Column(name = "FAX")
    protected String fax;

    @Column(name = "EMAIL")
    protected String email;

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setAnschrift(String anschrift) {
        this.anschrift = anschrift;
    }

    public String getAnschrift() {
        return anschrift;
    }

    public void setPlz(String plz) {
        this.plz = plz;
    }

    public String getPlz() {
        return plz;
    }

    public void setOrt(String ort) {
        this.ort = ort;
    }

    public String getOrt() {
        return ort;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }

    public String getTelefon() {
        return telefon;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getFax() {
        return fax;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }


}