
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/businessmonitor/business_monitor_detail.js'/>"></script>
<style type="text/css">
	#processOverview{
		width: 97%;
	}
</style>
<title>业务概览</title>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<table style="width: 100%">
		<tr>
			<td><div class="divBgColor">业务概览</div> <input type="hidden"
				id="projectId" value="${projectId }"> <input type="hidden"
				id="clientType" value="${clientType}"></td>
		</tr>
		<tr>   
			<td><table  class="textalignCenter tabcustomPeoNoborder"  cellpadding="0"
					cellspacing="0" >
					<tr>
						<td class="labelview">合同编号：</td>
						<td class="contentview">${vo.contractId}</td>
						<td class="labelview">项目编号：</td>
						<td class="contentview">${vo.projectCode }</td>
						<td class="labelview">产品名称：</td>
						<td class="contentview">${vo.prodName }</td>
						<td class="labelview">项目状态：</td>
						<td class="contentview">${vo.projectStautsStr }</td>
					</tr>
					<tr>
						<td class="labelview">银行账号：</td>
						<td class="contentview">${vo.bankCard }</td>
						<td class="labelview">客户名称：</td>
						<td class="contentview">${vo.clientName }</td>
						<td class="labelview">证件类型：</td>
						<td class="contentview">${vo.cardTypeStr }</td>
						<td class="labelview">证件号码：</td>
						<td class="contentview">${vo.cardNo }</td>
					</tr>
					<tr>
						<td class="labelview">贷款金额：</td>
						<td class="contentview">${vo.lendMoney }</td>
						<td class="labelview">贷款期数：</td>
						<td class="contentview" id="period">${vo.periods }</td>
						<td class="labelview">已出期数：</td>
						<td class="contentview">${vo.alreadyPeriods }</td>
						<td class="labelview">诉讼日期：</td>
						<td class="contentview"></td>
					</tr>
					<tr>
						<td class="labelview">放款日期：</td>
						<td class="contentview">${vo.lendingTimeStr }</td>
						<td class="labelview">首期还款日：</td>
						<td class="contentview">${vo.firstRepayDate }</td>
						<td class="labelview">结清日期：</td>
						<td class="contentview">${vo.endTimeStr }</td>
					</tr>
				</table></td>   
		</tr>
		<tr>
			<td>
				<div class="divBgColor">项目流程概览</div>
			</td>
		</tr>
		<tr>
			<td><div id="processOverview"></div></td>
		</tr>
		<tr>
			<td><div class="divBgColor">贷后项目概览</div></td>
		</tr>
		<tr>
			<td>
				<div>
				     
					<button type="button" loxiaType="button" class="confirm"
						id="showRepayPlan">
						<span class="labelview">账务信息</span>
					</button>
					<!--  
					<button type="reset" loxiaType="button" class="confirm"
						id="showBillRecord">
						<span class="labelview">账单</span>
					</button>
					-->
					<button type="button" loxiaType="button" class="confirm"
						id="showExtensionInfo">
						<span class="labelview">展期信息</span>
					</button>
					<button type="button" loxiaType="button" class="confirm"
						id="showClearDebtInfo">
						<span class="labelview">清贷信息</span>
					</button>
					<button type="button" loxiaType="button" class="confirm"
						id="showCollectionInfo">
						<span class="labelview">催收信息</span>
					</button>
					<button type="button" loxiaType="button" class="confirm"   
						id="showVisitInfo">
						<span class="labelview">贷后检查信息</span>
					</button>
				</div>
			</td>
		</tr>
		<tr>
			<td><table style="width: 100%;">
					<tr>
						<td style="width: 100%"><div id="detail"
								style="border: 1px solid #ccc;"></div></td>
					</tr>
				</table></td>
		</tr>
	</table>   
</body>
</html>