/*
 * Copyright (c) 2015 de.csh.patientenverwaltung.service
 */
package de.csh.patientenverwaltung.service;

import com.haulmont.cuba.core.Persistence;
import com.haulmont.cuba.core.global.DataManager;
import com.haulmont.cuba.core.global.LoadContext;
import de.csh.patientenverwaltung.entity.Operationstermin;
import groovy.util.logging.Log4j;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.Date;
import java.util.List;

/**
 * @author mario
 */

@Service(OperationsterminService.NAME)
public class OperationsterminServiceBean implements OperationsterminService {

    @Inject
    protected DataManager dataManager;



    @Override
    public List<Operationstermin> ermittleOperationstermine(Date startDate, Date endDate) {

        Logger log = Logger.getRootLogger();
        log.warn("startDate = [" + startDate + "], endDate = [" + endDate + "]");
        LoadContext loadContext = new LoadContext(Operationstermin.class);
        loadContext.setView("operationstermin-view");
        String queryStr = "select e from pa$Operationstermin e where (e.beginn between :start and :end)";

        loadContext.setQueryString(queryStr)
                .setParameter("start", startDate)
                .setParameter("end", endDate);

        List<Operationstermin> operationstermins = dataManager.loadList(loadContext);

        log.warn("es wurden " + operationstermins.size() + " Termine gefunden");
        return operationstermins;
    }
}