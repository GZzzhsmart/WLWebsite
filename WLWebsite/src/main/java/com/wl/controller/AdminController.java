package com.wl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by 曾志湖 on 2018/3/6.
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    @RequestMapping("/page")
    public String page(){
        return "manager/index";
    }
}
