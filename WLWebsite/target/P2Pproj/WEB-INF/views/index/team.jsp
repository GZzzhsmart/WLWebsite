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
        携手团队 - 携手物流科技官方网站
    </title>
    <meta content="webkit" name="renderer"/>
    <meta content="携手物流科技官方网站" name="keywords"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <link href="<%=path%>/static/css/bootstrap.css"  media="all" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/static/css/style.css"  media="all" rel="stylesheet" type="text/css"/>


</head>
<body>
<!-- header -->
<%@include file="../common/header.jsp"%>

<div class="blog-content team-section">
    <div class="container">
        <div class="blog-content-head text-center">
            <h3>团队文化</h3>
            <p style="margin:15px 0 25px 0; font-weight:bold;color:#65d075">携手 同心 共创 共享
            </p>
        </div>
        <div class="section group">
            <div class="col-md-8 col-md-offset-2">
                <div class="blog_posts">
                    <div class="section group">
                        <div class="blog_data">
                            <h3>阵容强大的合伙人团队</h3>
                            <p>　　经济圈内各大城市都有我们的合伙人团队，各地分公司为您提供运输方案，专人一对一管家式项目跟踪</p>
                            <figure>
                                <img src="<%=path%>/static/image/team1.png"  alt="合伙人团队">
                            </figure>
                        </div>
                        <div class="blog_data">
                            <h3>实力雄厚的研发团队</h3>
                            <p>　　携手物流科技拥有美国MIT、伯克利的现代物流技术人才团队，实力与创意兼具的技术研发团队是平台不断创新强大的坚实后盾</p>
                            <figure>
                                <img src="<%=path%>/static/image/team6.png"  alt="研发团队">
                            </figure>
                        </div>
                        <div class="blog_data">
                            <h3>贴心高效的客服团队</h3>
                            <p>　　专业400客服团队，7天14小时为你提供业务、找车配货、理赔、投诉等等人工咨询服务</p>
                            <figure>
                                <img src="<%=path%>/static/image/team4.png"  alt="客服团队">
                            </figure>
                        </div>
                        <div class="blog_data">
                            <h3>携手大家庭</h3>
                            <p>　　全体携手同仁共甘苦创事业，我们是一支充满激情、志向远大、怀揣梦想的团队，也是一支综合素质优秀、专业技能过硬、分工高度细化的团队，相信我们，立足现在，共创未来。</p>
                            <figure>
                                <img src="<%=path%>/static/image/about1.png"  alt="携手大家庭">
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--网站底部-->
<%@include file="../common/footer.jsp"%>

<script src="<%=path%>/static/js/jquery-1.8.3.min.js" ></script>
<script src="<%=path%>/static/js/chy.js" ></script>


<script type="text/javascript">
    document.querySelector('[data-id=about]').className = 'active';
</script>
</body>
</html>
