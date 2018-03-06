package com.wl.service.impl;

import com.wl.dao.InfrmationDAO;
import com.wl.service.AbstractService;
import com.wl.service.InfrmationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InfrmationServiceImpl extends AbstractService implements InfrmationService {

    private InfrmationDAO infrmationDAO;

    @Autowired
    public void setInfrmationDAO(InfrmationDAO infrmationDAO) {
        super.setBaseDAO(infrmationDAO);
        this.infrmationDAO = infrmationDAO;
    }
}
