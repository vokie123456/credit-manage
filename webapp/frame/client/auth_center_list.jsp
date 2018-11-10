<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>认证中心</title>
<script type="text/javascript" src="<c:url value='/scripts/frame/client/auth_center_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label{
	text-align: left;
}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div>
		<form id="frm-qryAuthentication" method="POST">
			<table>
				<tr>
					<td class="label">请求认证时间：</td>
					<td width="150"><input id="requestBeginTime" loxiaType="date"
						name="requestBeginTime" /></td>
					<td class="label"><fmt:message key="label.credit.list.query.to" bundle="${lang}" /></td>
					<td width="150"><input id="requestEndTime" loxiaType="date"
						 name="requestEndTime" /></td>
				</tr>
				<tr>
					<td class="label">认证状态：</td>
					<td width="150"><bizoption:bizoption biztypekey="1137"
							name="authStatus" isChoose="true" /></td>
				</tr>
				<tr>
					<td class="label">认证类型：</td>
					<td width="150">
						<bizoption:bizoption biztypekey="1003" 
						name="authTypeCode" id="authTypeCode" isChoose="true" />
					</td>
					<td class="label">认证类型要素：</td>
					<td width="150"> 
					<select id="authElement" name="authElement" >
						<option value="">请选择</option>
					</select>
					</td>
				</tr>
				<tr>
					<td class="label">认证结果：</td>
					<td width="150"><bizoption:bizoption biztypekey="1138"
							name="authResult" isChoose="true" /></td>
					<td class="label">申请人：</td>
					<td width="150"><input id="applyPerson" name="applyPerson" 
 						loxiaType="input" trim="true" /></td></td>
				</tr>
				<tr>
					<td class="label">证件类型：</td>
					<td width="150"><bizoption:bizoption biztypekey="1007,1102"
							name="cardType" id="cardType" isChoose="true" /></td>
					<td class="label">证件号码：</td>
					<td width="150"><input id="cardNo" name="cardNo" loxiaType="input" trim="true" /></td></td>
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
			</div>
		</form>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-authenticationlist"></table>
		<div id="pager"></div>
	</div>
</body>
</html>