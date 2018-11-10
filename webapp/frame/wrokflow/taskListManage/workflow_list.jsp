<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>待办任务列表</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/workflow/taskListManage/workflow_list.js'/>"></script>
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

</style>
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
						<td class="label">项目编号：</td>
						<td class="width150"><input id="projectCode" name="projectCode"
							loxiaType="input" trim="true" /></td>
						<td class="label">任务状态：</td>
						<td class="width150"><bizselect:bizselect biztypekey="1079"
								startSort="11" endSort="12" id="taskList_ifOver"
								name="taskIfOver" isChoose="true" /></td>
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
	<!-- 	<div id="div_body"></div>
	</div> -->
</body>
</html>