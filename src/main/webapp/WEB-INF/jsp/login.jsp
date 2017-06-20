<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<!-- Template Name: Clip-One - Responsive Admin Template build with Twitter Bootstrap 3.x Version: 1.3 Author: ClipTheme -->
<!--[if IE 8]><html class="ie8 no-js" lang="en"><![endif]-->
<!--[if IE 9]><html class="ie9 no-js" lang="en"><![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- start: HEAD -->
<head>
<title>中原工学院教材预订系统</title>
<base href="<%=basePath%>">
<!-- start: META -->
<meta charset="utf-8" />
<!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta content="" name="description" />
<meta content="" name="author" />
<!-- end: META -->
<!-- start: MAIN CSS -->
<link rel="stylesheet"
	href="assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/fonts/style.css">
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/css/main-responsive.css">
<link rel="stylesheet" href="assets/plugins/iCheck/skins/all.css">
<link rel="stylesheet"
	href="assets/plugins/bootstrap-colorpalette/css/bootstrap-colorpalette.css">
<link rel="stylesheet"
	href="assets/plugins/perfect-scrollbar/src/perfect-scrollbar.css">
<link rel="stylesheet" href="assets/css/theme_light.css" type="text/css"
	id="skin_color">
<link rel="stylesheet" href="assets/css/print.css" type="text/css"
	media="print" />
<link rel="shortcut icon" href="img/favicon.ico" />
<!--[if IE 7]>
		<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome-ie7.min.css">
		<![endif]-->
<!-- end: MAIN CSS -->
<!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
</head>
<!-- end: HEAD -->
<!-- start: BODY -->
<body class="login example2">
	<div class="main-login col-sm-4 col-sm-offset-4">
		<div class="logo">
			中原工学院<i class="clip-clip"></i>教材预订系统
		</div>
		<!-- start: LOGIN BOX -->
		<div class="box-login">
			<p>
				请输入帐号和密码完成登录<font color="red">${errorMessage}</font>
			</p>
			<form class="form-login" action="login" method="post">
				<div class="errorHandler alert alert-danger no-display">
					<i class="fa fa-remove-sign"></i> 您提交的表单存在错误，请重新检查.
				</div>
				<fieldset>
					<div class="form-group">
						<span class="input-icon"> <input type="text"
							class="form-control" name="username" placeholder="登录帐号">
							<i class="fa fa-user"></i>
						</span>
					</div>
					<div class="form-group form-actions">
						<span class="input-icon"> <input type="password"
							class="form-control password" name="password"
							placeholder="Password"> <i class="fa fa-lock"></i>
						</span>
					</div>
					<div class="form-actions">
						<label for="remember" class="checkbox-inline"> <input
							type="checkbox" class="grey remember" id="remember"
							name="remember"> 记住我
						</label>
						<button type="submit" class="btn btn-bricky pull-right">
							登录 <i class="fa fa-arrow-circle-right"></i>
						</button>
					</div>
				</fieldset>
			</form>
		</div>
		<!-- start: COPYRIGHT -->
		<div class="copyright">2016 &copy; 教材预订 by 中原工学院.</div>
		<!-- end: COPYRIGHT -->
	</div>
	<!-- start: MAIN JAVASCRIPTS -->
	<!--[if lt IE 9]>
		<script src="assets/plugins/respond.min.js"></script>
		<script src="assets/plugins/excanvas.min.js"></script>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<![endif]-->
	<!--[if gte IE 9]><!-->
	<%--<script type="text/javascript" src="http://libs.useso.com/js/jquery/2.0.3/jquery.min.js"></script>
		--%>
	<script src="assets/plugins/jquery/jquery.min.js"></script>
	<!--<![endif]-->
	<script src="assets/plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="assets/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"></script>
	<script src="assets/plugins/blockUI/jquery.blockUI.js"></script>
	<script src="assets/plugins/iCheck/jquery.icheck.min.js"></script>
	<script src="assets/plugins/perfect-scrollbar/src/jquery.mousewheel.js"></script>
	<script src="assets/plugins/perfect-scrollbar/src/perfect-scrollbar.js"></script>
	<script src="assets/plugins/less/less-1.5.0.min.js"></script>
	<script src="assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<script
		src="assets/plugins/bootstrap-colorpalette/js/bootstrap-colorpalette.js"></script>
	<script src="assets/js/main.js"></script>
	<!-- end: MAIN JAVASCRIPTS -->
	<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script
		src="assets/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
	<script src="assets/js/login.js"></script>
	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script>
		jQuery(document).ready(function() {
			Main.init();
			Login.init();
		});
	</script>
</body>
<!-- end: BODY -->
</html>