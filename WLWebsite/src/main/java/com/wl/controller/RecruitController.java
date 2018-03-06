package com.wl.controller;

import com.wl.service.RecruitService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by 曾志湖 on 2018/3/6.
 * 招贤纳士
 */
@Controller
@RequestMapping("/recruit")
public class RecruitController {

    private Logger logger = LoggerFactory.getLogger(RecruitController.class);
    @Autowired
    private RecruitService recruitService;
}
