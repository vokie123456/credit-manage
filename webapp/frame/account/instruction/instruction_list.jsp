<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applylist" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/account/instruction/instruction_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
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
	<div id="formdetail">
		<form id="istructionListForm" method="post" >
			<table>
			<tr>
					<td class="label">客户名称：</td>
					<td class="width150"><input loxiaType="input" name="accountClientName" /></td>
					
					<td class="label">账单编号：</td>
					<td class="width150"><input loxiaType="input" name="billCode" /></td>
					<td class="label">操作类型：</td>
					<td class="width150">
					<bizselect:bizselect biztypekey="1166" id="isAuto" name="isAuto" startSort="11" 
						endSort="13" isChoose="true"/>
					</td>
					<td class="label">交易状态：</td>
					<td class="width150">
					<bizselect:bizselect biztypekey="1183" id="orderStatus" name="orderStatus" isChoose="true"/>
					</td>
				</tr>
			</table>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
					id="reload">
					<fmt:message key="button.query" bundle="${lang}" />
				</button>
				
				<button type="reset" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="tip.sys.apply.reset" bundle="${lang}"/>"
					id="resets">
					<fmt:message key="button.reset" bundle="${lang}" />
				</button>
			</div>
		</form>
	</div>
	<%@include file="/common/paginationInit.jsp"%>
	<table id="tbl-istructionlist"></table>
	<div id="pager"></div>
	<div id="dialog-chgrole"></div>
</body>
</html>