<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>

<fmt:setBundle basename="messages" var="lang" />
<title>待办任务列表</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/workflow/taskList/workflow_list.js?v='/><c:out value='${now.getTime()}'/>"></script>
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
	<!-- <div id="div_Tab"
		class="ui-tabs ui-widget ui-widget-content ui-corner-all">
		<ul
			class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li
				class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active">
				<a href="#taskAgents" id="task_list">待办任务</a>
			</li>
			退表激活頁面
			<li class="ui-state-default ui-corner-top"><a href="#div_body"
				id="back_table_task">退表任务</a></li> 
			
		</ul> -->
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
							<select id="taskCode" name="taskCode" loxiaType="select" onchange="selTaskStatus(this)">
								<option value="">请选择</option>
								<c:forEach items="${taskCodes }" var="task">
									<option value="${task.taskCode }">${task.taskName }</option>
								</c:forEach>
							</select>
						</td>
						<td class="label">任务状态：</td>
						<td class="width200">
							<select id="taskList_ifOver" name="taskIfOver">
								<option value="">请选择</option>
							</select>
						</td>
						<td class="label">手机号码：</td>
						<td class="width200"><input id="mobile_phone" name="mobile_phone"
							loxiaType="number" trim="true" /></td>
						<%--<td class="label">授信金额：</td>--%>
						<%--<td class="width200"><input id="final_money_b" name="final_money_b"--%>
							<%--loxiaType="number" trim="true" style="width: 43%"/>-<input id="final_money_e" name="final_money_e"--%>
							<%--loxiaType="number" trim="true" style="width: 43%"/></td>--%>
					</tr>
					<tr>
						<td class="label">申请日期：</td>
						<td class="width200"><input id="createTimeBegin" name="createTimeBegin"
							loxiaType="date" trim="true" style="width: 43%"/>-<input id="createTimeEnd" name="createTimeEnd"
							loxiaType="date" trim="true" style="width: 43%"/></td>
						<td class="label">授信编号：</td>
						<td class="width200"><input id="projectCode" name="projectCode"
							loxiaType="input" trim="true" /></td>
						<td class="label">身份证：</td>
						<td class="width200"><input id="card_no" name="card_no"
							loxiaType="input" trim="true" /></td>
						<td class="label">客户：</td>
						<td class="width200"><input id="clientName" name="clientName"
							loxiaType="input" trim="true" /></td>
					</tr>
					<tr>
						<td class="label">处理人：</td>
						<td class="width200"><input id="userName" name="userName"
							loxiaType="input" trim="true" /></td>
						<td class="label">是否有房：</td>
						<td class="width200">
							<select name="isHouse" id="isHouse" loxiaType="select">
								<option value="">全部</option>
								<option value="1">是</option>
								<option value="0">否</option>
							</select>
						</td>
						<td class="label">房产是否在区域内：</td>
						<td class="width200">
							<select name="isHouseCity" id="isHouseCity" loxiaType="select">
								<option value="">全部</option>
								<option value="1">是</option>
								<option value="0">否</option>
							</select>
						</td>
						<td class="label">房产所在城市：</td>
						<td class="width200">
							<select name="houseCityName" id="houseCityName" loxiaType="select">
								<option value="">请选择城市</option>
							<c:forEach items="${cityList}" var="cl">
								<option value="${cl.cityId }">${cl.cityName }</option>
							</c:forEach>
							</select>
						</td>
					</tr>
					<tr>
						
						<td class="label">&nbsp;客户来源</td>
						<td class="width200">&nbsp;
							<bizselect:bizselect biztypekey="1248"
								startSort="1" endSort="2" id="status"
								name="customerSource" isChoose="true" />
							</td>
							
						<td class="label">常住城市：</td>
						<td class="width200">
							<linkage:select type="province" name="permanentProvince" pid="pr1" cid="c1" styleClass="style_td"/>
							<linkage:select type="city" name="permanentCity" pid="pr1" cid="c1" styleClass="style_td"/>
						</td>
						<td class="label">申请产品</td>
						<td class="width200">
							<select name="applicationProductMaxId" loxiaType="select">
								<option value="">请选择</option>
								<c:forEach items="${productNameList}" var="pm" >
									<option value="${ pm.id}">${ pm.productName }</option>
								</c:forEach>
							</select>
						</td>
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
					<button type="button" name="allot" loxiaType="button" class="confirm"
						title="tip：批量分派"
						id="allot">
						批量分派
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