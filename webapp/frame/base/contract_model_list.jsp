<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/contract_model_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="contractModelForm" method="post">
		<table>
			<tr>
				<td class="label">文件名称：</td>
				<td width="150"><input loxiaType="input" name="fileName" /></td>
				<td class="label">合同类型：</td>
				<td width="150"><bizoption:bizoption biztypekey="1143"
						id="contractType" name="contractType" isChoose="true" /></td>
			</tr>
			<tr>
				<td class="label">上传时间：</td>
				<td width="150"><input loxiaType="date" name="date1" /></td>
				<td class="label" style="text-align: center;">到：</td>
				<td width="150"><input loxiaType="date" name="date2" /></td>
			</tr>
		</table>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
				id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.reset" bundle="${lang}"/>"
				id="resets">
				<fmt:message key="button.reset" bundle="${lang}" />
			</button>
			<button type="button" loxiaType="button" class="confirm" id="add">
				<fmt:message key="button.add" bundle="${lang}" />
			</button>
		</div>
	</form>
	</br>
	<%@include file="/common/paginationInit.jsp"%>
	<table id="tbl-contractModelList"></table>
</body>
</html>
