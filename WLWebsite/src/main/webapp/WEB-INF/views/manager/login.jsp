<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>物流登录页面</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link href="<%=path%>/static/assets/css/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="<%=path%>/static/assets/css/font-awesome.min.css" />
	<link rel="stylesheet" href="<%=path%>/static/assets/css/ace.min.css" />
	<link rel="stylesheet" href="<%=path%>/static/assets/css/ace-rtl.min.css" />
	<link rel="stylesheet" href="<%=path%>/static/assets/css/bootstrap.css"/>
	<link rel="stylesheet" href="<%=path%>/static/assets/css/bootstrapValidator.css"/>
	<link rel="stylesheet" href="<%=path%>/static/css/sweetalert.css"/>
	<script type="text/javascript" src="<%=path%>/static/js/sweetalert-dev.js"></script>
</head>

<body class="login-layout">
<div class="main-container">
	<div class="main-content">
		<div class="row">
			<div class="col-sm-10 col-sm-offset-1">
				<div class="login-container">
					<div class="center">
						<h1>
							<i class="icon-leaf green"></i> <span class="red">物流</span>
						</h1>
						<h4 class="blue">&copy;物流官网后台管理平台</h4>
					</div>

					<div class="space-6"></div>

					<div class="position-relative">
						<div id="login-box"
							 class="login-box visible widget-box no-border">
							<div class="widget-body">
								<div class="widget-main">
									<h4 class="header blue lighter bigger">
										<center><i class="icon-coffee green"></i>登录</center>
									</h4>
									<div class="space-6"></div>
									<form  id="form1"  action="${pageContext.request.contextPath}/agency/login" method="post" class="form-horizontal">
										<input type="hidden" name="agency.agency_status" value="${agency.agency_status }">
										<fieldset>
											<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input id="agency_phone" name="agencyPhone" type="text" value="13361778694" class="form-control" placeholder="手机号码" />
														<i class="icon-user"></i>
												</span>
											</label>
											<label class="block clearfix"> <span
												class="block input-icon input-icon-right">
												<input id="agency_pwd" name="agencyPwd" type="password" value="123456" class="form-control" placeholder="密码" />
												<i class="icon-lock"></i>
												</span>
											</label>
											<div class="space"></div>
											<div class="clearfix">
												<label class="inline"> <input type="checkbox"
																			  class="ace" /> <span class="lbl">记住密码</span>
												</label>

												<button class="width-35 pull-right btn btn-sm btn-primary" type="submit">
													<li>登录</li>
												</button>

											</div>
											<div class="space-4"></div>
										</fieldset>
									</form>
								</div>
								<!-- /widget-main -->
								<div class="toolbar clearfix">
									<div>
										<a href="#" onclick="show_box('forgot-box'); return false;"
										   class="forgot-password-link"> <i class="icon-arrow-left"></i>
											忘记密码
										</a>
									</div>

									<%--<div>
										<a href="#" onclick="show_box('signup-box'); return false;"
										   class="user-signup-link">立即注册 <i
												class="icon-arrow-right"></i>
										</a>
									</div>--%>
								</div>
							</div>
						</div>

						<div id="forgot-box" class="forgot-box widget-box no-border">
							<div class="widget-body">
								<div class="widget-main">
									<h4 class="header red lighter bigger">
										<center><i class="icon-key"></i>重置密码</center>
									</h4>

									<div class="space-6"></div>
									<p>请输入你的手机号码并接收消息</p>

									<form action="#" method="post">
										<label class="block clearfix"> <span
												class="block input-icon input-icon-right"> <input name="agency.agency_phone" type="text" class="form-control" placeholder="手机号码" />
												<i class="icon-envelope"></i>
											</span>
										</label>
										<div class="clearfix">
											<button class="width-35 pull-right btn btn-sm btn-danger">
												<i class="icon-lightbulb"></i>发送
											</button>
										</div>
									</form>
								</div>
								<div class="toolbar center">
									<a href="#" onclick="show_box('login-box'); return false;"
									   class="back-to-login-link">返回登录界面 <i
											class="icon-arrow-right"></i>
									</a>
								</div>
							</div>
							<!-- /widget-body -->
						</div>
						<!-- /forgot-box -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="<%=path%>/static/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<%=path%>/static/assets/js/bootstrap.min.js"></script>
<script type="text/javascript">
    function show_box(id) {
        //swal("成功信息");
        jQuery('.widget-box.visible').removeClass('visible');
        jQuery('#' + id).addClass('visible');
    }
</script>

</body>
</html>
