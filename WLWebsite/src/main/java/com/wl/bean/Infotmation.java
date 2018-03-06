package com.wl.bean;

import java.util.Date;

/**
 * 行业资讯
 */
public class Infotmation {
    private Integer fid;

    private String title;//标题

    private Date date;//发布时间

    private String pic;//插图

    private String content;//内容

    public Infotmation(Integer fid, String title, Date date, String pic, String content) {
        this.fid = fid;
        this.title = title;
        this.date = date;
        this.pic = pic;
        this.content = content;
    }

    public Infotmation() {
        super();
    }

    public Integer getFid() {
        return fid;
    }

    public void setFid(Integer fid) {
        this.fid = fid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic == null ? null : pic.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}