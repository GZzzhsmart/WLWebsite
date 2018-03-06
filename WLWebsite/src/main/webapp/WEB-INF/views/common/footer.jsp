<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--网站底部 -->
<div class="contact-section">
    <div class="container">
        <div class="contact-grids">
            <div class="col-md-3 contact-grid">
                <h5>关于携手物流科技</h5>
                <p style="padding-right: 50px;" class="label1">
                    “携手物流”成立于2015年，我们利用大数据管理技术，通过“互联网+”致力于打造国内标准化物流交易平台——车货易
                </p>
                <a href="<%=path%>/page/about" class="more">更多<img src="<%=path%>/static/image/arrow.png"></a>
            </div>
            <div class="col-md-4 contact-grid">
                <a name="contactus"></a>
                <h5>联系方式 </h5>
                <div class="icon2">
                    <ul>
                        <li><i class="indicate"></i></li>
                        <li><p class="label1">广东省东莞市南城区天安数码城C1-1302</p></li>
                    </ul>
                    <ul>
                        <li><i class="phone"></i></li>
                        <li><p class="label1">400-163-5156</p></li>
                    </ul>
                    <ul>
                        <li><i class="message"></i></li>
                        <li><a href="mailto:example@mail.com">info@chehuoyi.com</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-2 contact-grid">
                <h5>链接</h5>
                <div class="icon2">
                    <%--<ul>--%>
                    <%--<li>--%>
                    <%--<a href="">货主网页端</a></li>--%>
                    <%--</ul>--%>
                    <%--<ul>--%>
                    <%--<li>--%>
                    <%--<a href="">车队网页端</a></li>--%>
                    <%--</ul>--%>
                    <ul>
                        <li><a href="<%=path%>/">管理员后台</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-3 contact-grid app-grid" style="padding:0">
                <h5>客户端下载</h5>
                <div class="row">
                    <div class="col-md-6" style="margin-bottom: 5px;">
                        <div class="text">车主端</div>
                        <img src="<%=path%>/static/image/code_carowner.jpg" >
                    </div>
                    <div class="col-md-6">
                        <div class="text">货主端</div>
                        <img src="<%=path%>/static/image/code_shipper.jpg" >
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<div class="footer-section">
    <style type="text/css">
        @media all and (max-width: 640px) {
            .footer-section iframe {
                margin-bottom: 4px;
            }

            .footer-section span,
            .footer-section .company-name {
                display: block;
            }
        }

    </style>
    <div class="container">
        <div style="float:none;text-align:center;color:#999;">
            <p>
                <iframe src=""
                        scrolling="no" style="overflow:hidden;width: 130px;height: 40px; vertical-align: middle;"
                        frameborder="0" allowtransparency="true"></iframe>
                <span class="smaller-90">
                    Copyright © 2017-2018 <a href="<%=path%>/"
                                             class="blue bolder company-name">广东携手物流科技有限公司</a> <a
                        href="<%=path%>/"
                        target="_blank"
                        style="maring-left:5px">粤ICP备16007277号</a>
                </span>
            </p>
        </div>

        <div class="clearfix">
        </div>

    </div>
</div>
