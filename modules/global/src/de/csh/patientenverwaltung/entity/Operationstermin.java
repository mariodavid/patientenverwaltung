/*
 * Copyright (c) 2015 de.csh.patientenverwaltung.entity
 */
package de.csh.patientenverwaltung.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import com.haulmont.cuba.core.entity.StandardEntity;
import java.util.Set;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

/**
 * @author mario
 */
@Table(name = "PA_OPERATIONSTERMIN")
@Entity(name = "pa$Operationstermin")
public class Operationstermin extends StandardEntity {
    private static final long serialVersionUID = -4173261225269925712L;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "PATIENT_ID")
    protected Patient patient;

    @Column(name = "AUGE", nullable = false)
    protected String auge;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "RAUM_ID")
    protected Raum raum;

    @Temporal(TemporalType.DATE)
    @Column(name = "DATUM", nullable = false)
    protected Date datum;

    @Temporal(TemporalType.TIME)
    @Column(name = "BEGINN", nullable = false)
    protected Date beginn;

    @Temporal(TemporalType.TIME)
    @Column(name = "ENDE", nullable = false)
    protected Date ende;

    @JoinTable(name = "PA_OPERATIONSTERMIN_MITARBEITER_LINK",
        joinColumns = @JoinColumn(name = "OPERATIONSTERMIN_ID"),
        inverseJoinColumns = @JoinColumn(name = "MITARBEITER_ID"))
    @ManyToMany
    protected Set<Mitarbeiter> mitarbeiter;

    public void setMitarbeiter(Set<Mitarbeiter> mitarbeiter) {
        this.mitarbeiter = mitarbeiter;
    }

    public Set<Mitarbeiter> getMitarbeiter() {
        return mitarbeiter;
    }


    public void setAuge(Auge auge) {
        this.auge = auge == null ? null : auge.getId();
    }

    public Auge getAuge() {
        return auge == null ? null : Auge.fromId(auge);
    }


    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setRaum(Raum raum) {
        this.raum = raum;
    }

    public Raum getRaum() {
        return raum;
    }

    public void setDatum(Date datum) {
        this.datum = datum;
    }

    public Date getDatum() {
        return datum;
    }

    public void setBeginn(Date beginn) {
        this.beginn = beginn;
    }

    public Date getBeginn() {
        return beginn;
    }

    public void setEnde(Date ende) {
        this.ende = ende;
    }

    public Date getEnde() {
        return ende;
    }


}