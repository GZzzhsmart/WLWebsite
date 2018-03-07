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
    <title>职位列表</title>
    <%--layui上传图片--%>
    <link rel="stylesheet" href="<%=path%>/static/layui/css/layui.css"  media="all">
    <jsp:include page="../common/bootstraptablecss.jsp"/>
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="ibox float-e-margins">
        <div class="ibox-title">
            <h5>职位列表</h5>
        </div>
        <div class="ibox-content">
            <div class="panel panel-default">
                <div class="panel-heading">
                    查询条件
                </div>
                <div class="panel-body form-group" style="margin-bottom:0px;">
                    <label class="col-sm-1 control-label" style="text-align: right; margin-top:5px">职位名称</label>
                    <div class="col-sm-2">
                        <input type="text" class="form-control" name="title" id="title1"/>
                    </div>
                    <label class="col-sm-1 control-label" style="text-align: right; margin-top:5px">职位要求</label>
                    <div class="col-sm-2">
                        <input type="text" class="form-control" name="content" id="content1"/>
                    </div>

                    <div class="col-sm-1 col-sm-offset-1">
                        <button class="btn btn-primary" id="search_btn">查询</button>
                    </div>
                </div>
            </div>
            <table id="mytab" name="mytab" class="table table-hover"></table>
            <div id="toolbar" class="btn-group pull-right" style="margin-right: 20px;">
                <button id="btn_add" type="button" class="btn btn-default">
                    <span class="glyphicon glyphicon-plus" aria-hidden="true" ></span>
                    <a class="J_menuItem" style="color: white" href="<%=path%>/recruit/initadd">发布职位</a>
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
                    编辑职位
                </h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="updateForm">
                    <input type="hidden" name="rid" id="rid"/>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">职位名称</label>
                        <div class="col-sm-10">
                            <input type="text" id="title" name="title" placeholder="请输入职位名称" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">职位介绍</label>
                        <div class="col-sm-10">
                            <textarea  name="content" style="height: 250px;width: 250px" required autofocus></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">职位图片</label>
                        <div class="col-sm-10">
                            <div class="layui-upload">
                                <button type="button" class="layui-btn" id="picx">上传图片</button>
                                <div class="layui-upload-list">
                                    <img style="width: 150px;height: 150px" id="demo1">
                                    <p id="demoText"></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-lg btn-primary" id="update" type="submit"><i class="fa fa-check"></i>&nbsp;&nbsp;<span class="bold">修改</span></button>
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
<script src="<%=path%>/static/js/pageJs/recruit.js"></script>
</body>
</html>
