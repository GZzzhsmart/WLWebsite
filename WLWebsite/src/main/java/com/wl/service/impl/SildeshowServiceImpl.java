package com.wl.service.impl;

import com.wl.dao.SildeshowDAO;
import com.wl.service.AbstractService;
import com.wl.service.SildeshowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 曾志湖 on 2018/3/6.
 */
@Service
public class SildeshowServiceImpl extends AbstractService implements SildeshowService {


    private SildeshowDAO sildeshowDAO;

    @Autowired
    public void setSildeshowDAO(SildeshowDAO sildeshowDAO) {
        super.setBaseDAO(sildeshowDAO);
        this.sildeshowDAO = sildeshowDAO;
    }
}
