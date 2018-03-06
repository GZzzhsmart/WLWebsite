package com.wl.service.Impl;

import com.wl.dao.InfrmationDAO;
import com.wl.service.AbstractService;
import com.wl.service.InfrmationService;

public class InfrmationServiceImpl extends AbstractService implements InfrmationService {
    private InfrmationDAO infrmationDAO;

    public void setInfrmationDAO(InfrmationDAO infrmationDAO) {
        super.setBaseDAO(infrmationDAO);
        this.infrmationDAO = infrmationDAO;
    }
}
