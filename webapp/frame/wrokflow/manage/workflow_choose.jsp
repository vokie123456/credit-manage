<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style type="text/css">
.link {
	text-decoration: underline;
	cursor: pointer;
	color: #556b80;
}

.link:HOVER {
	text-decoration: none;
}
</style>
<form id="workflowChooseForm" method="post">
	<table>
		<tr>
			<td class="label">公司编号：</td>
			<td>${companyInfo.compCode }<input id="compCode" name="compCode"
				type="hidden" value="${companyInfo.compCode }" /></td>
		</tr>
		<tr>
			<td class="label">公司名称：</td>
			<td>${companyInfo.compName }</td>
		</tr>
		<tr>
			<td class="label">流程选择：</td>
			<td><c:forEach items="${pdList }" var="pd" varStatus="i">
					<c:if test="${pd.description == wfType }">
						<input id="workflowChoose${i.count }" name="workflowChoose"
							type="checkbox" value="${pd.id },${pd.name }" />${pd.name }</c:if>
				</c:forEach></td>
		</tr>
	</table>
	<div class="buttonlist buttonDivWidth" id="userRoleHiddenBut">
		<button type="button" loxiaType="button" class="confirm"
			title="tip：保存" id="btnSave">保存</button>
	</div>
</form>
