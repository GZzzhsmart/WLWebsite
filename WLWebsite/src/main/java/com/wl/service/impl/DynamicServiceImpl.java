package com.wl.service.impl;

import com.wl.bean.Dynamic;
import com.wl.dao.DynamicDAO;
import com.wl.service.AbstractService;
import com.wl.service.DynamicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * create by 曾志湖 on 2018/03/07
 * */
@Service
public class DynamicServiceImpl extends AbstractService implements DynamicService {

    private DynamicDAO dynamicDAO;

    @Autowired
    public void setDynamicDAO(DynamicDAO dynamicDAO) {
        super.setBaseDAO(dynamicDAO);
        this.dynamicDAO = dynamicDAO;
    }

    @Override
    public void updateStatus(Dynamic dynamic) {
        dynamicDAO.updateStatus(dynamic);
    }
}
