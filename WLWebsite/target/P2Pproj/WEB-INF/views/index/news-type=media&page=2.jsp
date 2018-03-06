<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset=utf-8"utf-8" />
    <title>
        媒体聚集 - 携手物流科技官方网站
    </title>
    <meta content="webkit" name="renderer"/>
    <meta content="携手物流科技官方网站" name="keywords"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <link href="<%=path%>/static/css/bootstrap.css"  media="all" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/static/css/style.css"  media="all" rel="stylesheet" type="text/css"/>


</head>
<body>

<!-- header-->
<%@include file="../common/header.jsp"%>

<!-- 媒体聚焦内容-->
<%@include file="../common/media.jsp"%>

<!--网站底部 -->
<%@include file="../common/footer.jsp"%>

<script src="<%=path%>/static/js/jquery-1.8.3.min.js"></script>
<script src="<%=path%>/static/js/chy.js"></script>


<script type="text/javascript">
    document.querySelector('[data-id=news]').className = 'active';
</script>
</body>
</html>

