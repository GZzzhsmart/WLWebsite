package com.wl.controller;

import com.wl.bean.Recruit;
import com.wl.common.Pager;
import com.wl.service.RecruitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;
/**
 * Created by 曾志湖 on 2018/3/5.
 */
@Controller
@RequestMapping("/page")
public class PageController {

    @Autowired
    private RecruitService recruitService;

    @RequestMapping("/about")
    public String about(){
        return "index/about";
    }

    @RequestMapping("/chehuoyi")
    public String chehuoyi(){
        return "index/chehuoyi";
    }

    @RequestMapping("/faq")
    public String faq(){
        return "index/faq";
    }

    @RequestMapping("/join")
    public ModelAndView join(){
        //首页显示招聘职位信息
        ModelAndView modelAndView = new ModelAndView();
        List<Object> recruitlist = new ArrayList <>();
        Pager recruitPager = recruitService.listPager(1,3);
        for(Object o:recruitPager.getRows()){
            Recruit recruit =(Recruit) o;
            recruitlist.add(recruit);
        }
        modelAndView.addObject("recruitlist",recruitlist);
        modelAndView.setViewName("index/join");
        return modelAndView;
    }

    @RequestMapping("/news")
    public String news(){
        return "index/news";
    }

    @RequestMapping("/partner")
    public String partner(){
        return "index/partner";
    }

    @RequestMapping("/team")
    public String team(){
        return "index/team";
    }

    @RequestMapping("/news-type=company&page=1")
    public String company1(){
        return "index/news-type=company&page=1";
    }

    @RequestMapping("/news-type=company&page=2")
    public String company2(){
        return "index/news-type=company&page=2";
    }

    @RequestMapping("/news-type=company&page=3")
    public String company3(){
        return "index/news-type=company&page=3";
    }

    @RequestMapping("/news-type=logistics")
    public String logistics(){
        return "index/news-type=logistics";
    }

    @RequestMapping("/news-type=logistics&page=1")
    public String logistics1(){
        return "index/news-type=logistics&page=1";
    }

    @RequestMapping("/news-type=logistics&page=2")
    public String logistics2(){
        return "index/news-type=logistics&page=2";
    }

    @RequestMapping("/news-type=logistics&page=3")
    public String logistics3(){
        return "index/news-type=logistics&page=3";
    }

    @RequestMapping("/news-type=logistics&page=4")
    public String logistics4(){
        return "index/news-type=logistics&page=4";
    }

    @RequestMapping("/news-type=logistics&page=5")
    public String logistics5(){
        return "index/news-type=logistics&page=5";
    }

    @RequestMapping("/news-type=logistics&page=6")
    public String logistics6(){
        return "index/news-type=logistics&page=6";
    }

    @RequestMapping("/news-type=media")
    public String media(){
        return "index/news-type=media";
    }

    @RequestMapping("/news-type=media&page=1")
    public String media1(){
        return "index/news-type=media&page=1";
    }

    @RequestMapping("/news-type=media&page=2")
    public String media2(){
        return "index/news-type=media&page=2";
    }

    @RequestMapping("/new")
    public String news1(){
        return "news/news";
    }

    @RequestMapping("/medias")
    public String medias(){
        return "news/media";
    }

    @RequestMapping("/logistics")
    public String logistic(){
        return "news/logistics";
    }

    @RequestMapping("/welcome")
    public String welcome(){
        return "common/welcome";
    }

    @RequestMapping("/login")
    public String logisticLogin(){
        return "manager/login";
    }

    @RequestMapping("/media")
    public String mediaList(){
        return "manager/media";
    }
}
