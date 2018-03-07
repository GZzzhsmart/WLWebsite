<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset=utf-8"utf-8"/>
    <title>携手物流科技官方网站</title>
    <meta content="webkit" name="renderer"/>
    <meta content="携手物流科技官方网站" name="keywords"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <link href="<%=path%>/static/css/bootstrap.css"  media="all" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/static/css/style.css"  media="all" rel="stylesheet" type="text/css"/>
</head>
<body>
<!-- header -->
<%@include file="./common/header.jsp"%>

<div class="header-slider">
    <div class="slider">
        <div class="callbacks_container">
            <ul class="rslides" id="slider">
                <c:forEach var="s" items="${sildelist}">
                    <li><img src="<%=path%>/${s.pic1}"/></li>
                    <li><img src="<%=path%>/${s.pic2}"/></li>
                    <li><img src="<%=path%>/${s.pic3}"/></li>
                </c:forEach>
            </ul>
        </div>
    </div>

</div>

<div class="index-section">

    <div class="beautifull checkout-section">
        <div class="container">
            <div class="beautifull-header">
                <h4>
                    关于车货易
                </h4>
                <p>
                    最省心的物流交易平台
                </p>
            </div>
            <div class="col-lg-12 chy-intro">
                <p>
                    　　车货易——最省心的物流交易平台，物流行业的资源整合专家，为客户匹配提供最近、最好的货源和车主。<br>　　在车货易物流交易平台上注册的货主、车主，遍布全国各大经济圈。只要司机、货主登陆车货易平台，平台将根据定位自动匹配海量货源、车源。司机可自主报价接单承运，货主可自主选择司机货主可一键呼叫司机，无信息部中介，运费价格透明。
                </p>

            </div>
            <div class="col-lg-12 ">
                <div class="beautifull-grids row" style="margin-bottom:30px">
                    <div class="col-lg-6">
                        <img src="<%=path%>/static/image/guangdong.jpg"  alt="广东布局图">
                    </div>
                    <div class="col-lg-6">
                        <img src="<%=path%>/static/image/china.png"  alt="全国布局图">
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="beautifull">
        <div class="container">

            <div class="beautifull-header">
                <h4>
                    为什么加入<span style="color:#28AD3C">车货易</span>
                </h4>
                <p>
                    车货易是物流行业的资源整合专家
                </p>
            </div>
            <div class="beautifull-grids row">
                <div class="col-md-4 beautiful-grid">
                    <div class="passion icon-container">
                        <img alt="空车返程？" class="icon-img" src="<%=path%>/static/image/icon1.png"
                             />
                    </div>
                    <div class="passion">
                        <h4>
                            货源不够 空车返程？
                        </h4>
                        <p>
                            　　车货易首创“经济圈联动”，海量货源汇聚平台，供车主随时自由选择，真正有效降低空载率，提高收益！
                        </p>
                    </div>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="col-md-4 beautiful-grid">
                    <div class="passion icon-container">
                        <img alt="运输没保障？" class="icon-img" src="<%=path%>/static/image/icon2.png">
                    </div>
                    <div class="passion">
                        <h4>
                            运费拖欠 运输没保障？
                        </h4>
                        <p>
                            　　车货易与各大保险公司合作，为每单货物承保，保单即时生效，收货人凭签收码确认收货，全程GPS轨迹跟踪，司机送达货物即可收到运费（结算客户除外）。
                        </p>
                    </div>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="col-md-4 beautiful-grid">
                    <div class="passion icon-container">
                        <img alt="货主运输成本太高？" class="icon-img" src="<%=path%>/static/image/icon3.png"
                             />
                    </div>
                    <div class="passion">
                        <h4>
                            货主运输成本太高？
                        </h4>
                        <p>
                            　　海量优质车主报价，货主自主选择，可一键呼叫司机，运费价格透明，无中介，物流成本最高可省50%。
                        </p>
                    </div>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="clearfix">
                </div>
            </div>
        </div>
    </div>


    <div class="news-section">
        <div class="container">
            <h4>
                最新动态
            </h4>
            <div class="beautifull">
                <div class="container">
                    <div class="beautifull-grids">
                        <div class="col-md-10 blog-grid col-md-offset-1">
                            <div class="blog_posts">
                                <div class="blog_date">
                                    <figure>
                                        <span>29</span>
                                        九月
                                    </figure>
                                </div>
                                <div class="blog_desc">
                                    <div class="blog_heading">
                                        <a href="<%=path%>/">物流最后一公里堵在哪儿？</a>
                                        <p>
                                            发布于 2017年9月29日 17:35
                                        </p>
                                    </div>
                                    <div class="section group example">
                                        <div class="col blog_1_of_2">
                                            <div class="blog_img">
                                                <a href="<%=path%>/">
                                                    <img src="<%=path%>/static/upload/ueditor/913698547646468096.jpg"
                                                         alt="image" class="img-responsive zoom-img"></a>
                                            </div>
                                        </div>
                                        <div class="col blogdata_1_of_2">
                                            <div class="blog_data">
                                                <p>
                                                    　　物流“最后一公里”，究竟“堵”在哪儿，又该如何“解堵”?
                                                </p>
                                                <div class="more">
                                                    <span>
                                                        <a class="button outline-outward hvr-rectangle-in"
                                                           href="<%=path%>/">阅读全文</a>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="clearfix">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!--网站底部-->
<%@include file="./common/footer.jsp"%>


<script src="<%=path%>/static/js/jquery-1.8.3.min.js"></script>
<script src="<%=path%>/static/js/chy.js"></script>
<script src="<%=path%>/static/js/responsiveslides.min.js" ></script>
<script type="text/javascript" src="<%=path%>/static/js/jquery.popup.min.js"></script>
<script type="text/javascript">
    document.querySelector('[data-id=home]').className = 'active';

    $(function () {
        $("#slider").responsiveSlides({
            auto: true,
            nav: true,
            speed: 500,
            namespace: "callbacks",
            pager: true
        });
    });
</script>
</body>
</html>


