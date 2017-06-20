<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<!-- Template Name: Clip-One - Responsive Admin Template build with Twitter Bootstrap 3.x Version: 1.3 Author: ClipTheme -->
<!--[if IE 8]><html class="ie8 no-js" lang="en"><![endif]-->
<!--[if IE 9]><html class="ie9 no-js" lang="en"><![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- start: HEAD -->
<head>
<base href="<%=basePath%>">

<title>设备详情</title>

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
<!--[if IE 7]>
		<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome-ie7.min.css">
		<![endif]-->
<!-- end: MAIN CSS -->
<!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->


<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
<link rel="shortcut icon" href="favicon.ico" />

</head>

</head>

<body>
	<div class="main-container">
		<%@ include file="common/top.jspf"%>
		<%@ include file="common/left.jspf"%>
		<!-- start: PAGE -->
		<div class="main-content">
			<div class="container">
				<!-- start: PAGE HEADER -->
				<div class="row">
					<div class="col-sm-12">
						<!-- start: PAGE TITLE & BREADCRUMB -->
						<ol class="breadcrumb">
							<li><i class="clip-home-3"></i> <a href="manage/index.jsp"> 主页 </a>
							</li>
							<li class="active">设备管理</li>
							<li class="active"><a href="manage/queryDevice.do">查询设备</a></li>
							<li class="active">设备详情</li>
							
						</ol>
						<div class="page-header">
							<h3>${device.name }</h3>

						</div>

						<!-- end: PAGE TITLE & BREADCRUMB -->
					</div>
				</div>
				<!-- end: PAGE HEADER -->
				<!-- start: PAGE CONTENT -->
				<table width="100%" >
				<tr>
					<td align="center" width="40%" valign="top">
						<img alt="设备图片" width="400" height="300" src="${device.photoPath }" />
					</td>
					<td align="left" valign="top">
					<table class="table table-striped table-bordered table-hover">
						<tr >
							<td width="20%">设备编号：</td>
							<td>${device.dno }</td>
						</tr>
						<%--<tr>
							<td>设备名称：</td>
							<td>${device.name }</td>
						</tr>
						--%><tr>
							<td>分类号：</td>
							<td>${device.typeId }</td>
						</tr>
						<tr>
							<td>型号：</td>
							<td>${device.model }</td>
						</tr>
						<tr>
							<td>国资分类号：</td>
							<td>${device.stateOwned }</td>
						</tr>
						<tr>
							<td>生产厂家：</td>
							<td>${device.manufacturer }</td>
						</tr>
						<tr>
							<td>国别码：</td>
							<td>${device.coutryCode }</td>
						</tr>
						<tr>
							<td>单价：</td>
							<td>${device.singlePrice }（元）</td>
						</tr>
						<tr>
							<td>总额：</td>
							<td>${device.totlePrice }（元）</td>
						</tr>
						<tr>
							<td>购买日期：</td>
							<td><fmt:formatDate value="${device.buyTime }" pattern="yyyy-MM-dd"/> </td>
						</tr>
						<tr>
							<td>出厂日期：</td>
							<td><fmt:formatDate value="${device.factoryDate }" pattern="yyyy-MM-dd"/> </td>
						</tr>
						<tr>
							<td>所属部门：</td>
							<td>${device.depart.name }</td>
						</tr>
						<tr>
							<td>存放地点：</td>
							<td>${device.storageSite }</td>
						</tr>
						<tr>
							<td>设备负责人：</td>
							<td>${device.leader.name }</td>
						</tr>
						<tr>
							<td>设备领用人：</td>
							<td>${device.receiver.name }</td>
						</tr>
						
					</table>
					
					</td>
				
				</tr>
				<tr>
							<td colspan="2">
								<div class="row">
										
										<div class="col-sm-12">
											<div class="tabbable">
												<ul id="myTab4" class="nav nav-tabs tab-padding tab-space-3 tab-blue">
													<li class="active">
														<a href="#panel_tab3_example1" data-toggle="tab">
															设备简介
														</a>
													</li>
													
												</ul>
												<div class="tab-content">
													<div class="tab-pane in active" id="panel_tab3_example1">
														${device.description }
													</div>
													
												</div>
											</div>
										</div>
									</div>
							</td>
						</tr>
				<tr height="10px">
					<td colspan="2" align="right"></td>
					</tr>
					<tr>
					<td colspan="2" align="right"><%--<input type="submit" value="修改" class="btn btn-blue">
					--%><input type="button" value="返回" class="btn btn-blue" onclick="javascript:history.go(-1);"></td>
					</tr>
				</table>
				
				

				<!-- end: PAGE CONTENT-->
			</div>

			<%@ include file="common/footer.jspf"%>
		</div>
	</div>
	<!-- end: PAGE -->
	<!-- start: MAIN JAVASCRIPTS -->
	<!--[if lt IE 9]>
		<script src="assets/plugins/respond.min.js"></script>
		<script src="assets/plugins/excanvas.min.js"></script>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<![endif]-->
	<!--[if gte IE 9]><!-->
	<script type="text/javascript"
		src="http://libs.useso.com/js/jquery/2.0.3/jquery.min.js"></script>
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
	<script
		src="assets/plugins/jQuery-Smart-Wizard/js/jquery.smartWizard.js"></script>
	<script src="assets/js/form-wizard.js"></script>
	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script>
		jQuery(document).ready(function() {
			Main.init();
			FormWizard.init();
		});
	</script>
</body>
</html>
