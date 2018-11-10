<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />


<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/repayprincal/repay_princal_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div>
		<form id="clientProjectQueryForm">
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
					<td width="150"><input name="projectCode" loxiaType="input"
						trim="true" /></td>
					<td class="label">项目状态：</td>
					<td width="150"><bizoption:bizoption name="projectStatus"
							biztypekey="1101" isChoose="true" /></td>
					<td class="label">客户经理：</td>
					<td width="150"><user:user bizHall="${bizHalls }" roleCode="0101,0102" userId="${userId }" compCode="${compCode }"
							id="broker" name="broker" isChoose="true" /></td>
				</tr>
			</table>


			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm" id="reload">
					<fmt:message key="button.query" bundle="${lang}" />
				</button>
				<button type="reset" loxiaType="button" class="confirm" id="resets">
					<fmt:message key="button.reset" bundle="${lang}" />
				</button>
			</div>
		</form>
			<%@include file="/common/paginationInit.jsp"%>
		<table id="tbl-list"></table>
		<div id="pager"></div>

		<!-- 提前还本弹出框 -->
		<div id="dialog-chgrole"></div>

	</div>

</body>
</html>
