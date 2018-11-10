<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html;charset=UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/images/favicon.ico" />
<title><fmt:message key="system.name" bundle="${lang}" /></title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/fg.menu.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/layout-default-latest.css'/>" />
<style>
html, body {
	height: 100%;
	overflow: hidden;
}
</style>
<script type="text/javascript"
	src="<c:url value='/scripts/main/fg.menu.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/main/jquery.layout-latest.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/main/jquery.wresize.js'/>"></script>

<script type="text/javascript"
	src="<c:url value='/scripts/main-content-frame.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/main-content.js'/>"></script>

<script type="text/javascript">
<!--
	var $j = jQuery.noConflict();

	$j(document).ready(function() {
		loxia.init({
			debug : true,
			region : 'zh-CN'
		});
	});

	-->
</script>
</head>
<body style="background: #fffff;"
	contextpath="<%=request.getContextPath()%>">

	<div id="top"></div>
	<div id="main-container">
		<div class="ui-layout-center">
			<div id="frame-container">
				<ul>
				</ul>
			</div>
		</div>
		<%@include file="/common/westMenu.jsp"%>
	</div>

	<div id='msg' style='display: none; cursor: pointer;'  onclick="javascript:$j('#msg').hide();" >
		<span class="ui-icon"> <!-- -->
		</span> <span class="content"> <!--  -->
		</span>
		<!-- <input style='display: none;' id="closebutton" type="button" value="关闭" onclick="javascript:$j('#msg').hide();"></input> -->
	</div>
	<div id="functionlist" style="display: none;"></div>
	<div id="dialog-confirm" style="display: none;"></div>
</body>
</html>