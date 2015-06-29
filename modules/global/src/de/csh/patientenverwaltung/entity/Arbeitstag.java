/*
 * Copyright (c) 2015 de.csh.patientenverwaltung.entity
 */
package de.csh.patientenverwaltung.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import com.haulmont.cuba.core.entity.StandardEntity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 * @author mario
 */
@Table(name = "PA_ARBEITSTAG")
@Entity(name = "pa$Arbeitstag")
public class Arbeitstag extends StandardEntity {
    private static final long serialVersionUID = -1537864438091936434L;

    @Column(name = "WOCHENTAG", nullable = false)
    protected String wochentag;

    @Temporal(TemporalType.TIME)
    @Column(name = "BEGINN", nullable = false)
    protected Date beginn;

    @Temporal(TemporalType.TIME)
    @Column(name = "ENDE", nullable = false)
    protected Date ende;


    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "MITARBEITER_ID")
    protected Mitarbeiter mitarbeiter;

    public void setMitarbeiter(Mitarbeiter mitarbeiter) {
        this.mitarbeiter = mitarbeiter;
    }

    public Mitarbeiter getMitarbeiter() {
        return mitarbeiter;
    }


    public void setWochentag(Wochentag wochentag) {
        this.wochentag = wochentag == null ? null : wochentag.getId();
    }

    public Wochentag getWochentag() {
        return wochentag == null ? null : Wochentag.fromId(wochentag);
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