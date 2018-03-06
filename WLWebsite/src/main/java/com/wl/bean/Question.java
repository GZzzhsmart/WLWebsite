package com.wl.bean;

public class Question {
    private Integer qid;

    private String title;

    private String sort;

    private String content;

    public Question(Integer qid, String title, String sort, String content) {
        this.qid = qid;
        this.title = title;
        this.sort = sort;
        this.content = content;
    }

    public Question() {
        super();
    }

    public Integer getQid() {
        return qid;
    }

    public void setQid(Integer qid) {
        this.qid = qid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort == null ? null : sort.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}