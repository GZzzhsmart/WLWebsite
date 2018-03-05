package com.wl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * 首页控制器
 */
@Controller
@RequestMapping("/")
public class IndexController {


    @RequestMapping("")
    public ModelAndView index() {
        ModelAndView modelAndView =new ModelAndView();
        modelAndView.setViewName("index");
        return modelAndView;
    }

}
