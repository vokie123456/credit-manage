<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.lend.query" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/client_basic_information.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
.client_adv{width:100%;}
.client_adv td{height:30px; line-height:30px; text-align:right;}
.left-tex{width:100%;}
.left-tex  td:last-child{text-align:left;}
.left-tex td select{width:150px;}
.left-tex td textarea{width:350px; height:150px;resize:none}

.client-find{width:900px; text-align:center;white-space:normal;}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	
	
	<form id="lendListForm" method="post">
		<table>
			<tr>
				<td class="label">客户姓名：</td>
				<td width="150"><input id="" name="clientName"
					loxiaType="input" trim="true" /></td>
				<td class="label">身份证：</td>
				<td width="150"><input id="" name="cardNo"
					loxiaType="input" trim="true" /></td>
				<td class="label">客户手机号：</td>
				<td width="150"><input id="" name="mobilePhone"
					loxiaType="input" trim="true" /></td>
				
				
			</tr>
		</table>
		<div class="buttonlist buttonDivWidth">
		 	<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
				id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="reset" loxiaType="button" class="confirm"
				title="tip" id="reset"/>
				<fmt:message key="button.reset" bundle="${lang}" />
			</button>
		</div>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-lendlist"></table>
		<div id="pager"></div>
	</form>
<div id="dialog-chgrole"></div>
</body>
</html>
