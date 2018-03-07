<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                            <c:if test="${requestScope.recruitlist!=null}">
                                <c:forEach var="c" items="${recruitlist}">
                                    <h5>${c.title}</h5>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <img src="<%=path%>/${c.img}" alt="${c.title}">
                                        </div>
                                        <div class="col-md-8">
                                            <p>
                                                ${c.content}
                                            </p>
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:if>
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
