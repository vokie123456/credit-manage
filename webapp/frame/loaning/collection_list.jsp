<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>催收列表</title>
<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/frame/loaning/collection_list.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>

<linkage:define />
</head>
	<body contextpath="<%=request.getContextPath()%>">
		<div>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
					id="reload">
					<fmt:message key="button.query" bundle="${lang}" />
				</button>
				<select id="backGroundSelect" style="width:150px;" class="ui-loxia-default ui-corner-all" name="backGround">
					<option value="0">无</option>
					<option value="1">红</option>
					<option value="2">黄</option>
					<option value="3">蓝</option>
				</select>
				<button id="backGroundBtn" type="button" loxiaType="button" class="confirm" title="背景颜色">
					<fmt:message key="button.backgroundBtn" bundle="${lang}" />
				</button>
			</div>
			<%@include file="/common/paginationInit.jsp" %>
			<table id="tbl-collection-list"></table>
			<div id="pager"></div>
		</div>
	</body>
</html>