package com.wl.bean;

/**
 * 招贤纳士表
 */
public class Recruit {
    private Integer rid;

    private String title;//标题

    private String img;//图片

    private String content;//内容

    public Recruit(Integer rid, String title, String img, String content) {
        this.rid = rid;
        this.title = title;
        this.img = img;
        this.content = content;
    }

    public Recruit() {
        super();
    }

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img == null ? null : img.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}