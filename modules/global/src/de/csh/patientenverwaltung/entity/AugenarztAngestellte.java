/*
 * Copyright (c) 2015 de.csh.patientenverwaltung.entity
 */
package de.csh.patientenverwaltung.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 * @author mario
 */
@NamePattern("%s, %s|name,vorname")
@Table(name = "PA_AUGENARZT_ANGESTELLTE")
@Entity(name = "pa$AugenarztAngestellte")
public class AugenarztAngestellte extends StandardEntity {
    private static final long serialVersionUID = -5795748619925104207L;

    @Column(name = "NAME")
    protected String name;

    @Column(name = "VORNAME")
    protected String vorname;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "AUGENARZT_ID")
    protected Augenarzt augenarzt;

    public void setAugenarzt(Augenarzt augenarzt) {
        this.augenarzt = augenarzt;
    }

    public Augenarzt getAugenarzt() {
        return augenarzt;
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


}