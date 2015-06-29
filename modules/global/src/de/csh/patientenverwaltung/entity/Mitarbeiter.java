/*
 * Copyright (c) 2015 de.csh.patientenverwaltung.entity
 */
package de.csh.patientenverwaltung.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import java.util.Set;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;
import javax.persistence.OneToMany;

/**
 * @author mario
 */
@NamePattern("%s, %s|name,vorname")
@Table(name = "PA_MITARBEITER")
@Entity(name = "pa$Mitarbeiter")
public class Mitarbeiter extends StandardEntity {
    private static final long serialVersionUID = 478098758428386870L;

    @Column(name = "NAME", nullable = false)
    protected String name;

    @Column(name = "VORNAME", nullable = false)
    protected String vorname;

    @JoinTable(name = "PA_OPERATIONSTERMIN_MITARBEITER_LINK",
        joinColumns = @JoinColumn(name = "MITARBEITER_ID"),
        inverseJoinColumns = @JoinColumn(name = "OPERATIONSTERMIN_ID"))
    @ManyToMany
    protected Set<Operationstermin> operationstermine;

    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "mitarbeiter")
    protected Set<Arbeitstag> arbeitszeiten;

    public void setArbeitszeiten(Set<Arbeitstag> arbeitszeiten) {
        this.arbeitszeiten = arbeitszeiten;
    }

    public Set<Arbeitstag> getArbeitszeiten() {
        return arbeitszeiten;
    }


    public void setOperationstermine(Set<Operationstermin> operationstermine) {
        this.operationstermine = operationstermine;
    }

    public Set<Operationstermin> getOperationstermine() {
        return operationstermine;
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