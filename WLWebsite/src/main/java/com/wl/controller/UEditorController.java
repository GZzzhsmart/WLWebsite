package com.wl.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by 曾志湖 on 2018/3/5.
 */
@Controller
@RequestMapping("/ueditor")
public class UEditorController {
    @RequestMapping("core")
    public String core() {
        {
            return "ueditor/jsp/controller";
        }
    }
}
