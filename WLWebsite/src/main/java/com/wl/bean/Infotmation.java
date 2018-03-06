package com.wl.bean;

import java.util.Date;

public class Infotmation {
    private Integer fid;

    private String title;

    private Date date;

    private String pic;

    private String content;

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