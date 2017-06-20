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

<title>�豸����</title>

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
							<li><i class="clip-home-3"></i> <a href="manage/index.jsp"> ��ҳ </a>
							</li>
							<li class="active">�豸����</li>
							<li class="active"><a href="manage/queryDevice.do">��ѯ�豸</a></li>
							<li class="active">�豸����</li>
							
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
						<img alt="�豸ͼƬ" width="400" height="300" src="${device.photoPath }" />
					</td>
					<td align="left" valign="top">
					<table class="table table-striped table-bordered table-hover">
						<tr >
							<td width="20%">�豸��ţ�</td>
							<td>${device.dno }</td>
						</tr>
						<%--<tr>
							<td>�豸���ƣ�</td>
							<td>${device.name }</td>
						</tr>
						--%><tr>
							<td>����ţ�</td>
							<td>${device.typeId }</td>
						</tr>
						<tr>
							<td>�ͺţ�</td>
							<td>${device.model }</td>
						</tr>
						<tr>
							<td>���ʷ���ţ�</td>
							<td>${device.stateOwned }</td>
						</tr>
						<tr>
							<td>�������ң�</td>
							<td>${device.manufacturer }</td>
						</tr>
						<tr>
							<td>�����룺</td>
							<td>${device.coutryCode }</td>
						</tr>
						<tr>
							<td>���ۣ�</td>
							<td>${device.singlePrice }��Ԫ��</td>
						</tr>
						<tr>
							<td>�ܶ</td>
							<td>${device.totlePrice }��Ԫ��</td>
						</tr>
						<tr>
							<td>�������ڣ�</td>
							<td><fmt:formatDate value="${device.buyTime }" pattern="yyyy-MM-dd"/> </td>
						</tr>
						<tr>
							<td>�������ڣ�</td>
							<td><fmt:formatDate value="${device.factoryDate }" pattern="yyyy-MM-dd"/> </td>
						</tr>
						<tr>
							<td>�������ţ�</td>
							<td>${device.depart.name }</td>
						</tr>
						<tr>
							<td>��ŵص㣺</td>
							<td>${device.storageSite }</td>
						</tr>
						<tr>
							<td>�豸�����ˣ�</td>
							<td>${device.leader.name }</td>
						</tr>
						<tr>
							<td>�豸�����ˣ�</td>
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
															�豸���
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
					<td colspan="2" align="right"><%--<input type="submit" value="�޸�" class="btn btn-blue">
					--%><input type="button" value="����" class="btn btn-blue" onclick="javascript:history.go(-1);"></td>
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
