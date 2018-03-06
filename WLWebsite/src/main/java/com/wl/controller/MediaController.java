package com.wl.controller;

import com.wl.bean.Media;
import com.wl.common.Pager;
import com.wl.service.MadiaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/media")
public class MediaController {

    @Autowired
    private MadiaService madiaService;
    @RequestMapping("save")
    public String save(Media media){
        madiaService.save(media);
        return "";
    }

    @RequestMapping("removeById")
    public String removeById(){

        return "";
    }

    @RequestMapping("update")
    public String update(Media media){
        madiaService.update(media);
        return "";
    }

    @RequestMapping("list")
    public Pager listPager(int pageIndex, int pageSize,Media media){

        return madiaService.listPagerCriteria(pageIndex,pageSize,media);
    }
}
