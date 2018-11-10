<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applylist" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/apply/p_apply_list.js'/>"></script>
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
		<div class="divBgColor">
			<fmt:message key="label.search.param" bundle="${lang}" />
		</div>
		<form id="pApplyListForm" method="post">
			<table>
				<tr>
					<!-- 项目编号-->
					<td class="label"><fmt:message
							key="label.apply.clientproject.project_code" bundle="${lang}" /></td>
					<td width="150"><input id="projectCode" name="projectCode"
						loxiaType="input" trim="true" /></td>
					<!-- 客户姓名 client.client_basic  -->
					<td class="label"><fmt:message
							key="label.apply.clientproject.client_name" bundle="${lang}" /></td>
					<td width="150"><input id="clientName" name="clientName"
						loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 证件类型  -->
					<td class="label"><fmt:message
							key="label.apply.clientproject.card_type" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1007" id="cardType"
							name="cardType" isChoose="true" checkmaster="validateCardType"/></td>
					<!--证件号码-->
					<td class="label"><fmt:message
							key="label.apply.clientproject.card_no" bundle="${lang}" /></td>
					<td width="150"><input id="cardNo" name="cardNo"
						loxiaType="input" trim="true" checkmaster="validateIdentify"/></td>
				</tr>
				<tr>
					<!-- 申请状态 -->
					<td class="label"><fmt:message
							key="label.applyDetail.apply_status" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1031"
							name="applystatus" isChoose="true" /></td>
					<!-- 申请金额-->
					<td class="label"><fmt:message
							key="label.credit.list.query.applyMoney" bundle="${lang}" /></td>
					<td width="150"><input name="moneyMin" loxiaType="number"
						decimal="2" /></td>
					<td align="center" class="label"><fmt:message
							key="label.credit.list.query.to" bundle="${lang}" /></td>
					<td width="150"><input name="moneyMax" loxiaType="number"
						decimal="2" /></td>
				</tr>

				<tr>
					<!-- 销售人员姓名 -->
					<td class="label"><fmt:message
							key="label.apply.clientproject.saler_name" bundle="${lang}" /></td>
					<td><userDepartment:userDepartment bizHall="${bizHall}"
							id="salerName" name="salerName" isChoose="true" /></td>
					<!-- 提交时间区间 -->
					<td class="label"><fmt:message
							key="label.applyDetail.submit_time" bundle="${lang }" /></td>
					<td><input id="applySubmitBegin" loxiaType="date"
						name="applySubmitBegin" /></td>
					<td align="center" class="label"><fmt:message
							key="label.credit.list.query.to" bundle="${lang}" /></td>
					<td><input id="applySubmitEnd" loxiaType="date"
						name="applySubmitEnd" /></td>
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
		</div>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-pApplylist"></table>
		<div id="pager"></div>
	</div>
</body>
</html>
