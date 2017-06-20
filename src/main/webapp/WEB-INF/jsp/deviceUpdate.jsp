<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<title>编辑设备</title>

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
		<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/fonts/style.css">
		<link rel="stylesheet" href="assets/css/main.css">
		<link rel="stylesheet" href="assets/css/main-responsive.css">
		<link rel="stylesheet" href="assets/plugins/iCheck/skins/all.css">
		<link rel="stylesheet" href="assets/plugins/bootstrap-colorpalette/css/bootstrap-colorpalette.css">
		<link rel="stylesheet" href="assets/plugins/perfect-scrollbar/src/perfect-scrollbar.css">
		<link rel="stylesheet" href="assets/css/theme_light.css" type="text/css" id="skin_color">
		<link rel="stylesheet" href="assets/css/print.css" type="text/css" media="print"/>
		<!--[if IE 7]>
		<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome-ie7.min.css">
		<![endif]-->
		<!-- end: MAIN CSS -->
		<!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
		<link rel="stylesheet" href="assets/plugins/select2/select2.css">
		<link rel="stylesheet" href="assets/plugins/datepicker/css/datepicker.css">
		<link rel="stylesheet" href="assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css">
		<link rel="stylesheet" href="assets/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css">
		<link rel="stylesheet" href="assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.css">
		<link rel="stylesheet" href="assets/plugins/jQuery-Tags-Input/jquery.tagsinput.css">
		<link rel="stylesheet" href="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.min.css">
		<link rel="stylesheet" href="assets/plugins/summernote/build/summernote.css">
		
		<link rel="stylesheet" href="assets/plugins/ladda-bootstrap/dist/ladda-themeless.min.css">
		<link rel="stylesheet" href="assets/plugins/bootstrap-switch/static/stylesheets/bootstrap-switch.css">
		<link rel="stylesheet" href="assets/plugins/bootstrap-social-buttons/social-buttons-3.css">
		
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
							<li><i class="clip-home-3"></i> <a href="manage/departIndex.do"> 主页 </a>
							</li>
							<li class="active">设备管理</li>
							<li class="active"><a href="manage/queryDevice.do">查询预约</a></li>
							<li class="active">编辑设备</li>
							
						</ol>
						<div class="page-header">
							<h3>
								添加设备 <small>请填写设备详细信息</small>
							</h3>
						
						</div>

						<!-- end: PAGE TITLE & BREADCRUMB -->
					</div>
				</div>
				<!-- end: PAGE HEADER -->
				<!-- start: PAGE CONTENT -->
				<form role="form" class="form-horizontal" action="manage/updateDevice.do" enctype="multipart/form-data" method="post">
				
					<div class="form-group">
						<label class="col-sm-2 control-label" for="form-field-1">
							设备编号 </label>
						<div class="col-sm-4">
							<input type="text" placeholder="设备编号" id="form-field-1"
								class="form-control" name="dno" value="${device.dno }">
								<input type="hidden" name="id" value="${device.id }">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="form-field-2">
							设备名称 </label>
						<div class="col-sm-4">
							<input type="text" placeholder="设备名称" id="form-field-2"
								class="form-control" name="name" value="${device.name }">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="form-field-3">
							设备图片</label>
						<div class="col-sm-4">
							<div class="fileupload fileupload-new" data-provides="fileupload" id="form-field-3">
													<div class="fileupload-new thumbnail" style="width: 200px; height: 150px;"><img src="${device.photoPath }" alt=""/>
													</div>
													<div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
													<div>
														<span class="btn btn-light-grey btn-file"><span class="fileupload-new"><i class="fa fa-picture-o"></i> 选择图片</span><span class="fileupload-exists"><i class="fa fa-picture-o"></i> 更换图片</span>
															<input type="file" name="photo">
														</span>
														<a href="#" class="btn fileupload-exists btn-light-grey" data-dismiss="fileupload">
															<i class="fa fa-times"></i> 删除图片
														</a>
													</div>
												</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="form-field-4">
							分类号 </label>
						<div class="col-sm-4">
							<input type="text" placeholder="分类号" id="form-field-4"
								class="form-control" name="typeId" value="${device.typeId }">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="form-field-4">
							国资分类号 </label>
						<div class="col-sm-4">
							<input type="text" placeholder="国资分类号" id="form-field-4"
								class="form-control" name="stateOwned" value="${device.stateOwned }">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="form-field-5">
							型号 </label>
						<div class="col-sm-4">
							<input type="text" placeholder="型号" id="form-field-5"
								class="form-control" name="model" value="${device.model }">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="form-field-6">
							规格 </label>
						<div class="col-sm-4">
							<input type="text" placeholder="规格" id="form-field-6"
								class="form-control" name="spec" value="${device.spec }">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="form-field-7">
							生产厂家 </label>
						<div class="col-sm-4">
							<input type="text" placeholder="生产厂家" id="form-field-7"
								class="form-control" name="manufacturer" value="${device.manufacturer }">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="form-field-8">
							国别码 </label>
						<div class="col-sm-4">
							<input type="text" placeholder="国别码" id="form-field-8"
								class="form-control" name="coutryCode" value="${device.coutryCode }">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="form-field-9">
							设备单价 </label>
						<div class="col-sm-4">
							<input type="text" placeholder="总价格" id="form-field-9"
								class="form-control" name="singlePrice" value="${device.singlePrice }">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="form-field-9">
							设备总额 </label>
						<div class="col-sm-4">
							<input type="text" placeholder="总价格" id="form-field-9"
								class="form-control" name="totlePrice" value="${device.totlePrice }">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="form-field-1">
							购买日期 </label>
						<div class="col-sm-4">
						<div class="input-group">
										<input type="text" data-date-format="yyyy-mm-dd" data-date-viewmode="years" class="form-control date-picker" name="buyTime"
										 value="<fmt:formatDate value='${device.buyTime }' pattern='yyyy-MM-dd'/>">
										<span class="input-group-addon"> <i class="fa fa-calendar"></i> </span>
									</div>
									</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="form-field-1">
							出厂日期 </label>
						<div class="col-sm-4">
						<div class="input-group">
										<input type="text" data-date-format="yyyy-mm-dd" data-date-viewmode="years" class="form-control date-picker" name="factoryDate"
										 value="<fmt:formatDate value='${device.factoryDate }' pattern='yyyy-MM-dd'/>">
										<span class="input-group-addon"> <i class="fa fa-calendar"></i> </span>
									</div>
									</div>
					</div>
					<!-- storageSite -->
					<div class="form-group">
						<label class="col-sm-2 control-label" for="form-field-1">
							存放地点 </label>
						<div class="col-sm-4">
							<input type="text" placeholder="存放地点" id="form-field-1"
								class="form-control" name="storageSite">
						</div>
					</div>
					<c:if test="${sessionScope.user.role>1 }">
						<div class="form-group">
							<label class="col-sm-2 control-label" for="form-field-1">
								所属部门 </label>
							<div class="col-sm-4">
								<select name="departId" class="form-control search-select" >
									<option value="0"></option>
									<c:forEach items="${departList }" var="depart">
										<c:choose>
											<c:when test="${depart.id eq device.departId }">
												<option value="${depart.id }" selected="selected">${depart.name }</option>
											</c:when>
											<c:otherwise>
												<option value="${depart.id }">${depart.name }</option>
											</c:otherwise>
										</c:choose>
										
									</c:forEach>
								</select>
							</div>
						</div>
						
						<!-- 该部分的内容 -->
						<div class="form-group">
							<label class="col-sm-2 control-label" for="form-field-1">
								设备负责人 </label>
							<div class="col-sm-4">
								<select name="leaderId" class="form-control search-select">
									<option value="0"></option>
									<c:forEach items="${employeeList }" var="employee">
										<c:choose>
											<c:when test="${employee.id eq device.leaderId}">
												<option value="${employee.id }" selected="selected">${employee.name }</option>
											</c:when>
											<c:otherwise>
												<option value="${employee.id }">${employee.name }</option>
											</c:otherwise>
										</c:choose>
										
									</c:forEach>
								</select>
							</div>
						</div>
					</c:if>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="form-field-1">
							设备领用人</label>
						<div class="col-sm-4">
							<select name="receiverId" class="form-control search-select">
								<option value="0"></option>
								<c:forEach items="${employeeList }" var="employee">
									<c:choose>
										<c:when test="${employee.id eq device.receiverId}">
											<option value="${employee.id }" selected="selected">${employee.name }</option>
										</c:when>
										<c:otherwise>
											<option value="${employee.id }">${employee.name }</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
												<label class="col-sm-2 control-label">
													设备简介<span class="symbol required"></span>
												</label>
												<div class="col-sm-8">
													<textarea class="ckeditor form-control" cols="10" rows="10" value="${device.description }" name="description"></textarea>
												</div>
												
											</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="form-field-1">
							</label>
						<div class="col-sm-4">
							<div class="col-sm-6">
								<input type="submit" value="确认修改" class="btn btn-blue btn-block">
							</div>
							<div class="col-sm-6">
								<input type="button" value="返回" class="btn btn-blue btn-block">
							</div>
						</div>
					</div>
					
				</form>
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

	<script src="assets/plugins/jquery/jquery.min.js"></script>

	<!--<![endif]-->
	<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>-->
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
		<script src="assets/plugins/jquery-inputlimiter/jquery.inputlimiter.1.3.1.min.js"></script>
		<script src="assets/plugins/autosize/jquery.autosize.min.js"></script>
		<script src="assets/plugins/select2/select2.min.js"></script>
		<script src="assets/plugins/jquery.maskedinput/src/jquery.maskedinput.js"></script>
		<script src="assets/plugins/jquery-maskmoney/jquery.maskMoney.js"></script>
		<script src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
		<script src="assets/plugins/bootstrap-daterangepicker/moment.min.js"></script>
		<script src="assets/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
		<script src="assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
		<script src="assets/plugins/bootstrap-colorpicker/js/commits.js"></script>
		<script src="assets/plugins/jQuery-Tags-Input/jquery.tagsinput.js"></script>
		<script src="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
		<script src="assets/plugins/summernote/build/summernote.min.js"></script>
		<script src="assets/plugins/ckeditor/ckeditor.js"></script>
		<script src="assets/plugins/ckeditor/adapters/jquery.js"></script>
		<script src="assets/js/form-elements.js"></script>
		
		<script src="assets/plugins/ladda-bootstrap/dist/spin.min.js"></script>
		<script src="assets/plugins/ladda-bootstrap/dist/ladda.min.js"></script>
		<script src="assets/plugins/bootstrap-switch/static/js/bootstrap-switch.min.js"></script>
		<script src="assets/js/ui-buttons.js"></script>
		
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		
	<script>
		jQuery(document).ready(function() {
			Main.init();
			//Index.init();
			FormElements.init();
			UIButtons.init();
		});
	</script>

</body>
</html>
