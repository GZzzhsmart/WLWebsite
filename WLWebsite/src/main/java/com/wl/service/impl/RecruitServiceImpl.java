package com.wl.service.impl;

import com.wl.dao.RecruitDAO;
import com.wl.service.AbstractService;
import com.wl.service.RecruitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 曾志湖 on 2018/3/6.
 */
@Service
public class RecruitServiceImpl extends AbstractService implements RecruitService{


    private RecruitDAO recruitDAO;

    @Autowired
    public void setRecruitDAO(RecruitDAO recruitDAO) {
        super.setBaseDAO(recruitDAO);
        this.recruitDAO = recruitDAO;
    }
}
