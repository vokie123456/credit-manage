<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 申请贷款详细信息  全部只读文本框显示内容-->
<head>
<%@include file="/common/meta.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applyDetail"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/apply/apply_detail.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div class="ui-tabs ui-widget ui-widget-content ui-corner-all"
		id="div_out">
		<ul
			class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li
				class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active"><a
				href="#div-1">个人申请</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">关系人详细信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">共同还款人信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">产品配置</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">押品登记</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">电子文档</a></li>
		</ul>
		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="div-1">
			
		<%@include file="/frame/loanbefore/apply/apply_detail_body_exmp.jsp" %>
		</div>
		<div
			class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
			id="div-2"></div>
	</div>
</body>
</html>
