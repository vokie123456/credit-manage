<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="<c:url value="/scripts/frame/workflowserver/manage/workflow_manage.js"/>"></script>
<style type="text/css">
.link {
	text-decoration: underline;
	cursor: pointer;
	color: #556b80;
}

.link:HOVER {
	text-decoration: none;
}

.link:HOVER {
	text-decoration: none;
}

td {
	border: 1px thin #8F98A9;
}

.file-box {
	position: relative;
	width: 340px
}

.txt {
	border: 1px solid #cdcdcd;
	width: 180px;
}

.file {
	position: absolute;
	top: 0;
	right: 80px;
	filter: alpha(opacity : 0);
	opacity: 0;
	width: 260px
}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div class="file-box" style="display:block;">
		<form id="deployForm"
			action="<%=request.getContextPath()%>/workflowserver/manage/deploy.do"
			method="post" enctype="multipart/form-data">
			<input type="text" name="pdFile" id="pdFile" class="txt" /> <input
				type="button" class="btn" value="浏览..." /> <input type="file"
				name="fileField" class="file" id="fileField" size="28"
				onchange="document.getElementById('pdFile').value=this.value " /> 
				<br/><input	type="submit" id="deploy" name="deploy" class="btn" value="部署" />
		</form>
	</div>

	<table id="tbl-modellist" class="ui-jqgrid-htable" cellspacing="0"
		cellpadding="0" border="1" style="width: 100%">
		<h3>流程模型</h3>
		<h4><a class="link" onclick="createNewModel();">新建模型</a></h4>
		<tr class="ui-jqgrid-labels">
		
			<th class="ui-state-default ui-th-column ui-th-ltr"
				style="width: 40px;">&nbsp;</th>
			<th class="ui-state-default ui-th-column ui-th-ltr">流程模型ID</th>
			<th class="ui-state-default ui-th-column ui-th-ltr">流程模型名称</th>
			<th class="ui-state-default ui-th-column ui-th-ltr">流程模型版本</th>
			<th class="ui-state-default ui-th-column ui-th-ltr">操作</th>
		</tr>
		<c:forEach items="${modelList}" var="ml" varStatus="i">
			<tr class="ui-widget-content jqgrow ui-row-ltr">
				<td class="ui-state-default ui-th-column ui-th-ltr">${i.count }</td>
				<td style="text-align: center;">${ml.id }</td>
				<td style="text-align: center;">${ml.name }</td>
				<td style="text-align: center;">${ml.version }</td>
				
				<td style="text-align: center;"> 
					<a class="link"
					onclick="editModel('${ml.id}');">编辑</a>
					<a class="link"
					onclick="deployModel('${ml.id}');">部署</a>
					<!--  <a class="link"
					onclick="exportModelXml('${ml.id}');">导出XML</a>
					-->
				</td>
			</tr>
		</c:forEach>
	</table>
	<table id="tbl-tasklist" class="ui-jqgrid-htable" cellspacing="0"
		cellpadding="0" border="1" style="width: 100%">
		<h3>流程定义</h3>
		<tr class="ui-jqgrid-labels">
			<th class="ui-state-default ui-th-column ui-th-ltr"
				style="width: 40px;">&nbsp;</th>
			<th class="ui-state-default ui-th-column ui-th-ltr">流程定义ID</th>
			<th class="ui-state-default ui-th-column ui-th-ltr">流程定义名称</th>
			<th class="ui-state-default ui-th-column ui-th-ltr">流程模型类型</th>
			<th class="ui-state-default ui-th-column ui-th-ltr">流程版本</th>
			<th class="ui-state-default ui-th-column ui-th-ltr">操作</th>
		</tr>
		<c:forEach items="${pdList }" var="pd" varStatus="i">
			<tr class="ui-widget-content jqgrow ui-row-ltr">
				<td class="ui-state-default ui-th-column ui-th-ltr">${i.count }</td>
				<td style="text-align: center;">${pd.id }</td>
				<td style="text-align: center;">${pd.name }</td>
				<td style="text-align: center;">${pd.description }</td>
				<td style="text-align: center;">${pd.version }</td>
				<td style="text-align: center;"><a class="link"
					onclick="startPD('${pd.id }');">启动</a>
					<a class="link"
					onclick="removePD('${pd.deploymentId }');">废弃</a>
					<!-- 
					<a class="link"
					onclick="editModelFordeployed('${pd.deploymentId }');">编辑模型</a>
					-->
					</td>
			</tr>
		</c:forEach>
	</table>

	<table id="tbl-tasklist" class="ui-jqgrid-htable" cellspacing="0"
		cellpadding="0" border="1" style="width: 100%">
		<h3>流程实例</h3>
		<tr class="ui-jqgrid-labels">
			<th class="ui-state-default ui-th-column ui-th-ltr"
				style="width: 40px;">&nbsp;</th>
			<th class="ui-state-default ui-th-column ui-th-ltr">流程实例ID</th>
			<th class="ui-state-default ui-th-column ui-th-ltr">流程定义ID</th>
			<th class="ui-state-default ui-th-column ui-th-ltr">当前任务名称</th>
			<th class="ui-state-default ui-th-column ui-th-ltr">任务负责人</th>
			<th class="ui-state-default ui-th-column ui-th-ltr">中断</th>
			<th class="ui-state-default ui-th-column ui-th-ltr">流程示意图</th>
		</tr>
		<c:forEach items="${piList }" var="pi" varStatus="i">
			<tr>
				<td class="ui-state-default ui-th-column ui-th-ltr">${i.count }</td>
				<td style="text-align: center;">${pi.processInstanceId }</td>
				<td style="text-align: center;">${pi.processDefinitionId }</td>
				<td style="text-align: center;">${pi.name }</td>
				<td style="text-align: center;"><a
					href="?assignee=${pi.assignee }">${pi.assignee }</a></td>
				<td style="text-align: center;"><a class="link"
					onclick="killPI('${pi.processInstanceId }');">中断</a></td>
				<td style="text-align: center;"><img
					src="<%=request.getContextPath()%>/images/icons/search.png"
					onclick="showImage('${pi.id }');" /></td>
			</tr>
		</c:forEach>
	</table>

	<table id="tbl-tasklist" class="ui-jqgrid-htable" cellspacing="0"
		cellpadding="0" border="1" style="width: 100%">
		<h3>待办任务</h3>
		<tr class="ui-jqgrid-labels">
			<th class="ui-state-default ui-th-column ui-th-ltr"
				style="width: 40px;">&nbsp;</th>
			<th class="ui-state-default ui-th-column ui-th-ltr">任务ID</th>
			<th class="ui-state-default ui-th-column ui-th-ltr">流程实例ID</th>
			<th class="ui-state-default ui-th-column ui-th-ltr">流程定义ID</th>
			<th class="ui-state-default ui-th-column ui-th-ltr">任务名称</th>
			<th class="ui-state-default ui-th-column ui-th-ltr">处理</th>
		</tr>
		<c:forEach items="${taskList }" var="task" varStatus="i">
			<tr>
				<td class="ui-state-default ui-th-column ui-th-ltr">${i.count }</td>
				<td style="text-align: center;">${task.id }</td>
				<td style="text-align: center;">${task.processInstanceId }</td>
				<td style="text-align: center;">${task.processDefinitionId }</td>
				<td style="text-align: center;">${task.name }</td>
				<td style="text-align: center;"><a class="link"
					onclick="showWorkFlowDialog('${task.id }','${compCode }');">提交</a> <a class="link"
					onclick="updateTask('${task.id }', 'kill');">退表</a></td>
			</tr>
		</c:forEach>
	</table>


	<table id="tbl-tasklist" class="ui-jqgrid-htable" cellspacing="0"
		cellpadding="0" border="1" style="width: 100%">
		<h3>历史流程</h3>
		<tr class="ui-jqgrid-labels">
			<th class="ui-state-default ui-th-column ui-th-ltr"
				style="width: 40px;">&nbsp;</th>
			<td class="ui-state-default ui-th-column ui-th-ltr">流程实例ID</td>
			<td class="ui-state-default ui-th-column ui-th-ltr">流程定义ID</td>
			<td class="ui-state-default ui-th-column ui-th-ltr">开始时间</td>
			<td class="ui-state-default ui-th-column ui-th-ltr">结束时间</td>
		</tr>
		<c:forEach items="${hpiList }" var="hpi" varStatus="i">
			<tr>
				<td class="ui-state-default ui-th-column ui-th-ltr">${i.count }</td>
				<td style="text-align: center;">${hpi.id }</td>
				<td style="text-align: center;">${hpi.processDefinitionId }</td>
				<td style="text-align: center;"><fmt:formatDate
						value="${hpi.startTime }" type="both" /></td>
				<td style="text-align: center;"><fmt:formatDate
						value="${hpi.endTime }" type="both" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>