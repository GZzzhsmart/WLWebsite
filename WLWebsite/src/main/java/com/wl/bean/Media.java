package com.wl.bean;

import java.util.Date;

public class Media {
    private Integer mid;

    private String title;

    private String pic;

    private Date date;

    private String url;

    private String content;

    public Media(Integer mid, String title, String pic, Date date, String url, String content) {
        this.mid = mid;
        this.title = title;
        this.pic = pic;
        this.date = date;
        this.url = url;
        this.content = content;
    }

    public Media() {
        super();
    }

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic == null ? null : pic.trim();
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}