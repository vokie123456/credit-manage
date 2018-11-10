<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applyDetail"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/debtassets/show_debtassets_detail.js'/>"></script>

<linkage:define />
<title>抵债资产列表详情界面</title>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<!-- 这里是页面内容区 -->
	<div class="ui-tabs ui-widget ui-widget-content ui-corner-all"
		id="div_out">
		<ul
			class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li
				class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active"><a
				href="#div-1">抵债资产管理</a></li>    
			<li class="ui-state-default ui-corner-top"><a href="#div-2">资产拍卖</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">资产租赁</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">联合开发</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">其他</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">审核</a></li>
		</ul>
		<input type="hidden" name="projectId" id="projectId"
				value="${projectId }" /> <input type="hidden" name="collateralType"
				id="collateralType" value="${collateralType }" /> <input
				type="hidden" name="collateralId" id="collateralId"
				value="${collateralId }" /> <input type="hidden" name="count"  
				id="count" value="${count }" />         
		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="div-1">
		</div>
		<div
			class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
			id="div-2"></div>
	</div>
	<div id="clientInfoDiv"></div>

</body>
</html>