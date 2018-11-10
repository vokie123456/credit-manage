<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.credit.inves.title"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/credit/person_credit_inves.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
		<input type="hidden" id="credit_inves_projectId" value="${projectId }"/>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-personCreditInves"></table>
	    <div id="pager"></div>
	    
	<div class="buttonlist buttonDivWidth">
		<button type="button" loxiaType="button" class="confirm hidden1"
			title="" id="addPersonCreditInves"><fmt:message
							key="label.credit.inves.but.query" bundle="${lang}" /></button>
		</button>
	</div>

</body>