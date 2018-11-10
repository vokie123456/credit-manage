<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/businessmonitor/business_monitor_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
.select {
	width: 130px;
	background-color: #DAE1E6;
}
</style>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="formdetail">

		<form id="businessQueryForm" method="post">
			<table>
				<tr>
					<td class="label">客户名称：</td>
					<td width="150"><input id="applyPerson" name="applyPerson"
						loxiaType="input" trim="true" /></td>
					<!-- 证件类型 -->
					<td class="label"><fmt:message
							key="label.apply.clientproject.card_type" bundle="${lang}" /></td>
					<td width="150"><select id="cardType" name="cardType"
						class="ui-loxia-default ui-corner-all" /></td>
					<!-- 证件号码   -->
					<td class="label"><fmt:message
							key="label.apply.clientproject.card_no" bundle="${lang}" /></td>
					<td width="150"><input id="cardNo" name="cardNo"
						loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<td class="label">项目编号：</td>
					<td width="150"><input id="projectCode" name="projectCode"
						loxiaType="input" trim="true" /></td>

					<td class="label">合同号：</td>
					<td width="150"><input id="contractId" name="contractId"
						loxiaType="input" trim="true" /></td>
					<td class="label">项目状态：</td>
					<td width="150"><bizoption:bizoption biztypekey="1100"
							id="projectStatus" name="projectStatus" isChoose="true" />
				</tr>
				<tr>
				  <c:if test="${compCode==0000}">
					   <td class="label">小贷公司</td>
					   <td>
					     <select id="compCode" name="companyCode"
							class="null ui-loxia-default ui-corner-all">
								<c:forEach items="${companyInfos}" var="companyInfo">
									<option value="${companyInfo.compCode}">${companyInfo.compAbbr}</option>
								</c:forEach>
						</select>
					   </td>
				   </c:if>
					<td class="label">客户经理：</td>
					<td >
					  <input type="hidden" id="bizHalls" value="${bizHalls }"/>
					  <input type="hidden" id="userId" value="${userId }"/>
					  <user:user bizHall="${bizHalls }" compCode="${compCode }"
							roleCode="0101,0102" userId="${userId }"
							id="broker" name="saleraCode" isChoose="true" />
					</td>
				</tr>
		<%-- 		<tr>
					<td class="label"><fmt:message
							key="label.apply.clientproject.dataRole" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="rolelevel"
							id="roleLevel" name="roleLevel" /></td>
				</tr> --%>
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
		<%@include file="/common/paginationInit.jsp"%>
		<table id="tbl-businesslist"></table>
		<div id="pager"></div>
	</div>
</body>
</html>
