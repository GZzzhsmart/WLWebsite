package com.wl.bean;

import java.util.Date;


public class Administrator {
    private Integer aid;

    private String name;

    private Byte sex;

    private String phone;

    private String identity;

    private String address;

    private Date date;

    private String status;

    public Administrator(Integer aid, String name, Byte sex, String phone, String identity, String address, Date date, String status) {
        this.aid = aid;
        this.name = name;
        this.sex = sex;
        this.phone = phone;
        this.identity = identity;
        this.address = address;
        this.date = date;
        this.status = status;
    }

    public Administrator() {
        super();
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Byte getSex() {
        return sex;
    }

    public void setSex(Byte sex) {
        this.sex = sex;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity == null ? null : identity.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }
}