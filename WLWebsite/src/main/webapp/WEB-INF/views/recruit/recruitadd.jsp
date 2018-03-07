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
    <title>发布职位</title>
    <%--layui上传图片--%>
    <link rel="stylesheet" href="<%=path%>/static/layui/css/layui.css"  media="all">
    <jsp:include page="../common/bootstraptablecss.jsp"/>
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="ibox float-e-margins">
        <div class="ibox-title">
            <h5>职位列表</h5>
            <div class="ibox-tools">
                <h5><a  style="color: blue" href="<%=path%>/recruit/page">返回列表&nbsp;&nbsp;&nbsp;&nbsp;</a></h5>
            </div>
        </div>
        <div class="ibox-content">
            <form method="post" id="recruitAdd" class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">职位名称</label>
                    <div class="col-sm-10">
                        <input type="text" id="title" name="title" placeholder="请输入标题" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">内容</label>
                    <div class="col-sm-10">
                        <textarea id="content" name="content" required="required" style="height: 250px;width: 250px"autofocus></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-2 control-label">职位图片</label>
                    <div class="col-sm-10">
                        <div class="layui-upload">
                            <button type="button" class="layui-btn" id="picx">上传图片</button>
                            <div class="layui-upload-list">
                                <p id="demo"></p>
                                <input type="text" id="img"  class="form-control" name="img" style="height:0px;border:0px;margin:0px;padding:0px;"/>
                                <p id="demoText"></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-12 col-sm-offset-9">
                        <button class="btn btn-lg btn-primary " type="submit"><i class="fa fa-check"></i>&nbsp;&nbsp;<span class="bold">提交</span></button>
                        <button class="btn btn-lg btn-default " type="reset"><i class="fa fa-times"></i>&nbsp;&nbsp;<span class="bold">取消</span></button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>


<jsp:include page="../common/bootstraptablejs.jsp"/>
<%--layui上传图片--%>
<script src="<%=path%>/static/layui/layui.js" charset="utf-8"></script>
<script src="<%=path%>/static/js/pageJs/upload.js"></script>
<script src="<%=path%>/static/js/pageJs/recruit.js"></script>
</body>
</html>
