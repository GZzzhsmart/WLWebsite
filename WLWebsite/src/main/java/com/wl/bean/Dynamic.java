package com.wl.bean;

import java.util.Date;


public class Dynamic {
    private Integer dyid;

    private String title;

    private Date date;

    private String pic;

    private String content;

    public Dynamic(Integer dyid, String title, Date date, String pic, String content) {
        this.dyid = dyid;
        this.title = title;
        this.date = date;
        this.pic = pic;
        this.content = content;
    }

    public Dynamic() {
        super();
    }

    public Integer getDyid() {
        return dyid;
    }

    public void setDyid(Integer dyid) {
        this.dyid = dyid;
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