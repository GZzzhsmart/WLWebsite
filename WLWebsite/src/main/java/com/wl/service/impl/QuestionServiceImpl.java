package com.wl.service.impl;

import com.wl.dao.QuestionDAO;
import com.wl.service.AbstractService;
import com.wl.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 曾志湖 on 2018/3/6.
 */
@Service
public class QuestionServiceImpl extends AbstractService implements QuestionService {


    private QuestionDAO questionDAO;

    @Autowired
    public void setQuestionDAO(QuestionDAO questionDAO) {
        super.setBaseDAO(questionDAO);
        this.questionDAO = questionDAO;
    }
}
