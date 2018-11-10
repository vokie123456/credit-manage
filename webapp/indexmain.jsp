<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>客户列表</title>
<!-- 客户管理 -->
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/index_client_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<linkage:define />    
</head>
<body contextpath="<%=request.getContextPath()%>">
	<!-- 待办任务 -->
	<div>
		<table><tr><td>
		<div id="taskAgents">
			<input id="taskId" type="hidden" /> <input id="projectId"
				type="hidden" />
			<!-- 未处理，领取的状态 -->
			<input id="show" type="hidden" value="show" />
			<div id="formdetail">
				<form id="tasksCommandForm" method="post"></form>
			</div>
			<%@include file="/common/paginationInit.jsp"%>
			<table id="tbl-tasklist"></table>
			<div id="pager"></div>
			<div id="dialog" class="hidden"></div>
		</div>
		</td></tr></table>
	</div>

	<div>
		<table>
			<tr>
				<!-- 客户列表 -->
				<td class="indexmain" >
					<form id="frm-qryclient" method="POST"></form> <%@include
						file="/common/paginationInit.jsp"%>
					<table id="tbl-clientlist" style="float: left"></table>
					<div id="pager-clientlist"></div>
				</td>

				<!-- 项目管理（业务概览） -->
				<td class="indexmain" ><form
						id="businessQueryForm" method="post"></form> <%@include
						file="/common/paginationInit.jsp"%>
					<table id="tbl-businesslist" style="float: left"></table>
					<div id="pager-businesslist"></div></td>

				<!-- 合同管理 -->
				<td class="indexmain"><form
						id="clientProjectQueryForm" method="post"></form> <%@include
						file="/common/paginationInit.jsp"%>
					<table id="tbl-list" style="float: left"></table>
					<div id="pager-list"></div></td>
			</tr>
		</table>
	</div>
	<div>
		<table>
			<tr>
				<!--放款信息 -->
				<Td class="indexmain" >
				<div
						class="ui-tabs ui-widget ui-widget-content ui-corner-all"
						id="div_out0">
						<ul
							class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
							<li
								class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active"><a
								href="#div-0">放款管理</a></li>
						</ul>
						<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
							id="div-0">
					<form
						id="loanmoneyQueryForm" method="post"></form> <%@include
						file="/common/paginationInit.jsp"%>
					<table id="tbl-lendlist" style="float: left"></table>
					<div id="pager-lendlist"></div>
					</div></div>
					</td>
				<!-- 还款信息--还款计划列表/账单列表 -->
				<Td class="indexmain" ><div
						class="ui-tabs ui-widget ui-widget-content ui-corner-all"
						id="div_out">
						<ul
							class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
							<li
								class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active"><a
								href="#div-1">还款计划列表</a></li>
							<li class="ui-state-default ui-corner-top" ><a href="#div-2">账单列表</a></li>
						</ul>
						<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
							id="div-1">
							<form id="repaymentQueryForm" method="post"></form>
							<%@include file="/common/paginationInit.jsp"%>
							<table id="tbl-repaymentlist" style="float: left"></table>
							<div id="pager-repaymentlist"></div>
						</div>
						<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
							id="div-2"  >
							<form id="BillListQueryForm" method="post"></form>
							<%@include file="/common/paginationInit.jsp"%>
							<table id="tbl-billlist" style="float: left"></table>
							<div id="pager-billlist"></div>
						</div>
					</div></td>
				<!-- 贷后--[业务概览]贷后检查/催收 -->
				<Td class="indexmain" >
					<div class="ui-tabs ui-widget ui-widget-content ui-corner-all"
						id="div_out2">
						<ul
							class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
							<li
								class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active"><a
								href="#div0-1">贷后检查</a></li>
							<li class="ui-state-default ui-corner-top"><a href="#div0-2">逾期催收</a></li>
						</ul>
						<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
							id="div0-1">
							<form id="afterInspectionQueryForm" method="post"></form>
							<%@include file="/common/paginationInit.jsp"%>
							<table id="tbl-afterInspection" style="float: left"></table>
							<div id="pager-afterInspection"></div>
						</div>
						<div
							class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
							id="div0-2">
							<form id="collectionQueryForm" method="post"></form>
							<%@include file="/common/paginationInit.jsp"%>
							<table id="tbl-collection" style="float: left"></table>
							<div id="pager-collection"></div>
						</div>
					</div>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>