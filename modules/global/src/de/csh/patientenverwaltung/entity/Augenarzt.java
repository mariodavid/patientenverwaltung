/*
 * Copyright (c) 2015 de.csh.patientenverwaltung.entity
 */
package de.csh.patientenverwaltung.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;
import java.util.Set;
import javax.persistence.OneToMany;

/**
 * @author mario
 */
@NamePattern("%s %s|titel,name")
@Table(name = "PA_AUGENARZT")
@Entity(name = "pa$Augenarzt")
public class Augenarzt extends StandardEntity {
    private static final long serialVersionUID = 6007559734538527755L;

    @Column(name = "ANREDE")
    protected String anrede;

    @Column(name = "TITEL")
    protected String titel;

    @Column(name = "NAME", nullable = false)
    protected String name;

    @Column(name = "VORNAME", nullable = false)
    protected String vorname;

    @Column(name = "ANSCHRIFT", nullable = false)
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


    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "augenarzt")
    protected Set<AugenarztAngestellte> angestellte;

    public void setAngestellte(Set<AugenarztAngestellte> angestellte) {
        this.angestellte = angestellte;
    }

    public Set<AugenarztAngestellte> getAngestellte() {
        return angestellte;
    }


    public void setAnrede(Anrede anrede) {
        this.anrede = anrede == null ? null : anrede.getId();
    }

    public Anrede getAnrede() {
        return anrede == null ? null : Anrede.fromId(anrede);
    }

    public void setTitel(Titel titel) {
        this.titel = titel == null ? null : titel.getId();
    }

    public Titel getTitel() {
        return titel == null ? null : Titel.fromId(titel);
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


}