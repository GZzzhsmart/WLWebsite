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
    <title>添加轮播图</title>
    <%--layui上传图片--%>
    <link rel="stylesheet" href="<%=path%>/static/layui/css/layui.css"  media="all">
    <jsp:include page="../common/bootstraptablecss.jsp"/>
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="ibox float-e-margins">
        <div class="ibox-title">
            <h5>轮播图信息</h5>
            <div class="ibox-tools">
                <h5><a  style="color: blue" href="<%=path%>/sildeshow/page">返回列表&nbsp;&nbsp;&nbsp;&nbsp;</a></h5>
            </div>
        </div>
        <div class="ibox-content">
            <form method="post" id="homeAdd" class="form-horizontal">
                <div class="form-group">
                    <label  class="col-sm-2 control-label">轮播图1</label>
                    <div class="col-sm-10">
                        <div class="layui-upload">
                            <button type="button" class="layui-btn" id="test1">上传图片</button>
                            <div class="layui-upload-list">
                                <p id="image1"></p>
                                <input type="text" id="pic1"  class="form-control" name="pic1" style="height:0px;border:0px;margin:0px;padding:0px;/>
                                <p id="demoText1"></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-2 control-label">轮播图2</label>
                    <div class="col-sm-10">
                        <div class="layui-upload">
                            <button type="button" class="layui-btn" id="test2">上传图片</button>
                            <div class="layui-upload-list">
                                <p id="image2"></p>
                                <input type="text" id="pic2"  class="form-control" name="pic2" style="height:0px;border:0px;margin:0px;padding:0px;"/>
                                <p id="demoText2"></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-2 control-label">轮播图3</label>
                    <div class="col-sm-10">
                        <div class="layui-upload">
                            <button type="button" class="layui-btn" id="test3">上传图片</button>
                            <div class="layui-upload-list">
                                <p id="image3"></p>
                                <input type="text" id="pic3"  class="form-control" name="pic3" style="height:0px;border:0px;margin:0px;padding:0px;"/>
                                <p id="demoText3"></p>
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
<script src="<%=path%>/static/js/pageJs/home.js"></script>
</body>
</html>
