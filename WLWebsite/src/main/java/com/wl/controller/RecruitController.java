package com.wl.controller;

import com.wl.bean.Recruit;
import com.wl.bean.Sildeshow;
import com.wl.common.ControllerStatusVO;
import com.wl.common.FileVo;
import com.wl.common.Pager;
import com.wl.enums.ControllerStatusEnum;
import com.wl.service.RecruitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by 曾志湖 on 2018/3/6.
 * 招聘职位表
 */
@Controller
@RequestMapping("/recruit")
public class RecruitController {

    @Autowired
    private RecruitService recruitService;

    @RequestMapping("upload")
    @ResponseBody
    public FileVo upload(MultipartFile file, HttpServletRequest request){
        FileVo fileVo = new FileVo();
        try{
            //使用原始文件名称
            String fileName = file.getOriginalFilename();
            //重新格式化文件名称
            //String fileName = getFileName(file.getOriginalFilename());
            String path = request.getSession().getServletContext().getRealPath("upload");
            File dir = new File(path,fileName);
            if(!dir.exists()){
                dir.mkdirs();
            }
            file.transferTo(dir);
            fileVo.setFilePath("upload/"+fileName);
            System.out.println("保存到数据库的图片地址:upload/"+fileName);
            fileVo.setCode(0);
        }catch (Exception e){
            e.printStackTrace();
            fileVo.setCode(1);
        }
        fileVo.setMsg("上传成功!");
        return  fileVo;
    }

    //通过id查找首页信息
    @RequestMapping("find/{rid}")
    @ResponseBody
    public Recruit find(@PathVariable("rid")Long rid){
        Recruit recruit = new Recruit();
        recruit = (Recruit)recruitService.getById(rid);
        return recruit;
    }

    //新增页面
    @RequestMapping("initadd")
    public String add(){
        return "recruit/recruitadd";
    }

    //列表页面
    @RequestMapping("page")
    public String list(){
        return "recruit/recruitList";
    }

    @RequestMapping("save")
    @ResponseBody
    public ControllerStatusVO save(Recruit recruit){
        ControllerStatusVO statusVO = null;
        try{
            recruitService.save(recruit);
        }catch (RuntimeException e){
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.CASH_SAVE_FAIL);
        }
        statusVO = ControllerStatusVO.status(ControllerStatusEnum.CASH_SAVE_SUCCESS);
        return statusVO;
    }

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(Recruit recruit){
        ControllerStatusVO statusVO = null;
        try{
            recruitService.update(recruit);
        }catch (RuntimeException e){
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.CASH_UPDATE_FAIL);
        }
        statusVO = ControllerStatusVO.status(ControllerStatusEnum.CASH_UPDATE_SUCCESS);
        return statusVO;
    }

    @RequestMapping("remove/{hid}")
    @ResponseBody
    public ControllerStatusVO remove(@PathVariable("rid") Integer rid){
        ControllerStatusVO statusVO = null;
        try{
            recruitService.remove(rid);
        }catch (RuntimeException e){
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.CASH_DELETE_FAIL);
        }
        statusVO = ControllerStatusVO.status(ControllerStatusEnum.CASH_DELETE_SUCCESS);
        return statusVO;
    }

    @RequestMapping("pager_criteria")
    @ResponseBody
    public Pager pagerCriteria(int pageIndex, int pageSize, Recruit recruit) {
        return recruitService.listPagerCriteria(pageIndex, pageSize, recruit);
    }


    @InitBinder
    public void initBinder(WebDataBinder binder) {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

}
