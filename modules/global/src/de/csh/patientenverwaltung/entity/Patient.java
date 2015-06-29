/*
 * Copyright (c) 2015 de.csh.patientenverwaltung.entity
 */
package de.csh.patientenverwaltung.entity;

import javax.persistence.*;
import java.util.Date;

import com.haulmont.chile.core.annotations.MetaProperty;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import de.csh.patientenverwaltung.util.AgeCalculator;
import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;
import java.util.Set;

/**
 * @author mario
 */
@NamePattern("%s, %s|name,vorname")
@Table(name = "PA_PATIENT")
@Entity(name = "pa$Patient")
public class Patient extends StandardEntity {
    private static final long serialVersionUID = -404451934785234167L;

    @Column(name = "NAME", nullable = false)
    protected String name;

    @Column(name = "VORNAME", nullable = false)
    protected String vorname;

    @Temporal(TemporalType.DATE)
    @Column(name = "GEBURTSDATUM", nullable = false)
    protected Date geburtsdatum;

    @Column(name = "ANSCHRIFT", nullable = false)
    protected String anschrift;

    @Column(name = "PLZ")
    protected String plz;

    @Column(name = "ORT")
    protected String ort;

    @Column(name = "GESCHLECHT", nullable = false)
    protected String geschlecht;

    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "patient")
    protected Set<Voruntersuchungstermin> voruntersuchungstermine;

    public void setVoruntersuchungstermine(Set<Voruntersuchungstermin> voruntersuchungstermine) {
        this.voruntersuchungstermine = voruntersuchungstermine;
    }

    public Set<Voruntersuchungstermin> getVoruntersuchungstermine() {
        return voruntersuchungstermine;
    }


    public void setGeschlecht(Geschlecht geschlecht) {
        this.geschlecht = geschlecht == null ? null : geschlecht.getId();
    }

    public Geschlecht getGeschlecht() {
        return geschlecht == null ? null : Geschlecht.fromId(geschlecht);
    }


    @Transient
    @MetaProperty
    public String getAlter() {
        return AgeCalculator.getAge(geburtsdatum);
    }




    @Transient
    @MetaProperty
    public String getPatientenakteName() {
        return "Patientenakte " + name + ", " + vorname;
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


    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setVorname(String vorname) {
        this.vorname = vorname;
    }

    public String getVorname() {
        return vorname;
    }

    public void setGeburtsdatum(Date geburtsdatum) {
        this.geburtsdatum = geburtsdatum;
    }

    public Date getGeburtsdatum() {
        return geburtsdatum;
    }


}