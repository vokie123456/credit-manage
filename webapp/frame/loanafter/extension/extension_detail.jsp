<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.debt.info.title" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/extension/extension_detail.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<form id="basicInfoForm">
		<div class="divBgColor">项目详情</div>
		<div class="">
			<table width="100%" class="textalignCenter tabcustomPeoNoborder"  cellpadding="0" cellspacing="0">
				<tr>  
							<td class="labelview">合同编号：</td>
							<td  class="contentview">${vo.contractId}</td>
							<td class="labelview">项目编号：</td>
							<td  class="contentview">${vo.projectCode }</td>
							<td class="labelview">产品名称：</td>
							<td  class="contentview">${vo.prodName }</td>
							<td class="labelview">项目状态：</td>
							<td  class="contentview" id="proStatus">${vo.projectStautsStr }</td>
						</tr>
						<tr>
							<td class="labelview">银行账号：</td>
							<td  class="contentview">${vo.bankCard }</td>
							<td class="labelview">客户名称：</td>
							<td  class="contentview">${vo.clientName }</td>
							<td class="labelview">证件类型：</td>
							<td  class="contentview">${vo.cardTypeStr }</td>
							<td class="labelview">证件号码：</td>
							<td  class="contentview">${vo.cardNo }</td>
						</tr>
						<tr>
							<td class="labelview">贷款金额：</td>
							<td  class="contentview">${vo.lendMoney }</td>
							<td class="labelview">贷款期数：</td>
							<td  class="contentview" id="period">${vo.periods }</td>
							<td class="labelview">已出期数：</td>
							<td  class="contentview">${vo.alreadyPeriods }</td>
							<td class="labelview">诉讼日期：</td>
							<td  class="contentview"></td>
						</tr>
						<tr>
							<td class="labelview">放款日期：</td>
							<td  class="contentview" id="proStatus">${vo.lendingTimeStr }</td>
							<td class="labelview">首期还款日：</td>
							<td  class="contentview">${vo.firstRepayDate }</td>
							<td class="labelview">结清日期：</td>
							<td  class="contentview">${vo.endTimeStr }</td>
						</tr>
			</table>
		</div>
	</form> 
<br/>
	<form >
		<div class="divBgColor">
			<fmt:message key="label.debt.info.title" bundle="${lang}" />
		</div>
		<div>
			<table width="100%" class="textalignCenter tabcustomPeoNoborder"  cellpadding="0" cellspacing="0">
				<tr>
					<!-- 申请理由 -->
					<td class="labelNum" ><fmt:message key="label.extend.check.reason"
							bundle="${lang}" /></td>
					<td  class="contentNum" colspan="3" >${ep.extendExcuse }</td>
				</tr>
				<!-- 针对哪次放款进行展期 -->
				<tr>
					<input type="hidden" id="hiddenLendId" value="${ep.lendId}"
						name="lendId" />
					<input type="hidden" id="hiddenProId" value="${ep.projectId}" />
					<td class="labelNum" >放款批次：</td>
					<td id="tdLendDes"  class="contentNum"></td>
					<!-- 贷款期数-->
					<td class="labelNum">展期期数：</td>
					<td  class="contentNum">${ep.loanPeriod}</td>
				</tr>

				<tr>   
					<!-- 审核意见 -->
					<td class="labelview" ><fmt:message
							key="label.extend.check.approveComments" bundle="${lang}" /></td>
					<td  class="contentview"  colspan="3">${ep.approveComments }</td>
				</tr>
			</table>
		</div>
		
		<!-- 如果还款方式为“自定义还款，则选择费用项隐藏掉” -->
			<div >
				<form >
					<!-- 产品费用 -->
					<div class="divBgColor" style="margin-top: 1em;">
						<fmt:message key="label.loaning.title2" bundle="${lang}" />
					</div>

					<table class="textalignCenter tabcustom"  cellpadding="0" cellspacing="0" >
						<thead>
							<tr  class="tabcustomTr">
								<th><fmt:message key="label.loaning.costTitle"
										bundle="${lang}" /></th>
								<th><fmt:message key="label.loaning.costMode"
										bundle="${lang}" /></th>
								<th><fmt:message key="label.loaning.costRate"
										bundle="${lang}" /></th>
								<th><fmt:message key="label.loaning.costFix"
										bundle="${lang}" /></th>
								<th class="tabBorderRight"><fmt:message key="label.loaning.costPeriod"
										bundle="${lang}" /></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${pcost}" var="dis" varStatus="loop">
								<tr <c:if test="${dis.ifShow==100112}">style="display:none;"</c:if> >
									<td style="text-align: center;"><bizoptionname:showname biztypekey="1090"
											value="${dis.costCode }" /></td>

									<td><bizoptionname:showname biztypekey="1092" value="${dis.costMode }"
											/></td>
									<td>${dis.costRate }</td>
									<td>${dis.costFix }</td>
									<td class="tabBorderRight"><bizoptionname:showname biztypekey="1093" value="${dis.costPeriod }" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
			</div>
		<br/>
		<div class="divBgColor">
			展期签约
		</div>
		<div>
			<table width="100%"   class="textalignCenter tabcustomPeoNoborder"  cellpadding="0" cellspacing="0" >
				<tr>
					<td class="label">展期合同号：</td>
					<td  class="contentNum">${ep.contractNo }</td>
					<td class="label">签约日期：</td>
					<td  class="contentNum"><fmt:formatDate value="${ep.signDate }" pattern="yyyy-MM-dd"/></td>
					<td></td>
					<td  class="contentNum"></td>
				</tr>
				<tr>
					<input type="hidden" id="extendStatus" value="${ep.extendStatus}" />
				</tr>
			</table>
		</div>
	</form>
</body>
</html>












