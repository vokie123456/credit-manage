<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" >

<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
	<head>
		<%@include file="/common/meta.jsp"%>
		<title></title>
		<script type="text/javascript" src="<c:url value='/scripts/frame/client/home_ownership.js?v=1.4.0'/>"></script>
	</head>
	<body contextpath="<%=request.getContextPath()%>">
		<table>
			<tr>
				<td><input loxiaType="button" type="button" value="点击处理归属地历史数据" id="home"/></td>
			</tr>		
		</table>
	</body>
</html>