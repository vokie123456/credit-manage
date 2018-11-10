<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 贷款调查查询页面  key表示国际化  配置在messages_zh_CN.properties文件中-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.company.inves.formTitle"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/companyinves/company_inves_detail.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>

<body contextpath="<%=request.getContextPath()%>">
<div id="div_out"
		class="ui-tabs ui-widget ui-widget-content ui-corner-all">
		<ul
			class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li
				class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active">
				<a href="#formdetail" id="a_check">调查表</a>
			</li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id='a_apply'>申请表</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id='a_product'>产品配置</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id='a_collateral'>押品信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id='a_file'>电子文档</a></li>
		</ul>
	<input type="hidden" id="projectId" value="${projectId }"/>	
	<%@include file="/frame/loanbefore/companyinves/companyinves_detail_body.jsp" %>
	<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="div-2"></div>
	</div>
</div>
</body>
</html>
