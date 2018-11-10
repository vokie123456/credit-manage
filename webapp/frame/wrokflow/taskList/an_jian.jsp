<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>待办任务列表</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/workflow/taskList/an_jian.js?v=3.1.1'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.link {
	text-decoration: underline;
	cursor: pointer;
	color: #556b80;
}

.link:HOVER {
	text-decoration: none;
}
.style_td {
	width: 45% !important;
}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div id="taskAgents">
		<input id="taskId" type="hidden" /> <input id="projectId"
			type="hidden" />
		<!-- 未处理，领取的状态 -->
		<input id="show" type="hidden" value="show" />
		<div id="formdetail">
			<div class="divBgColor">
				<fmt:message key="label.search.param" bundle="${lang}" />
			</div>
			<form id="tasksCommandForm" method="post">
				<table>
					<tr>
						<td class="label">任务：</td>
						<td class="width200">
							<select id="taskCode" name="taskCode" loxiaType="select">
								<option value="">请选择</option>
								<c:forEach items="${taskCodes }" var="task">
									<option value="${task.taskCode }">${task.taskName }</option>
								</c:forEach>
							</select>
						</td>
						<td class="label">任务状态：</td>
						<td class="width200"><bizselect:bizselect biztypekey="1187"
								id="taskList_ifOver" name="taskIfOver" isChoose="true" /></td>
						<td class="label">手机号码：</td>
						<td class="width200"><input id="mobile_phone" name="mobile_phone"
							loxiaType="number" trim="true" /></td>
						<td class="label">授信金额：</td>
						<td class="width200"><input id="final_money_b" name="final_money_b"
							loxiaType="number" trim="true" style="width: 43%"/>-<input id="final_money_e" name="final_money_e"
							loxiaType="number" trim="true" style="width: 43%"/></td>
					</tr>
					<tr>
					    <td class="label">客户：</td>
						<td class="width200"><input id="clientName" name="clientName"
							loxiaType="input" trim="true" /></td>
						<td class="label">申请日期：</td>
						<td class="width200"><input id="createTimeBegin" name="createTimeBegin"
							loxiaType="date" trim="true" style="width: 43%"/>-<input id="createTimeEnd" name="createTimeEnd"
							loxiaType="date" trim="true" style="width: 43%"/></td>
						<td class="label">授信编号：</td>
						<td class="width200"><input id="projectCode" name="projectCode"
							loxiaType="input" trim="true" /></td>
					</tr>
					<tr>
						<td class="label">客户来源：</td>
						<td width="150">
							<bizselect:bizselect biztypekey="1248"
										startSort="1" endSort="2" id="status"
										name="customerSource" isChoose="true" />
						</td> 
						<td class="label">&nbsp;</td>
						<td class="width200">&nbsp;</td>
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
		<table id="tbl-tasklist"></table>
		<div id="pager"></div>
		<div id="dialog" class="hidden"></div>
	</div>
</body>
</html>