<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>问卷预览</title>
<linkage:define />

</head>
<body contextpath="<%=request.getContextPath()%>">
	<div class="divBgColor">问卷预览</div>
	<table class="textalignCenter tabcustomPeo" cellpadding="0"
		cellspacing="0">
		<c:forEach begin="1" end="5" varStatus="status">
		<tr>
			<td class="label BgColor" >${status.index }</td>
			
			<td class="content tabBorderRight" >这是问答题的题目</td>
		</tr>  
		<tr>  
			<td class="content tabBorderRight"  colspan="2"><textarea  style="width:100%;"></textarea></td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>