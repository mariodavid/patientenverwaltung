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

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "ZEITPUNKT", nullable = false)
    protected Date zeitpunkt;

    public void setZeitpunkt(Date zeitpunkt) {
        this.zeitpunkt = zeitpunkt;
    }

    public Date getZeitpunkt() {
        return zeitpunkt;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public Patient getPatient() {
        return patient;
    }


}