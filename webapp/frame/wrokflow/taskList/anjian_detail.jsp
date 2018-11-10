<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>案件详情</title>

	<link rel="stylesheet" type="text/css" href="<c:url value='/css/newsZr/style_zr.css'/>"/>
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/newsZr/photoGallery.css'/>"/>
	<link rel="stylesheet" type="text/css" href="<c:url value='/scripts/kindeditor/themes/default/default.css'/>"/>
	<link rel="stylesheet" type="text/css" href="<c:url value='/scripts/kindeditor/plugins/code/prettify.css'/>"/>

	<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/scripts/my-jquery-ajax.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/scripts/newsZr/WdatePicker/WdatePicker.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/scripts/newsZr/dialog.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/scripts/newsZr/jquery.photo.gallery.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery.form.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/scripts/kindeditor/kindeditor.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/scripts/kindeditor/plugins/code/prettify.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/workflow/taskList/anjian_detail.js?v='/><c:out value='${now.getTime()}'/>"></script>
	<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/scripts/specialpag.js?v=0.1.1'/>"></script>
<linkage:define />
<style>
   body {color: #333333;font-family: "微软雅黑 Regular","微软雅黑";font-size: 14px;}
   ul li{list-style: none;}
   a{text-decoration: none;color:#333;}
   /*.use-file .nav-file-zr .active{background: rgba(242, 242, 242, 0.776) none repeat scroll 0 0;}*/
   .use-file{background: #fff none repeat scroll 0 0;min-height: 1024px;margin-left:-45px;}
   .use-file li{float:left;width: 150px;height: 35px;line-height: 35px;border:1px solid #ccc;text-align: center;cursor:pointer;}
   .use-file li a{color: #333333;}
   .clear{clear:both;}
   .tit-detail-left{font-size: 18px;font-style: normal;font-weight: bold;height: 36px;line-height: 36px;border-bottom:2px solid #949494;text-align:left;}
   .tabcustomPeo {background-color: #fff;}
   .table-text-left {font-size: 14px;text-align: left;}
   .tabcustomPeo {border-left: 1px solid #dddddd;border-right: 1px solid #dddddd;border-top: 1px solid #dddddd;width: 100%;}
   .table-text-left tr td {height: 15px;padding: 0 3px;text-align: left;}
   .tabcustomPeo tr td {border-bottom: 1px solid #dddddd;border-right: 1px solid #dddddd;height: 25px;line-height: 25px;}
   .w85 {width: 85px;}
   .w150 {width: 150px;}
   .mark{margin:18px 5px;}
   #dv-content{margin-left:45px;}
   #dv-content tr td{height:30px;line-height:30px;}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
<input type="hidden" name="project_id" id="project_id" value="${project_id }">
<input type="hidden" name="creditCode" id=creditCode value="${creditCode }">
<input type="hidden" name="taskid" id="taskid" value="${taskid }">
<input type="hidden" name="client_id" id="client_id" value="${client_id }">
<input type="hidden" name="clientId" id="clientId" value="${client_id }">
<input type="hidden" name="creditId" id="creditId" value="${creditId }">
<input type="hidden" name="user_id" id="user_id" value="${user_id }">
<input type="hidden" name="auditor_name" id="auditor_name" />

	<div class="ui-tabs-panel ui-corner-bottom ui-helper-clearfix bor-zr" id="div-1">
		  <div class="use-file">
		   <nav class="nav-file">
				<ul class="nav-file-zr" id="nav-li-a">
					<li >
						<a data-type="jbxx">基本信息</a>
					</li>
					<li>
						<a data-type="spls">审批历史</a>
					</li>
					<li>
						<a data-type="htxx">合同信息</a>
					</li>
					<li>
						<a data-type="yxzl" >影像材料</a>
					</li>
					<li>
						<a data-type="zxbg">征信报告</a>
					</li> 
				</ul>
				<div class="clear"></div>
		   </nav>
		   <div id="dv-content"></div>
		</div>
	</div>
</body>
</html>