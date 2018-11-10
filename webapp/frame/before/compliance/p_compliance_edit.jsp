<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript" 
src="<c:url value='/scripts/frame/before/common/operateOrder.js'/>"></script>
<script type="text/javascript"
src="<c:url value='/scripts/frame/before/compliance/p_compliance_edit.js'/>"></script>
<div class="divBgColor">合规信息</div>
 <table class="col3" >
	<tr>
			<td class="label"><fmt:message
					key="label.audit.taskdetail.money_check" bundle="${lang}" /></td>
		<td class="content">${checkBasic.checkMoney }</td>
		</tr>
		<tr>
		<td class="label">客户名称：</td>
		<td class="content">${clientBasic.clientName}</td>
		<td class="label">客户经理：</td>
		<td class="content"><showusername:showusername value="${clientProject.saleraCode}"></showusername:showusername></td>
		</tr>
		<tr>
		<td class="label">贷款期限：</td>
		<td class="content">${pconfig.loanPeriod }</td>
		<td class="label">贷审会议编号：</td>
		<td class="content">${checkBasic.checkNo}</td>
	</tr>		
</table>
<form id="pComplianceForm" method="post">
<div class="divBgColor">审核意见落实情况</div>
 <table class="col3" >
	 <tr>
					<td class="label"></td>
					<td class="content"></td>
					<td class="label"></td>
					<td class="content"></td>
		</tr>
	  <c:forEach items="${coList}"  var="co"  varStatus="i">
	 	<tr>
	 		<td class="content"  colspan="4"  style="padding-left: 12%">${co.opinionDetail}</td>
	 	</tr>
	 </c:forEach>
	 </table>
	<table class="col3" >
	 	<tr>
	 	<td class="label" >是否落实：</td>
	 	<td class="content" ><radio:radio name="ifPass"  biztypekey="1151"  checked="${regularBasic.ifPass }"  /></td>
	 	<td class="label" > </td>
	 	<td class="content" ></td>
	 	</tr>
	</table>
	 <input type="hidden" id="projectStauts" name="projectStatus"/>
	 <input type="hidden" id="clientType" name="clientType" value="100311" />
	 <div class="divBgColor">操作信息</div>
		<table class="col3">
			<tr>
				<td class="label"></td>
				<td class="content"></td>
				<td class="label"></td>
				<td class="content"></td>
		</tr>
			<tr>
		<td  colspan="4"  style="padding-left: 10%">
		<textarea rows="4"  style="width:100%"  loxiaType="input" id="operRemark" name="operRemark" >${taskList.operReasonRemark}</textarea></td>
			</tr>
		</table>
	<div id ="operateOrder" class="buttonlist buttonDivWidth">
		<input type="button" class="confirm" id="tempSave"  value="暂存"  loxiaType="button" />
	</div>
</form>
