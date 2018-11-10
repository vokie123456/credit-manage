<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applylist" bundle="${lang}" /></title>
<script type="text/javascript" src="<c:url value='/scripts/frame/credit/paper_add.js'/>"></script>
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
	<form id="paperForm">
	
		<input type="hidden" id="examId" name="examId"/> 
		<c:if test="${!empty examId}">
		value="${examId}"/>
		</c:if>
		<c:if test="${empty examId}">
		value=""/>
		</c:if>
		<table>
			<tr>
				<td class="label">问卷名称：</td>
				<td class="width150">
					<input loxiaType="input" id="title" mandatory="true" name="title" value="${paper.title}" trim="true"/>
				</td>
				<td class="label">问卷类型：</td>
				<td class="width150">
					<bizoption:bizoption id="examType" name="examType" biztypekey="1168" selected="${paper.examType}"/>
				</td>
				<td class="label">有效天数：</td>
				<td class="width150">
					<input loxiaType="number" id="effectiveDays" mandatory="true" name="effectiveDays" value="${paper.effectiveDays}"/>
				</td>
			</tr>
		</table>
		<div class="buttonlist buttonDivWidth">
			
		<table>
			<tr>
			<td colspan="2"><button type="button" loxiaType="button" class="confirm" id="save">保存</button>
			<button type="button" class="confirm" id="reback" loxiaType="button">返回</button>
			<button type="button" class="confirm" id="addNewQuestion" loxiaType="button">新增题目</button></td>
				<td class="label paddingwidthLeft10">题目分类：</td>
				<td width="150">
					<bizoption:bizoption id="businessType" name="businessType" biztypekey="1169" isChoose="true" />
				</td>
				<td width="150">
					<button type="button" loxiaType="button" class="confirm" id="query">查询</button>
				</td>
			</tr>
		</table>
				</div>
		<div id="tableDiv"></div>
	</form>
</body>
</html>