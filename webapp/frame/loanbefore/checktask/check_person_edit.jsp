<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 贷款审核编辑页面  key表示国际化  配置在messages_zh_CN.properties文件中-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.audit.checkedit" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/checktask/check_person_edit.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="div_out"
		class="ui-tabs ui-widget ui-widget-content ui-corner-all">
		<ul
			class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li
				class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active">
				<a href="#frm-checkinfo" id="a_check">审核表</a>
			</li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id='a_apply'>申请表</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id="a_inves">调查表</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id="a_config">产品配置</a></li>
			<!-- 
			<li class="ui-state-default ui-corner-top"><a href="#div_body"
				id="a_creinv">征信</a></li>
				 -->

			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id="a_history">历史记录</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id="a_updown">电子文档</a></li>
		</ul>

		<form id="frm-checkinfo" method="post">
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
						<tr>
							<td class="label">审批金额：</td>
							<td class="content" id="tabCheckMoney"></td>
							<td class="label">本次审核期限：</td>
							<td class="content" id="tabCheckPeriod"></td>
						</tr>
						<tr>
							<td class="label">特殊政策：</td>
							<td class="content" id="tabSpecialName"></td>
							<td colspan="2"></td>
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
				<div class="divBgColor">
					<fmt:message key="label.memo.title" bundle="${lang}" />
				</div>
				<table class="col3">
					<tr>
						<td class="label"><fmt:message key="label.memo.oper.type"
								bundle="${lang}" /></td>
						<td class="content" id="tabOperType"></td>
						<td class="label"><fmt:message key="label.memo.oper.reason"
								bundle="${lang}" /></td>
						<td class="content" id="tabOperReason"></td>
					</tr>
					<tr>
						<td class="label"><fmt:message key="label.memo.oper.remark"
								bundle="${lang}" /></td>
						<td class="content" colspan="3" id="tabOperRemark"></td>

					</tr>
				</table>
			</div>
			<div id="form2">
				<table style="display: none;">
					<tr>
						<td colspan="4"><input type="hidden" id="taskType"
							name="taskType" value="${ taskType}" /></td>
						<input type="hidden" id="taskId" name="taskId" value="${taskId }" />
						<input type="hidden" id="compCode" name="compCode"
							value="${compCode}" />
						<input type="hidden" id="direction" name="direction" value="" />
						<input type="hidden" id="backActivityId" name="backActivityId"
							value="" />
						<input type="hidden" id="operType" name="operType" value="" />
						<input type="hidden" id="operReason" name="operReason" value="" />
						<input type="hidden" id="operReasonRemark" name="operReasonRemark"
							value="" />
						</td>
					</tr>
					<tr>
						<td>checkId</td>
						<td><input type="text" name="checkId"
							value="${audit.checkId }" /></td>
						<td>checkValid</td>
						<td><input type="text" name="checkValid"
							value="${audit.checkValid }" /></td>
						<td>checkStatus</td>
						<td><input type="text" name="checkStatus"
							value="${audit.checkStatus }" /></td>
						<td>clientType</td>
						<td><input type="text" name="clientType"
							value="${audit.clientType }" /></td>
					</tr>
					<tr>
						<td>applyId</td>
						<td><input type="text" id="applyId" value="${audit.applyId }" /></td>
						<td>clientId</td>
						<td><input type="text" id="clientId" name="clientId"
							value="${audit.clientId }" /></td>
						<td>creditId</td>
						<td><input type="text" id="creditId"
							value="${audit.creditId }" /></td>
						<td>projectId</td>
						<td><input type="text" name="projectId" id="projectId"
							value="${projectId }" /></td>
					</tr>
				</table>

				<div class="divBgColor">审核信息</div>
				<table id="tbl-checkdetail" class="col3">
					<tr>
						<!-- 审核类型  -->
						<td class="label"><fmt:message
								key="label.audit.taskdetail.check_type" bundle="${lang}" /></td>
						<td class="content"><bizoptionname:showname biztypekey="1002"
								value="${audit.checkType }" /><input type="hidden"
							name="checkType" value="${audit.checkType }" /></td>
						<td class="label"><fmt:message
								key="label.audit.taskdetail.money_check" bundle="${lang}" /></td>
						<td class="content"><input name="checkMoney"
							loxiaType="number" id="checkMoney" mandatory="true" decimal="2"
							value="${audit.checkMoney }" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
					</tr>
					<tr>
						<!-- 本次审核期限 -->
						<td class="label">本次审核期限：</td>
						<td class="content"><input name="checkPeriod"
							loxiaType="date" id="checkPeriod" mandatory="true"
							value="<c:choose><c:when test='${!empty audit.checkPeriod}'>${audit.checkPeriod }</c:when><c:otherwise>${checkPeriod}</c:otherwise></c:choose>"
							min="${nowDate }" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
						<td class="label">特殊政策：</td>
						<td class="content"><bizoption:bizoption name="specialId"
								isChoose="true" selected="${audit.specialId }" biztypekey="1066" /></td>
					</tr>

					<tr>
						<!-- 签约需带证件  -->
						<td class="label"><fmt:message
								key="label.audit.taskdetail.sign_card" bundle="${lang}" /></td>
						<td colspan="3" class="content"><checkBox:checkBox
								biztypekey="1051" name="signCard" checked="${audit.signCard }" /></td>
					</tr>
					<tr>
						<!-- 签约需带证件备注 -->
						<td class="label"><fmt:message
								key="label.audit.taskdetail.signcard_remark" bundle="${lang}" /></td>
						<td colspan="3" class="content"><textarea
								name="signcardRemark" loxiaType="input" id="signcardRemark">${audit.signcardRemark }</textarea></td>
					</tr>
					<tr>
						<!--签约注意事项  -->
						<td class="label"><fmt:message
								key="label.audit.taskdetail.sian_remark" bundle="${lang}" /></td>
						<td colspan="3" class="content"><textarea name="sianRemark"
								loxiaType="input" id="sianRemark">${audit.sianRemark }</textarea></td>
					</tr>
				</table>
				<div class="buttonlist buttonDivWidth">
					<button type="button" loxiaType="button" class="confirm"
						title="tip：" id="btnSubmit">提交</button>

					<button type="button" loxiaType="button" class="confirm"
						title="tip：" id="saveTemp">暂存</button>
				</div>
			</div>
		</form>
		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="div-2"></div>
	</div>

</body>
</html>
