<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<c:url value='/scripts/frame/base/del.js?v=2.1.0'/>"></script>
<fmt:setBundle basename="messages" var="lang" />
<title>删除客户数据</title>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="orgForm" method="post">
		<table width="400px">
			<tr>
				<td class="label width130">手机号:</td>
				<td><input id="mobile" name="mobile" loxiaType="input" trim="true" mandatory="true"><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
			</tr>
			<tr>
				<td class="label width130">身份证号:</td>
				<td><input id="cardNo" name="cardNo" loxiaType="input" trim="true" mandatory="true"><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
			</tr>
		</table>
	</form>
	 <div class="buttonlist buttonDivWidth">
            <button type="button" loxiaType="button" class="confirm" id="btnSave">生成清除客户信息脚本</button>
     </div>
</body>
</html>
