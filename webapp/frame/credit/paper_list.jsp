<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript" src="<c:url value='/scripts/frame/credit/paper_list.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<title>问卷库</title>
<linkage:define />
<style type="text/css">
.label {
	text-align: left;
}
.link {
	text-decoration: underline;
	cursor: pointer;
	color: #556b80;
}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
<div id="formdetail">
	<form id="paperForm">
		<table>
			<tr>
				<td class="label">问卷编号：</td>
				<td class="width150">
					<input loxiaType="input" id="id" name="id" trim="true"/>
				</td>
				<td class="label">问卷类型：</td>
				<td class="width150">
					<bizoption:bizoption id="examType" name="examType" biztypekey="1168" isChoose="true"/>
				</td>
				<td class="label">问卷名称：</td>
				<td class="width150">
					<input loxiaType="input" id="title" name="title" trim="true"/>
				</td>
			</tr>
		</table>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm" id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="reset" loxiaType="button" class="confirm" id="resets">
				<fmt:message key="button.reset" bundle="${lang}" />
			</button>
			<button type="button" loxiaType="button" class="confirm" id="addPaper">新增问卷</button>
		</div>
	</form>
	</div>
	<%@include file="/common/paginationInit.jsp"%>
	<table id="tbl-list"></table>
	<div id="pager"></div>
</body>
</html>