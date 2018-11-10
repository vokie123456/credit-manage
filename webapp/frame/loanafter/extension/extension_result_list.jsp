<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 展期项目列表   -->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.extend.apply.extendPaymentList"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/extension/extension_result_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>

<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div>
		<form id="qryfrm">
			<table>
				<tr>

					<td class="label">客户名称：</td>
					<td><input loxiaType="input" trim="true" name="clientName" /></td>
					<td class="label">证件类型：</td>
					<td><select id="cardType" name="cardType"
						class="ui-loxia-default ui-corner-all" /></td>

					<td class="label">证件号：</td>
					<td class="width150"><input loxiaType="input" trim="true" name="cardNo" /></td>

				</tr>
				<tr>
					<!-- 项目编号-->
					<td class="label"><fmt:message
							key="label.audit.taskquery.project_code" bundle="${lang}" /></td>
					<td width="150"><input id="projectCode" name="projectCode"
						loxiaType="input" trim="true" /></td>
					<td class="label">
					        <!-- 展期<fmt:message
							key="label.visitinquiry.contractID" bundle="${lang}" /> -->
							客户经理：
					</td>
					<td width="150">
					        <!-- <input id="contractNo" name="contractNo"
						loxiaType="input" trim="true" /> -->
					     <user:user bizHall="${bizHalls }" compCode="${compCode }"
							roleCode="0101,0102" userId="${userId }"
							id="broker" name="saleraCode" isChoose="true" />	
				    </td>
				</tr>
			</table>

			<input type="hidden" name="clientId" value="${clientId}"
				id="clientId" />

			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm" id="reload">
					<fmt:message key="button.query" bundle="${lang}" />
				</button>
				<button type="reset" loxiaType="button" class="confirm" id="resets">
					<fmt:message key="button.reset" bundle="${lang}" />
				</button>

				<button type="button" loxiaType="button" class="confirm"
					id="extendSh">展期审核</button>
				<button type="button" loxiaType="button" class="confirm"
					id="extendQy">展期签约</button>
			</div>
		</form>

		<%@include file="/common/paginationInit.jsp"%>
		<table id="tbl-extendList"></table>
		<div id="pager"></div>
	</div>

</body>
</html>
