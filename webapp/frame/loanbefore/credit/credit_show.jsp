<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.credit.credit_assessment.title"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/credit/credit_show.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<!-- 这里是页面内容区 -->
	<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
		id="div-1">
		<div id="creditDiv">
			<div class="divBgColor">
				<fmt:message key="label.credit.credit_assessment.title"
					bundle="${lang}" />
				<!-- 用来标识是个人还是企业授信 -->
				<input type="hidden" id="basicType" value="${basicType }"/>	
				<input type="hidden" id="clientId" value="${clientId }"/>	
				
			</div>
			
			<form id="creditShowForm" method="post">
				<table border="1" cellpadding="0" cellspacing="0" width="100%">
					<tr>
						<th>指标名称</th>
						<th><label>满分</label></th>
						<th id="status"><label>状态</label></th>
						<th><label>评分条件</label></th>
						<th><label>评分</label></th>
					</tr>
					<tbody id="creditAssessment"></tbody>
					<div style="font-size:16px;font-weight:bold;" align="right"><label id="totalScore"></label></div>
				</table>

			</form>
		</div>
</body>
</html>

