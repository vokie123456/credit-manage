<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/dunbasic/dun_manager_list.js'/>"></script>

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
	<div id="formdetail">
		<form id="visitListForm" method="post">
			<table>
				<tr>
					<td class="label">贷款编号</td>
					<td width="150"><input id="" name=""
						loxiaType="input" trim="true" /></td>
					<td class="label">当期还款日</td>
					<td width="150"><input id="" name=""
						loxiaType="input" trim="true" /></td>
					<td class="label">应还总额</td>
					<td width="150"><input id="" name=""
						loxiaType="input" trim="true" /></td>
					<td class="label">逾期账单数</td>
					<td width="150"><input id="" name=""
						loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<td class="label">催收人</td>
					<td width="150"><input id="" name=""
						loxiaType="input" trim="true" /></td>
					<td class="label">客户</td>
					<td width="150"><input id="" name=""
						loxiaType="input" trim="true" /></td>
					<td class="label">手机号码</td>
					<td width="150"><input id="" name=""
						loxiaType="input" trim="true" /></td>
					<td class="label">最后催收时间</td>
					<td width="150"><input id="" name=""
						loxiaType="input" trim="true" /></td>
				<%-- 	<!-- 客户姓名-->
					<td class="label"><fmt:message
							key="label.visitinquiry.clientName" bundle="${lang}" /></td>
					<td width="150"><input id="clientName" name="clientName"
						loxiaType="input" trim="true" /></td>
					<td class="label">客户经理：</td>
					<td width="150"><user:user bizHall="${bizHalls }"
							roleCode="0101,0102" userId="${userId }" compCode="${compCode }"
							id="broker" name="broker" isChoose="true" /></td> --%>
				</tr>
			</table>
		</form>

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
			<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="label.dunbasic.print.batch" bundle="${lang}"/>"
				id="print">
				<fmt:message key="label.dunbasic.print.batch" bundle="${lang}" />
			</button>
		</div>
		<%@include file="/common/paginationInit.jsp"%>
		<table id="tbl-viInquiryList"></table>
		<div id="pager"></div>
	</div>
</body>
</html>
