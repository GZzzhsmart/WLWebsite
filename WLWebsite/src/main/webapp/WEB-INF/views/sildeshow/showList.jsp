<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <title>首页信息</title>
    <%--layui上传图片--%>
    <link rel="stylesheet" href="<%=path%>/static/layui/css/layui.css"  media="all">
    <jsp:include page="../common/bootstraptablecss.jsp"/>
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="ibox float-e-margins">
        <div class="ibox-title">
            <h5>首页轮播图列表</h5>
        </div>
        <div class="ibox-content">
            <table id="mytab" name="mytab" class="table table-hover"></table>
            <div id="toolbar" class="btn-group pull-right" style="margin-right: 20px;">
                <button id="btn_add" type="button" class="btn btn-default">
                    <span class="glyphicon glyphicon-plus" aria-hidden="true" ></span>
                    <a class="J_menuItem" style="color: white" href="<%=path%>/sildeshow/initadd">添加轮播图</a>
                </button>
            </div>
        </div>
    </div>
</div>
<%--网站信息的修改--%>
<div class="modal inmodal fade" id="homeUpdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    轮播图的更改
                </h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="updateForm">
                    <input type="hidden" name="hid"/>
                    <input type="hidden" id="pic1" name="pic1"/>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">轮播图1</label>
                        <div class="col-sm-10">
                            <div class="layui-upload">
                                <button type="button" class="layui-btn" id="test1">上传图片</button>
                                <div class="layui-upload-list">
                                    <img style="width: 150px;height: 150px" id="demo1">
                                    <p id="demoText1"></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <input type="hidden" id="pic2" name="pic2"/>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">轮播图2</label>
                        <div class="col-sm-10">
                            <div class="layui-upload">
                                <button type="button" class="layui-btn" id="test2">上传图片</button>
                                <div class="layui-upload-list">
                                    <img style="width: 150px;height: 150px" id="demo2">
                                    <p id="demoText2"></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <input type="hidden" id="pic3" name="pic3"/>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">轮播图3</label>
                        <div class="col-sm-10">
                            <div class="layui-upload">
                                <button type="button" class="layui-btn" id="test3">上传图片</button>
                                <div class="layui-upload-list">
                                    <img style="width: 150px;height: 150px" id="demo3">
                                    <p id="demoText3"></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-lg btn-primary" id="update" type="submit"><i class="fa fa-check"></i>&nbsp;&nbsp;<span class="bold">提交</span></button>
                        <button class="btn btn-lg btn-default" data-dismiss="modal" type="button"><i class="fa fa-times"></i>&nbsp;&nbsp;<span class="bold">取消</span></button>

                    </div>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<%--网站信息的修改--%>
<jsp:include page="../common/bootstraptablejs.jsp"/>
<%--layui上传图片--%>
<script src="<%=path%>/static/layui/layui.js" charset="utf-8"></script>
<script src="<%=path%>/static/js/pageJs/upload.js"></script>
<script src="<%=path%>/static/js/pageJs/home.js"></script>
</body>
</html>
