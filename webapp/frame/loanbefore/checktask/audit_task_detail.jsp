<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.audit.checkedit" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/checktask/audit_task_detail.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
	width: 130px;
}

.hidden {
	display: none;
	visibility: hidden;
}
</style>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="div_detailtab"
		class="ui-tabs ui-widget ui-widget-content ui-corner-all">
		<ul
			class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li
				class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active">
				<a href="#div_check" id="a_check">审核表</a>
			</li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id='a_apply'>申请表</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id="a_inves">调查表</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id="a_prod">产品配置</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id="a_history">历史记录</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id="a_file">电子文档</a></li>
		</ul>

		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="div_check">
			<div class="divBgColor">审核流水</div>
			<div id="auditflow"></div>
			<br /> <br />
			<div id="form1">
				<div class="divBgColor">审核信息</div>
				<table id="tbl-checkdetail" class="col3">
					<tr>
						<td class="label"><fmt:message
								key="label.audit.taskdetail.check_type" bundle="${lang}" /></td>
						<td class="content" id="tabCheckTypeName"></td>
					</tr>
					<tr>
						<td class="label">审批金额：</td>
						<td class="content" id="tabCheckMoney"></td>
						<td class="label">本次审核期限：</td>
						<td class="content" id="tabCheckPeriod"></td>
					</tr>
					<tr>
						<td class="label">特殊政策：</td>
						<td colspan="3" id="tabSpecialName" class="content"></td>
					</tr>

					<tr>
						<td class="label">签约需带证件：</td>
						<td colspan="3" id="tabSignCardName" class="content"></td>
					</tr>
					<tr>
						<td class="label">签约需带证件备注：</td>
						<td colspan="3" id="tabSigncardRemark" class="content"></td>
					</tr>
					<tr>
						<td class="label">签约注意事项：</td>
						<td colspan="3" id="tabSianRemark" class="content"></td>
					</tr>
				</table>
			</div>
			<div class="divBgColor">
				<fmt:message key="label.memo.title" bundle="${lang}" />
			</div>
			<table class="col3">
				<tr>
					<td class="label"><fmt:message key="label.memo.oper.type"
							bundle="${lang}" /></td>
					<td id="tabOperType" class="content"></td>
					<td class="label"><fmt:message key="label.memo.oper.reason"
							bundle="${lang}" /></td>
					<td id="tabOperReason" class="content"></td>
				</tr>
				<tr>
					<td class="label"><fmt:message key="label.memo.oper.remark"
							bundle="${lang}" /></td>
					<td colspan="3" id="tabOperRemark" class="content"></td>

				</tr>
			</table>
			<input type="hidden" name="checkId" value="${audit.checkId }" /> <input
				type="hidden" id="projectId" value="${audit.projectId }" /> <input
				type="hidden" id="applyId" value="${audit.applyId }" /> <input
				type="hidden" id="clientId" value="${audit.clientId }" /> <input
				type="hidden" id="creditId" value="${audit.creditId }" /><input
				type="hidden" id="taskId" value="${audit.taskId }" />
		</div>
		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="div-2">
		</div>
	</div>
</body>
</html>
