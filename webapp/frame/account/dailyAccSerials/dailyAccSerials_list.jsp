<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applylist" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/account/dailyAccSerials/dailyAccSerials_list.js?v=1.0.2.1'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">

.link {
	text-decoration: underline;
	cursor: pointer;
	color: #556b80;
}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div id="formdetail">

		<form id="dailyAccSerialsListForm" method="post">
			<input id="accountIds" name="accountIds" value="" type="hidden" />
			<c:if
				test="${accountType == 'in' || accountType == null || accountType == '' }">
				<c:forEach items="${compAccountInfoList }" var="compAccountInfo">
					<c:if test="${compAccountInfo.isDefault == '100111' }">
						<input id="accountId" name="searchAccountId" type="checkbox"
							checked="checked"  class="disNone"
							value="${compAccountInfo.id }" />
					</c:if>
				</c:forEach>
			</c:if>
			<table>
				<%-- <tr>
					<td class="label">客户名称：</td>
					<td class="width150"><input loxiaType="input" name="clientName" id="clientName" /></td>

					<!-- <td class="label">账单编号：</td>
					<td class="width150"><input loxiaType="input" name="billCode"  id="billCode"/></td>
 -->
					<c:if test="${accountType == 'out' }">
						<td class="label">账套选择：</td>
						<td class="width150"><c:forEach items="${compAccountInfoList }"
								var="compAccountInfo">
								<c:if
									test="${compAccountInfo.id == accountId || compAccountInfo.isDefault == '100111'}">
									<input id="accountId" name="searchAccountId" type="checkbox"
										checked="checked" value="${compAccountInfo.id }" />${compAccountInfo.accountName }</c:if>
							</c:forEach></td>
					</c:if>
				</tr> --%>
				<tr>
					<!-- 调查开始和结束时间区间 -->
					<td class="label">记账时间：</td>
					<td class="width150"><input id="startDate" loxiaType="date"
						name="startDate" /></td>
					<td align="center">到：</td>
					<td class="width150"><input id="endDate" loxiaType="date"
						name="endDate" /></td>
					<!-- 调查状态 -->
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
				<button type="button" loxiaType="button" class="confirm"
					title="tip：导出" id="export">导出</button>
				<!-- <button type="button" loxiaType="button" class="confirm"
					title="tip：手工记账" id="manualAccounting">手工记账</button> -->
			</div>
		</form>
	</div>
	<%@include file="/common/paginationInit.jsp"%>
	<table id="tbl-researchlist"></table>
	<div id="pager"></div>
</body>
</html>