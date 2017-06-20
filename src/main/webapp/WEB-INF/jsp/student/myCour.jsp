<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
<title>课程管理</title>
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
<link rel="stylesheet" href="assets/plugins/select2/select2.css">
<link rel="stylesheet"
	href="assets/plugins/datepicker/css/datepicker.css">
<link rel="stylesheet"
	href="assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css">
<link rel="stylesheet"
	href="assets/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css">
<link rel="stylesheet"
	href="assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.css">
<link rel="stylesheet"
	href="assets/plugins/jQuery-Tags-Input/jquery.tagsinput.css">
<link rel="stylesheet"
	href="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.min.css">
<link rel="stylesheet"
	href="assets/plugins/summernote/build/summernote.css">
<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
<link rel="shortcut icon" href="img/favicon.ico" />
<script type="text/javascript">
	function submitForm(currenPage) {

		document.getElementById("condition").action = "manage/queryDeviceByEmployee.do?currenPage="
				+ currenPage;
		document.getElementById("condition").submit();
	}
</script>
</head>
<!-- end: HEAD -->
<!-- start: BODY -->
<body>
	<div class="main-container">
		<%@ include file="../common/top.jspf"%>
		<%@ include file="../common/left.jspf"%>
		<!-- start: PAGE -->
		<div class="main-content">

			<div class="container">
				<!-- start: PAGE HEADER -->
				<div class="row">
					<div class="col-sm-12">

						<!-- start: PAGE TITLE & BREADCRUMB -->
						<ol class="breadcrumb">
							<li><i class="clip-home-3"></i> <a
								href="manage/departIndex.do"> 首页 </a></li>
							<li>课程管理</li>
							<li class="active">我的课程</li>

						</ol>
						<!--  <div class="page-header"></div>-->
						<br>
						<!-- end: PAGE TITLE & BREADCRUMB -->
					</div>
				</div>
				<hr>
				<div class="row">
					<div class="col-md-12">
						<!-- start: TABLE WITH IMAGES PANEL -->
						<p id="msg"></p>
						<form action="student/bookinglist" method="post">
							<table class="table table-striped table-bordered table-hover"
								id="sample-table-1">
								<caption>未选择的教材列表</caption>
								<thead>
									<tr>
										<th class="center"><input id="allSelect" type="checkbox"
											onclick="cli()" /></th>
										<th class="center">课程编号</th>
										<th class="center">课程名称</th>
										<th class="center">授课教师</th>
										<th class="center">教材定价</th>
										<th class="center">教材售价</th>
										<th class="center">教材名称</th>
										<th class="center">作者</th>
										<th class="center">出版社</th>
										<%--<th>领用人</th>
									--%>
										<th class="center">班级</th>
										<th class="center">操作</th>
									</tr>
								</thead>
								<tbody>

									<c:forEach items="${list}" var="courSem">
										<tr>
											<td class="center"><input class="select" name="id"
												type="checkbox" value="${courSem.id}" /></td>
											<td class="center">${courSem.courId}</td>
											<td class="center">${courSem.courses.name}</td>
											<td class="center">${courSem.basis.name}</td>
											<td class="center">${courSem.book.price }</td>
											<td class="center">${courSem.book.discount }</td>
											<td class="center">${courSem.book.title }</td>
											<td class="center">${courSem.book.author }</td>
											<td class="center">${courSem.book.publisher}</td>
											<td class="center">${courSem.classes.title }</td>

											<td class="center"><a
												href="student/bookingBook/${courSem.id}">预订</a></td>
										</tr>

									</c:forEach>
									<c:if test="${msg != null}">
										<tr>
											<td class="center" colspan="11">${msg}</td>
										</tr>

									</c:if>

								</tbody>

							</table>
							<div class="col-md-offset-11">
								<input class="btn btn-blue" type="submit" value="提交" />
							</div>
							<hr />
						</form>
					</div>

					<div class="col-md-12">
						<!-- start: TABLE WITH IMAGES PANEL -->


						<table class="table table-striped table-bordered table-hover"
							id="sample-table-1">
							<caption>已选择的教材列表</caption>
							<thead>
								<tr>
									<th class="center">预订时间</th>
									<th class="center">课程编号</th>
									<th class="center">课程名称</th>
									<th class="center">授课教师</th>

									<th class="center">教材售价</th>
									<th class="center">教材名称</th>
									<th class="center">作者</th>
									<th class="center">出版社</th>
									<%--<th>领用人</th>
									--%>
									<th class="center">班级</th>
									<th class="center">操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${bookings}" var="booking">
									<tr>
										<td class="center"><fmt:formatDate
												value='${booking.time}' pattern='yyyy年MM月dd日HH:mm' /></td>
										<td class="center">${booking.bookCourSem.courId}</td>
										<td class="center">${booking.bookCourSem.courses.name}</td>
										<td class="center">${booking.bookCourSem.basis.name}</td>
										<td class="center">${booking.discount }</td>
										<td class="center">${booking.bookCourSem.book.title }</td>
										<td class="center">${booking.bookCourSem.book.author }</td>
										<td class="center">${booking.bookCourSem.book.publisher}</td>
										<td class="center">${booking.bookCourSem.classes.title }</td>
										<c:if test="${booking.status == 1 }">
											<td class="center"><a href="student/unbooking/${booking.id}">退订</a></td>
										</c:if>
										<c:if test="${booking.status==0}">
											<td class="center"><span
												class="label label-sm label-danger">已退订</span></td>
										</c:if>
									</tr>

								</c:forEach>
								<c:if test="${message != null}">
									<tr>
										<td class="center" colspan="10">${message}</td>
									</tr>
								</c:if>

							</tbody>
						</table>
					</div>

					<!-- end: TABLE WITH IMAGES PANEL -->

				</div>
			</div>
		</div>
		<!-- end: PAGE -->
		<%@ include file="../common/footer.jspf"%>
	</div>
	<!-- end: MAIN CONTAINER -->


	<!-- start: MAIN JAVASCRIPTS -->
	<!--[if lt IE 9]>
		<script src="assets/plugins/respond.min.js"></script>
		<script src="assets/plugins/excanvas.min.js"></script>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<![endif]-->
	<!--[if gte IE 9]><!-->
	<script type="text/javascript"
		src="assets/plugins/jquery/jquery.min.js"></script>
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
		src="assets/plugins/jquery-inputlimiter/jquery.inputlimiter.1.3.1.min.js"></script>
	<script src="assets/plugins/autosize/jquery.autosize.min.js"></script>
	<script src="assets/plugins/select2/select2.min.js"></script>
	<script
		src="assets/plugins/jquery.maskedinput/src/jquery.maskedinput.js"></script>
	<script src="assets/plugins/jquery-maskmoney/jquery.maskMoney.js"></script>
	<script
		src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script
		src="assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
	<script src="assets/plugins/bootstrap-daterangepicker/moment.min.js"></script>
	<script
		src="assets/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script
		src="assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
	<script src="assets/plugins/bootstrap-colorpicker/js/commits.js"></script>
	<script src="assets/plugins/jQuery-Tags-Input/jquery.tagsinput.js"></script>
	<script
		src="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
	<script src="assets/plugins/summernote/build/summernote.min.js"></script>
	<script src="assets/plugins/ckeditor/ckeditor.js"></script>
	<script src="assets/plugins/ckeditor/adapters/jquery.js"></script>
	<script src="assets/js/form-elements.js"></script>
	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script>
		jQuery(document).ready(function() {
			Main.init();
			FormElements.init();
		});
		function cli() {
			var coll = $(".select");
			var collid = document.getElementById("allSelect");
			if (collid.checked) {
				for (var i = 0; i < coll.length; i++)
					coll[i].checked = true;
			} else {
				for (var i = 0; i < coll.length; i++)
					coll[i].checked = false;
			}
		}
		function bookings() {
			var coll = $(".select");
			var idList = "";
			for (var i = 0; i < coll.length; i++) {
				if (coll[i].checked) {
					idList+="id:"
					idList += coll[i].value;
					idList += ",";
				}
			}
			console.log(idList);
			var uri="student/bookinglist"
			$.ajax({
				url : uri,
				type : "post",
				data:{idList},
				dataType : "JSON",
				success : function(result) {
					window.location.href = "student/toBookingBook";
				},
				error : function() {
					document.getElementById("msg").innerHTML = "提交失败，请重新提交！";
				}
			});
		}
	</script>
</body>
</html>
