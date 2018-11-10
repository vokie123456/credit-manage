<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!--贷审会页面-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>贷审会意见</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/checkcommittee/checkcomm_person_add.js'/>"></script>
<style type="text/css">
.del_all {
	text-align: right;
}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div class="ui-tabs ui-widget ui-widget-content ui-corner-all" id="div_out">
		<ul class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
		
		
			<li class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active">
				<a href="#frm-checkComminfo">贷审会意见</a>
			</li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id='a_apply'>申请表</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id="a_inves">调查表</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id="a_config">产品配置</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id="a_history">历史记录</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id="a_updown">电子文档</a></li>	
		</ul>
		
		<form id="frm-checkComminfo" method="post">
			<div id="form2">
					<tr>
						<td><input type="hidden" name="checkId"
							value="${audit.checkId }" /></td>
						<td><input type="hidden" name="checkValid"
							value="${audit.checkValid }" /></td>
						<td><input type="hidden" name="checkStatus"
							value="${audit.checkStatus }" /></td>
						<td><input type="hidden" name="clientType"
							value="${audit.clientType }" /></td>
						<td><input type="hidden" id="applyId" value="${audit.applyId }" /></td>
						<td><input type="hidden" id="clientId" name="clientId"
							value="${audit.clientId }" /></td>
						<td><input type="hidden" id="creditId"
							value="${audit.creditId }" /></td>
						<td><input type="hidden" name="projectId" id="projectId"
							value="${projectId }" /></td>
					</tr>
				</table>
				<div class="divBgColor">审核信息</div>
				<table id="tbl-checkdetail" class="col3">
					<tr>
						<!-- 审核类型  -->
						<td class="label"><fmt:message
								key="label.audit.taskdetail.check_type" bundle="${lang}" /></td>
						<td class="content"><bizoptionname:showname biztypekey="1002" value="${audit.checkType }" />
								<input type="hidden" name="checkType" value="${audit.checkType }" /></td>
						<!-- 审批金额  -->
						<td class="label"><fmt:message
								key="label.audit.taskdetail.money_check" bundle="${lang}" /></td>
						<td class="content"><input name="checkMoney" loxiaType="number"
							id="checkMoney" mandatory="true" decimal="2" value="${audit.checkMoney }" /><label
							class="del_mandatory">&nbsp;&nbsp;*</label></td>
					</tr>
					<tr>

						<!-- 本次审核期限 -->
						<td class="label">本次审核期限：</td>
						<td class="content"><input name="checkPeriod" loxiaType="date" id="checkPeriod" mandatory="true" value="<c:choose><c:when test='${!empty audit.checkPeriod}'>${audit.checkPeriod }</c:when><c:otherwise>${checkPeriod}</c:otherwise></c:choose>" min="${nowDate }" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
						<td class="label">特殊政策：</td>
						<td class="content"><bizoption:bizoption name="specialId"
								isChoose="true" selected="${audit.specialId }" biztypekey="1066" /></td>
					</tr>

					<tr>
						<!-- 签约需带证件  -->
						<td class="label"><fmt:message
								key="label.audit.taskdetail.sign_card" bundle="${lang}" /></td>
						<td class="content" colspan="3"><checkBox:checkBox biztypekey="${ClientTypeCard}"
								name="signCard" checked="${audit.signCard }" /></td>
					</tr>
					<tr>
						<!-- 签约需带证件备注 -->
						<td class="label"><fmt:message
								key="label.audit.taskdetail.signcard_remark" bundle="${lang}" /></td>
					<td class="content" colspan="3"><textarea name="signcardRemark"
								loxiaType="input" id="signcardRemark">${audit.signcardRemark }</textarea></td>
					</tr>
					<tr>
						<!--签约注意事项  -->
						<td class="label"><fmt:message
								key="label.audit.taskdetail.sian_remark" bundle="${lang}" /></td>
						<td class="content" colspan="3"><textarea name="sianRemark" loxiaType="input"
								id="sianRemark">${audit.sianRemark }</textarea></td>
					</tr>
				</table>
		<div class="divBgColor">贷审会信息</div>
		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom" id="div-1">
			<input type="hidden" id="checkCommitteeBasicList"  value="${checkCommitteeBasicList}"/>
		 	<input type="hidden" id="taskId" name="taskId" value="${taskId}"/>
		 	<input type="hidden" id="usercount" name="usercount" value="${usercount}"/>
		 	<input type="hidden" id="compCode" name="compCode" value="${compCode}"/>
		 	<input type="hidden" id="direction" name="direction" value="" /> 
			<input type="hidden" id="backActivityId" name="backActivityId" value="" />
			<input type="hidden" id="operType" name="operType" value="" />
			<input type="hidden" id="operReason" name="operReason" value="" />
			<input type="hidden" id="operReasonRemark" name="operReasonRemark" value="" />
		 	<table class="col3">
		 	<c:forEach begin="1" end="${usercount}" step="1" varStatus="i">
		 		<tr>
		 		<td class="label">审核人：</td>
		 			<td class="content">
		 			<input type="hidden" id="checkCommId{${i.index}" value="" />
		 			<select  class="null ui-loxia-default ui-corner-all ui-loxia-highlight" name="userinfo${i.index}" id="userinfo${i.index}" onchange="distinctUserInfo(${i.index})">
		 				<option value="">请选择</option>
			 			<c:forEach items="${userinfoList }" var="userinfo">
			 				<option value="${userinfo.userId}">${userinfo.userName}</option>
			 			</c:forEach>
		 			</select>
		 			<label class="del_mandatory">*</label>
		 			</td>
		 			<td class="label">是否通过：</td>
		 			<td class="content"><bizoption:bizoption 
		 			biztypekey="1001" id="isPass${i.index}"
					name="isPass${i.index}" isChoose="true" mandatory="true"/><label
										class="del_mandatory" >*</label></td>
		 		</tr>
		 		<tr>
		 		<td class="label">审核人意见：</td>
					<td class="content">
					<textarea cols="100" name="checkRemark${i.index}" loxiaType="input" id="checkRemark${i.index}"></textarea>
					</td>
		 		</tr>
  		 	</c:forEach>
		 	</table>
		 	<input type="hidden" id="checkCommOptions" name="checkCommOptions"/>
			<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm" id="checkcommitteeSubmit">提交</button>
			<button type="button" loxiaType="button" class="confirm" title="tip：" id="saveTemp">暂存</button>
			</div>
		</div>
		</div>
	</form>
		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide" id="div-2"></div>
		</div>
</body>
</html>
