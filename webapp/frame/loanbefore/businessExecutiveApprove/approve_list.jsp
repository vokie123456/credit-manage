<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applylist" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/businessExecutiveApprove/approve_list.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div id="formdetail">
		<div class="divBgColor">
			<fmt:message key="label.search.param" bundle="${lang}" />
		</div>
		<form id="researchListForm" method="post">
			<table>
				<tr>
					<!-- 项目编号-->
					<td class="label"><fmt:message
							key="label.apply.clientproject.project_code" bundle="${lang}" /></td>
					<td width="150"><input id="projectCode" name="projectCode"
						loxiaType="input" trim="true" /></td>
						<!-- 客户姓名 -->
					<td class="label"><fmt:message
							key="label.apply.clientproject.client_name" bundle="${lang}" /></td>
					<td width="150"><input id="clientName" name="clientName"
						loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 所属行业   -->
					<td class="label"><fmt:message
							key="label.applyDetail.work_industry" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption name="workIndustry"
							biztypekey="1014" isChoose="true" /></td>
					<!-- 证件类型 -->
					<td class="label"><fmt:message
							key="label.apply.clientproject.card_type" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1007"
							id="cardType" name="cardType" isChoose="true" /></td>
					<!-- 证件号码   -->
					<td class="label"><fmt:message
							key="label.apply.clientproject.card_no" bundle="${lang}" /></td>
					<td width="150"><input id="cardNo" name="cardNo"
						loxiaType="input" trim="true" />
						</td>
				</tr>
				<tr>
							<!-- 申请金额-->
					<td class="label"><fmt:message
							key="label.credit.list.query.applyMoney" bundle="${lang}" /></td>
					<td width="150"><input name="checkMoneyMin" loxiaType="number"
						decimal="2" /></td>
					<td align="center" class="label"><fmt:message
							key="label.credit.list.query.to" bundle="${lang}" /></td>
					<td width="150"><input name="checkMoneyMax" loxiaType="number"
						decimal="2" /></td>
						<td class="label"><fmt:message
							key="label.apply.clientproject.dataRole" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="rolelevel"
							id="roleLevel" name="roleLevel" /></td>
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
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-researchlist"></table>
		<div id="pager"></div>
	</div>
</body>
</html>
