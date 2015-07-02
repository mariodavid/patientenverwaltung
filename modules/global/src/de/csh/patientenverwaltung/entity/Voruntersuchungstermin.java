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

/**
 * @author mario
 */
@Table(name = "PA_VORUNTERSUCHUNGSTERMIN")
@Entity(name = "pa$Voruntersuchungstermin")
public class Voruntersuchungstermin extends StandardEntity {
    private static final long serialVersionUID = -6237823540213361482L;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "PATIENT_ID")
    protected Patient patient;

    @Temporal(TemporalType.DATE)
    @Column(name = "DATUM", nullable = false)
    protected Date datum;

    @Temporal(TemporalType.TIME)
    @Column(name = "BEGINN", nullable = false)
    protected Date beginn;

    @Temporal(TemporalType.TIME)
    @Column(name = "ENDE", nullable = false)
    protected Date ende;

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


    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public Patient getPatient() {
        return patient;
    }


}