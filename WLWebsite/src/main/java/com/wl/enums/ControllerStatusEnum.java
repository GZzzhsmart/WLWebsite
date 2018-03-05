package com.wl.enums;


public enum ControllerStatusEnum {

    USER_LOGIN_SUCCESS(100, "ok", "登录成功"),
    USER_LOGIN_ERROR_CODE(101, "error", "验证码错误"),
    USER_LOGIN_FAIL(102, "error", "用户名或密码错误"),
    USER_ALREADY_LOGIN(111, "logined", "已登录"),
    CASH_SAVE_SUCCESS(103, "ok", "添加成功"),
    CASH_SAVE_FAIL(104, "error", "添加失败，稍候再试"),
    CASH_UPDATE_SUCCESS(105, "ok", "修改成功"),
    CASH_UPDATE_FAIL(106, "error", "修改失败，稍候再试"),
    CASH_DELETE_SUCCESS(107, "ok", "删除成功"),
    CASH_DELETE_FAIL(108, "error", "删除失败，稍候再试"),
    CASH_PASSWORD_SUCCESS(109, "ok", "更新用户密码成功"),
    CASH_PASSWORD_FAIL(110, "error", "更新用户密码失败"),
    CHECK_PASSWORD_SUCCESS(112,"ok","检查原密码成功"),
    CHECK_PASSWORD_FAIL(113,"error","检查原密码失败");

    private Integer code;
    private String result;
    private String message;

    ControllerStatusEnum(Integer code, String result, String message) {
        this.code = code;
        this.result = result;
        this.message = message;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
