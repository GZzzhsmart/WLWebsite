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
        关于车货易 - 携手物流科技官方网站
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

<div class="blog-content chy-section">
    <div class="container">
        <div class="blog-content-head text-center">
            <h3>关于车货易</h3>
        </div>
        <div class="section group">
            <style type="text/css">
                .passion h4{
                    color: #000

                }
                .passion img{
                    width: 105px;
                    margin: 0;
                }

            </style>
            <div class="col-md-3">
                <div class="blog_posts">
                    <div class="section group">
                        <div class="sidebar-nav-fixed">
                            <div class="well">
                                <ul class="nav">
                                    <li class="nav-header">车货易</li>
                                    <li>
                                        <a href="#" data-id="chehuoyi-intro" class="active">简介</a>
                                    </li>
                                    <li>
                                        <a href="#" data-id="chehuoyi-target">我们的目标</a>
                                    </li>
                                    <li>
                                        <a href="#" data-id="chehuoyi-history">我们的规划</a>
                                    </li>
                                    <li>
                                        <a href="#" data-id="chehuoyi-comparision">对比传统物流模式</a>
                                    </li>
                                    <li>
                                        <a href="#" data-id="chehuoyi-advantage">我们的优势</a>
                                    </li>
                                    <li>
                                        <a href="#" data-id="chehuoyi-capability">我们能做到</a>
                                    </li>

                                </ul>
                            </div>
                            <!--/.well -->
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-9">
                <div class="blog_posts">
                    <div class="section group">
                        <div class="blog_data" id="chehuoyi-intro" style="display:block">
                            <h3>简介</h3>
                            <p>
                                　　目前国内路面上行走的3000多万辆货车，平均空载率高达40%，返程空载已成为行业的一大痛点。车货匹配物流交易平台针对这一痛点应运而生，“为客户匹配提供最近、最好的货源、车源，在车货易物流交易平台上的注册货主和司机，遍布全国各大经济圈，只要货主、司机通过登陆平台，平台将根据定位自动匹配海量货源、车源。司机可自主报价接单承运，货主可自主选择司机，运费价格透明，无中介。
                            </p>
                        </div>
                        <div class="blog_data" id="chehuoyi-target" style="display:none">
                            <h3>我们的目标</h3>
                            <p>
                                　　打造中国最省心的物流交易平台、成为物流行业的“资源整合专家”让车货易惠及100万家企业+1200万台干线货车，让更多的企业降低物流成本，让更多的司机提高收益。
                            </p>

                        </div>
                        <div class="blog_data" id="chehuoyi-history" style="display:none">
                            <h3>车货易发展规划</h3>
                            <p>
                                　　目前车货易已全面布局广东省各大城市，目标惠及100万家企业、1200万台干线货车，有效帮助企业降低物流成本、帮助司机提高收益。将来，我们立足珠三角，广东省内网络全面覆盖，利用跨省城际干线，辐射全国各大经济圈，把各个区域的物流配送有效串联，形成全国物流网络，有车有货的地方就有车货易平台随时随地为你服务，帮你找车拉货。</p>
                            <figure>
                                <img src="<%=path%>/static/image/china.png"  alt="全国布局图">
                            </figure>
                            <figure>
                                <img src="<%=path%>/static/image/guangdong.jpg"  alt="广东布局图">
                            </figure>
                        </div>
                        <div class="blog_data" id="chehuoyi-comparision" style="display:none">
                            <h3>传统物流操作模式与车货易操作模式对比</h3>
                            <p>
                                　　传统物流操作模式繁琐多节，成本高，收益少。在我国，物流费用占GDP18%，厂商的物流成本占商品成本的33.5%。2017年，很多的中小企业将面临生存问题，成本管控无疑将成为企业重点管控方向。</p>
                            <figure>
                                <img src="<%=path%>/static/image/comparison1.jpg"  alt="传统模式">
                            </figure>
                            <p>　　车货易的操作模式是去中介化，通过中间环节的减少，为车主降低空载率，为货主降低成本。车货易的模式预计将可为货主降低20%的物流成本，相比传统物流，为车主提高10%以上的利润，车主月发车频次提高到85%以上。因此，车货易可为厂商节约物流成本，增加运力的直接收益！</p>
                            <figure>
                                <img src="<%=path%>/static/image/comparison2.jpg" alt="车货易模式" >
                            </figure>
                        </div>
                        <div class="blog_data" id="chehuoyi-advantage" style="display:none">

                            <h3>车队加入</h3>

                            <p>　　<strong>货源保障</strong>：直接各大厂商长期合作，规模影响力大，海量货源，稳定供货，有力降低返程空载率</p>
                            <p>　　<strong>多赚好省</strong>：节约成本，提高整体运输收益</p>
                            <p>　　<strong>省时放心</strong>：配载省时，全程轨迹跟踪，批量管理更高效</p>

                            <h3 style="margin-top:25px">车主加入</h3>
                            <p>　　<strong>保密认证</strong>：实名注册，证件齐全，严格审核，加密上传</p>
                            <p>　　<strong>提高收入</strong>：海量货源选择主，车主自主报价，降低空载率，提高收益</p>
                            <p>　　<strong>省时省心</strong>：随时接单，运费不拖欠，交易完成后及时到账</p>
                            <p>　　<strong>优惠不断</strong>：加油、保险、汽车养护等福利</p>


                            <h3 style="margin-top:25px">货主加入</h3>
                            <p>　　<strong>保密认证</strong>：实名注册，证件齐全，严格审核，加密上传</p>
                            <p>　　<strong>自由省钱</strong>：海量优质车主报价，货主自主选择，物流成本最高可省50%</p>
                            <p>　　<strong>省时省心</strong>：随时发布货单，随时有车承运，双方对接无中介</p>
                            <p>　　<strong>安全保障</strong>：全程GPS轨迹跟踪，众安保险承保，保单即时生效，收货人凭签收码确认收货</p>

                        </div>
                        <div class="blog_data" id="chehuoyi-capability" style="display:none">

                            <div class="beautifull-grids row">
                                <div class="col-md-6 beautiful-grid">
                                    <div class="passion icon-container">
                                        <img alt="空车返程？" class="icon-img" src="<%=path%>/static/image/gaoxiao.png"/>
                                    </div>
                                    <div class="passion">
                                        <h4>
                                            安全
                                        </h4>
                                        <p>
                                            减少多余配送装载<br>
                                            专业团队提供运输，杜绝野蛮装载<br>
                                            众安承保,3到5个工作日完成赔付
                                        </p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                                <div class="col-md-6 beautiful-grid">
                                    <div class="passion icon-container">
                                        <img alt="运输没保障？" class="icon-img" src="<%=path%>/static/image/zhunshi.png"/>
                                    </div>
                                    <div class="passion">
                                        <h4>
                                            准时
                                        </h4>
                                        <p>
                                            全网布局，科学匹配车货<br>提货及时<br>运输及时<br>到货及时
                                        </p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                                <div class="clearfix">
                                </div>
                            </div>

                            <div class="beautifull-grids row">

                                <div class="col-md-6 beautiful-grid">
                                    <div class="passion icon-container">
                                        <img alt="货主运输成本太高？" class="icon-img" src="<%=path%>/static/image/dingwei.png"/>
                                    </div>
                                    <div class="passion">
                                        <h4>
                                            可控
                                        </h4>
                                        <p>
                                            运输全程GPS定位跟踪<br>一路可见<br>一票可视
                                        </p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>

                                <div class="col-md-6 beautiful-grid">
                                    <div class="passion icon-container">
                                        <img alt="货主运输成本太高？" class="icon-img" src="<%=path%>/static/image/zhunshi.png" />
                                    </div>
                                    <div class="passion">
                                        <h4>
                                            高效
                                        </h4>
                                        <p>
                                            专业服务团队<br>7天14小时服务<br>各地分公司提供运输方案<br>专人一对一管家式项目跟踪
                                        </p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>

                            </div>

                            <div class="beautifull-grids row">
                                <div class="col-md-6 beautiful-grid">
                                    <div class="passion icon-container">
                                        <img alt="货主运输成本太高？" class="icon-img" src="<%=path%>/static/image/ying.png"/>
                                    </div>
                                    <div class="passion">
                                        <h4>
                                            多赢
                                        </h4>
                                        <p>
                                            为货主节约成本、降低运输费用、提升运输质量、完全信息化<br>为车队车主的运力保障货源稳定、提高利润、提升周转率、解决返程空载
                                        </p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>

                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- 网站底部-->
<%@ include file="../common/footer.jsp"%>

<script src="<%=path%>/static/js/jquery-1.8.3.min.js" ></script>
<script src="<%=path%>/static/js/chy.js" ></script>


<script type="text/javascript">
    document.querySelector('[data-id=chehuoyi]').className = 'active';
    var links = document.querySelectorAll('.sidebar-nav-fixed .nav a');
    var contents = document.querySelectorAll('.blog_data');

    document.querySelector('.sidebar-nav-fixed').addEventListener('click', function(evt){
        evt.preventDefault()
        var target = evt.target;
        var id = target.getAttribute('data-id');
        if(!id) {
            return
        }

        [].slice.call(links).forEach(function(el){

            if(el.getAttribute('data-id') == id){
                el.className = 'active';
            } else {
                el.className = '';
            }
        });

        [].slice.call(contents).forEach(function(el){
            if(el.id== id){
                el.style.display = 'block';
            } else {
                el.style.display = 'none';
            }
        });

    })
</script>
</body>
</html>
