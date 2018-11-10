<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/systemmsg/system_msg_list.js'/>"></script>
<title>消息列表</title>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div>
		<form id="clientProjectQueryForm">
			<table>     
				<tr>
				   <td class="label">消息类型：</td>      
					<td width="150"><bizoption:bizoption name="type"  id="type" biztypekey="1181"  isChoose="true"  /></td>
					
					<td class="label">生成时间：</td>
					<td><input loxiaType="date" trim="true" name="createTime" /></td>
					
		<!-- 		    <td class="label">发送人：</td>
					<td class="width150"><input loxiaType="input" trim="true" name="userName" /></td> -->
				</tr>
				<tr>
				   <td class="label">是否已读：</td>
					<td><bizoption:bizoption name="isChecked"  id="isChecked" biztypekey="1001"  isChoose="true"  selected="${isCheckedno}" /></td>
					  <td class="label">客户名称：</td>
					<td class="width150"><input loxiaType="input" trim="true" name="clientName" /></td>
				</tr>
				</table>
		</form>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm" id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="button" loxiaType="button" class="confirm" id="isreader">标记已读</button>
		</div>
		<%@include file="/common/paginationInit.jsp"%>
		<table id="tbl-msg-list"></table>
		<div id="pager"></div>
	</div>
</body>
</html>