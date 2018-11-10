<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/systemmsg/system_msg_list.js'/>"></script>
<title>消息列表详细界面</title>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div class="divBgColor">消息界面展示</div>
	<table class="textalignCenter tabcustomPeo" cellpadding="0"
		cellspacing="0">
		<tr>
			<td class="label BgColor">消息类型：</td>
			<td class="content"><bizoptionname:showname biztypekey="1181" value="${systemMsg.type }" /></td>
			<td class="label BgColor">标题：</td>
			<td class="content tabBorderRight">${systemMsg.title }</td>
		</tr>
		<tr>
			<td class="label BgColor">创建人：</td>
			<td class="content">${systemMsg.userName }</td>
			<td class="label BgColor">创建时间：</td>
			<td class="content tabBorderRight"><fmt:formatDate value="${systemMsg.createTime }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
		</tr>
		<tr>
			<td class="label BgColor">内容：</td>
			<td class="content tabBorderRight" colspan="3">${systemMsg.content }</td>
		</tr>
	</table>
	<div class="buttonlist buttonDivWidth">          
		<input type="button" class="confirm" id="backUp" value="返回"
			loxiaType="button" />
	</div>
</body>
</html>