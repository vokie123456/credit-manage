<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.collection.title" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/collection/collection_mission_detail.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
	
}
.title {
    text-align:center;
    background-color:#50667C;
}
.divB{
    border-color:#50667C;
}
</style>
</head>

<body contextpath="<%=request.getContextPath()%>">
	
	<div class="divBgColor">
		<fmt:message key="label.collection.title" bundle="${lang}" />
	</div>
	<form id="basicInfoForm">
		<table width="100%" border="1" append="1" bordercolor="#EFEFEF">
			<tr>
			   <!-- 合同编号-->
				<td class="label"><fmt:message
						key="label.collection.agreementCode" bundle="${lang}" /></td>
				<td width="150">${bInfo.contractCode }</td>
				<!-- 项目编号-->
				<td class="label"><fmt:message
						key="label.apply.clientproject.project_code" bundle="${lang}" /></td>
				<td width="150">${bInfo.projectCode }</td>
				<!-- 客户姓名 -->
				<td class="label"><fmt:message
						key="label.apply.clientproject.client_name" bundle="${lang}" /></td>
				<td width="150">${bInfo.clientName }</td>
				
			</tr>
			<tr>		
				<!-- 催收状态-->
				<td class="label"><fmt:message
						key="label.collection.status" bundle="${lang}" /></td>
				<td width="150"><bizoptionname:showname biztypekey="1040" value="${bInfo.isCollection }" /></td>
				<!-- 产品名称-->
				<td class="label"><fmt:message
						key="label.collection.productName" bundle="${lang}" /></td>
				<td width="150">
				${bInfo.productName }
				</td>
				<!-- 身份证号-->
				<td class="label"><fmt:message
						key="label.apply.clientproject.card_no" bundle="${lang}" /></td>
				<td width="150">${bInfo.cardNo }</td>
			</tr>	
		</table>
	</form>
	<br/>


    <!--  
	<form id="billRecordForm">
		<div class="divBgColor">
			<fmt:message key="label.collection.billTitle" bundle="${lang}" />
		</div>

		<table border="1" append="1" bordercolor="#EFEFEF" width="100%" style="text-align:center;">
			<tr>
				<th class="title"><fmt:message key="label.collection.debtAll"
						bundle="${lang}" /></th>
				<th class="title"><fmt:message key="label.collection.debtDue"
						bundle="${lang}" /></th>
				<th class="title"><fmt:message key="label.collection.shouldGet"
						bundle="${lang}" /></th>
				<th class="title"><fmt:message key="label.collection.realityGet"
						bundle="${lang}" /></th>
				<th class="title"><fmt:message key="label.collection.th.lastDate"
						bundle="${lang}" /></th>
			</tr>
			<tr>
				<td>${OverDueBill.overDueMoney }</td>
				<td>${OverDueBill.overDues }</td>
				<td>${OverDueBill.costSh }</td>
				<td>${OverDueBill.costRe }</td>
				<td>${OverDueBill.lastDate }</td>
			</tr>
		</table>
		<br/>
		<c:forEach items="${OverDueBillList }" var="bl" varStatus="cnt">
			<div>逾期账单${cnt.count}</div>
			<table border="1" append="1" bordercolor="#EFEFEF" width="100%">
				<tr>
					<th class="title"><fmt:message key="label.collection.item"
							bundle="${lang}" /></th>
					<th class="title"><fmt:message
							key="label.collection.shouldGet" bundle="${lang}" /></th>
					<th class="title"><fmt:message
							key="label.collection.realityGet" bundle="${lang}" /></th>
				</tr>
				<tr>
					<td style="text-align: center;" class="label"><fmt:message
							key="label.collection.principal" bundle="${lang}" /></td>
					<td>${bl.principal }</td>
					<td>${bl.principalPaid }</td>
				</tr>
				<tr>
					<td style="text-align: center;" class="label"><fmt:message
							key="label.collection.interest" bundle="${lang}" /></td>
					<td>${bl.interest }</td>
					<td>${bl.interestPaid }</td>
				</tr>
				<tr>
					<td style="text-align: center;" class="label"><fmt:message
							key="label.collection.cost" bundle="${lang}" /></td>
					<td>${bl.cost }</td>
					<td>${bl.costPaid }</td>
				</tr>
				<tr>
					<td style="text-align: center;" class="label"><fmt:message
							key="label.collection.interestFine" bundle="${lang}" /></td>
					<td>${bl.interestFine }</td>
					<td>${bl.interestFinePaid }</td>
				</tr>

			</table>
		</c:forEach>
	</form>
	</div>
	<br/>
	<div class="divB">
	<form id="CurrentBillRecordForm">
		<div class="divBgColor">
			<fmt:message key="label.collection.currentBillTitle" bundle="${lang}" />
		</div>

		<table border="1" append="1" bordercolor="#EFEFEF" width="100%">
			<tr>
				<th class="title"><fmt:message key="label.collection.item" bundle="${lang}" /></th>
				<th class="title"><fmt:message key="label.collection.shouldGet"
						bundle="${lang}" /></th>
				<th class="title"><fmt:message key="label.collection.realityGet"
						bundle="${lang}" /></th>
			</tr>
			<tr>
				<td style="text-align:center;" class="label"><fmt:message key="label.collection.principal"
						bundle="${lang}" /></td>
				<td>${currentBill.principal }</td>
				<td>${currentBill.principalPaid }</td>
			</tr>
			<tr>
				<td style="text-align:center;" class="label"><fmt:message key="label.collection.interest"
						bundle="${lang}" /></td>
				<td>${currentBill.interest }</td>
				<td>${currentBill.interestPaid }</td>
			</tr>
			<tr>
				<td style="text-align:center;" class="label"><fmt:message key="label.collection.cost" bundle="${lang}" /></td>
				<td>${currentCost }</td>
				<td>${currentCostPaid }</td>
			</tr>
			<tr>
				<td style="text-align:center;" class="label"><fmt:message key="label.collection.interestFine"
						bundle="${lang}" /></td>
				<td>${currentBill.interestFine }</td>
				<td>${currentBill.interestFinePaid }</td>
			</tr>
			
		</table>
	</form>
	<br/>
	-->
	
	
	<form id="collectionDesForm">
	    <div class="divBgColor">
			<fmt:message key="label.collection.collectionTitle" bundle="${lang}" />
			
		</div>
		<table border="1" append="1" bordercolor="#EFEFEF" width="100%">
			<tr>
			    <input type="hidden" id="projectId" name="projectId" value="${proId }"/>
			    <input type="hidden" id="dunWhoHidden" value="${dk.dunWho }"/>
				<!-- 催收概述 -->
				<td class="label" style="text-align:center;"><fmt:message
						key="label.collection.collectionDes" bundle="${lang}" />
				
				</td>
				<td width="150" colspan="3" >${dk.dunComments }</td>
			</tr>
			<tr>
				<!-- 催收方式-->
				<td class="label" style="text-align:center;"><fmt:message key="label.collection.collectionType"
						bundle="${lang}" /></td>
				<td width="150" colspan="3"><checkBox:checkBox  biztypekey="1041" id="collectionType" 
				      name="collectionType" checked="${manner }"/></td>
			</tr>
			<tr>
				<!-- 催收人 -->
				<td class="label" style="text-align:center;"><fmt:message key="label.collection.collector"
						bundle="${lang}" /></td>
				<td width="150" id="dunWhoTd"></td>
				<!-- 催收时间 -->
				<td class="label" style="text-align:center;"><fmt:message key="label.collection.collectionDate"
						bundle="${lang}" /></td>
				<td width="150">${dk.doneDate }</td>
			</tr>
			
		</table>
	</form>
	
</body>
</html>
