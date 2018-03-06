package com.wl.controller;

import com.wl.bean.Sildeshow;
import com.wl.common.ControllerStatusVO;
import com.wl.common.Pager;
import com.wl.enums.ControllerStatusEnum;
import com.wl.service.SildeshowService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by 曾志湖 on 2018/3/6.
 * 首页轮播图
 */
@Controller
@RequestMapping("/sildeshow")
public class SildeshowController {

    private Logger logger = LoggerFactory.getLogger(SildeshowController.class);

    @Autowired
    private SildeshowService sildeshowService;

    @RequestMapping("save")
    @ResponseBody
    public ControllerStatusVO save(Sildeshow sildeshow){
        logger.info("新增轮播图");
        ControllerStatusVO statusVO = null;
        try{
            sildeshowService.save(sildeshow);
        }catch (RuntimeException e){
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.CASH_SAVE_FAIL);
        }
        statusVO = ControllerStatusVO.status(ControllerStatusEnum.CASH_SAVE_SUCCESS);
        return statusVO;
    }

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(Sildeshow sildeshow){
        logger.info("修改轮播图");
        ControllerStatusVO statusVO = null;
        try{
            sildeshowService.update(sildeshow);
        }catch (RuntimeException e){
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.CASH_UPDATE_FAIL);
        }
        statusVO = ControllerStatusVO.status(ControllerStatusEnum.CASH_UPDATE_SUCCESS);
        return statusVO;
    }

    @RequestMapping("remove/{hid}")
    @ResponseBody
    public ControllerStatusVO remove(@PathVariable("hid") Integer hid){
        logger.info("单个删除轮播图");
        ControllerStatusVO statusVO = null;
        try{
            sildeshowService.remove(hid);
        }catch (RuntimeException e){
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.CASH_DELETE_FAIL);
        }
        statusVO = ControllerStatusVO.status(ControllerStatusEnum.CASH_DELETE_SUCCESS);
        return statusVO;
    }

    @RequestMapping("/listPager")
    @ResponseBody
    public Pager listPager(int pageIndex, int pageSize){
        logger.info("分页查询");
        return sildeshowService.listPager(pageIndex,pageSize);
    }
}
