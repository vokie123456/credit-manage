<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/credit/question_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	
	<form id="qryfrm">
		<table>
			<tr>
				<!-- 题目分类-->
				<td class="label">题目分类：</td>
				<td width="150"><bizoption:bizoption name="businessTypeStr"
						biztypekey="1169" isChoose="true" /></td>
						
				<!-- 题目类型-->
				<td class="label">题目类型：</td>
				<td width="150"><bizoption:bizoption name="questionTypeStr"
						biztypekey="1170" isChoose="true" /></td>
			</tr>
		</table>

		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm" id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="reset" loxiaType="button" class="confirm" id="resets">
				<fmt:message key="button.reset" bundle="${lang}" />
			</button>
			<button type="button" loxiaType="button" class="confirm"
				id="addQuestion">新增题目</button>
		</div>
	</form>
	<%@include file="/common/paginationInit.jsp"%>
	<table id="tbl-list"></table>
	<div id="pager"></div>
</body>
</html>
