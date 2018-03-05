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
        加入我们 - 携手物流科技官方网站
    </title>
    <meta content="webkit" name="renderer"/>
    <meta content="携手物流科技官方网站" name="keywords"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <link href="<%=path%>/static/css/bootstrap.css" media="all" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/static/css/style.css" media="all" rel="stylesheet" type="text/css"/>


</head>
<body>
<!-- header -->
<%@include file="../common/header.jsp"%>


<div class="blog-content join-section">
    <div class="container">
        <div class="blog-content-head text-left">
            <h3>加入我们</h3>
        </div>
        <div class="section group">
            <div class="col-md-8 col-md-offset-2">
                <div class="blog_posts">
                    <div class="section group">
                        <div class="blog_data">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们希望每位加入团队的伙伴都拥有一颗创业的心，我们不会一味标榜管理上如何如何宽松，毕竟创业公司是有压力的；工作是需要及时交付的，同事之间是要相互满足期望值的，贡献多的人是该得到更多回报的，不合适的人是要离开的。但我们上下班时间在合理范围内是可以弹性的，每个人对自己负责的工作是有话语权的，同事无论级别是相互尊重的，工作上的讨论是平等的。适当的管理是为了让大家能更好地工作，团结、主动、进取是我们必须有的品质。我们期待您成为我们的好伙伴，‘携手’共进，共创属于我们的事业。</p>
                        </div>
                        <div class="blog_data cont">
                            <h5>HTML5前端工程师</h5>
                            <div class="row">
                                <div class="col-md-4">
                                    <img src="<%=path%>/static/image/j1.jpg" alt="HTML5前端工程师">
                                </div>
                                <div class="col-md-8">
                                    <p>
                                        1、两年以上JavaScript开发工作经验
                                        <br> 2、有 Mobile Web App 的开发经验，能开发兼容移动版浏览器的应用
                                        <br> 3、熟悉PhoneGap/AppCan/ApiCloud/React Native等跨平台开发技术优先
                                        <br> 4、了解PHP/Node者优先
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="blog_data">
                            <h5>NET高级工程师</h5>
                            <div class="row">
                                <div class="col-md-4">
                                    <img src="<%=path%>/static/image/j2.jpg" alt="NET高级工程师">
                                </div>
                                <div class="col-md-8">
                                    <p>
                                        1、两年以上.Net开发经验，深入理解MVC、WebApi原理
                                        <br> 2、具备较强的SQL编写、分析以及优化能力，尤其是针对SQL性能调优，熟悉Redis、Mongodb
                                        <br> 3、具有优良的编程风格和习惯及强烈的责任心和团队协作精神
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="blog_data">
                            <h5>客服专员</h5>
                            <div class="row">
                                <div class="col-md-4">
                                    <img src="<%=path%>/static/image/j3.jpg" alt="客服专员">
                                </div>
                                <div class="col-md-8">
                                    <p>
                                        1、具有良好中文打字速度40/分
                                        <br> 2、工作积极，为人正直，能承受工作压力
                                        <br>3、普通话标准，具有良好的沟通能力及服务意识
                                        <br> 4、专业不限，语言类和汽车类相关专业优先
                                        <br>5、其他方面的特殊要求：对货车种类型号有相当认识
                                    </p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<!--网站底部 -->
<%@include file="../common/footer.jsp"%>

<script src="<%=path%>/static/js/jquery-1.8.3.min.js"></script>
<script src="<%=path%>/static/js/chy.js"></script>


<script type="text/javascript">
    document.querySelector('[data-id=join]').className = 'active';
</script>
</body>
</html>
