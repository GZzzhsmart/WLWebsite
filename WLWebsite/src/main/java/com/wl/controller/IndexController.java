package com.wl.controller;

import com.wl.service.SildeshowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.*;
/**
 * 首页控制器
 */
@Controller
@RequestMapping("/")
public class IndexController {


    @Autowired
    private SildeshowService sildeshowService;

    @RequestMapping("")
    public ModelAndView index() {
        ModelAndView modelAndView =new ModelAndView();
        List<Object> sildelist = new ArrayList <>();
        sildelist = sildeshowService.listAll();
        modelAndView.addObject("sildelist",sildelist);
        modelAndView.setViewName("index");
        return modelAndView;
    }

}
