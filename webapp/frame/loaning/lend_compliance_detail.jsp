<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/meta.jsp"%>
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<fmt:setBundle basename="messages" var="lang" />
<div class="divBgColor">合规信息</div>
<table class="col3">
	<tr>
		<td class="label">客户名称：</td>
		<td class="content">${clientBasic.clientName}</td>
		<td class="label">客户经理：</td>
		<td class="content"><showusername:showusername
				value="${clientProject.saleraCode}"></showusername:showusername></td>
	</tr>
	<tr>
		<td class="label">放款金额(万元)：</td>
		<td class="content">${la.lendMoney}</td>
		<td class="label">贷款期限：</td>
		<td class="content">${pconfig.loanPeriod }</td>
	</tr>
	<tr>
		<td class="label">贷审会议编号：</td>
		<td class="content">${checkBasic.checkNo}</td>
		<td class="label"></td>
		<td class="content"></td>
	</tr>
</table>
<div class="divBgColor">授信条件落实情况</div>
<table class="col3">
	<tr>
		<td class="label"></td>
		<td class="content"></td>
		<td class="label"></td>
		<td class="content"></td>
	</tr>
	<c:forEach items="${lcblList }" var="lcbl">
		<tr>
			<td class="label"><bizoptionname:showname biztypekey="1155"
					value="${lcbl.loanCondition }"></bizoptionname:showname>：</td>
			<td class="content"><bizoptionname:showname biztypekey="1151"
					value="${lcbl.ifPass}"></bizoptionname:showname></td>
			<td class="content" colspan="2">${lcbl.loanRemark}</td>
		</tr>
	</c:forEach>
</table>
<div class="divBgColor">合同合规性审查</div>
<table class="col3">
	<tr>
		<td class="label"></td>
		<td class="content"></td>
		<td class="label"></td>
		<td class="content"></td>
	</tr>
	<c:forEach items="${lcbcList }" var="lcbc">
		<tr>
			<td class="label"><bizoptionname:showname biztypekey="1156"
					value="${lcbc.contractCondition}"></bizoptionname:showname>：</td>
			<td class="content"><bizoptionname:showname biztypekey="1001"
					value="${lcbc.ifPass }"></bizoptionname:showname></td>
		</tr>
	</c:forEach>
</table>
<div class="divBgColor">放款合规结论</div>
<table class="col3">
	<tr>
		<td class="label"></td>
		<td class="content"></td>
		<td class="label"></td>
		<td class="content"></td>
	</tr>
	<tr>
		<td class="label"></td>
		<td class="content" colspan="3">${ucx:unCleanXSS(lcb.complianceResult) }</td>
	</tr>
</table>
<div class="divBgColor">操作信息</div>
<table class="col3">
	<tr>
		<td class="label">操作类型：</td>
		<td class="content">${taskList.operType}</td>
		<td class="label">操作时间：</td>
		<td class="content"><fmt:formatDate
				value="${taskList.submitTime}" pattern="yyyy-MM-dd  HH:mm:ss" /></td>
	</tr>
	<tr>
		<td class="label">经办人：</td>
		<td class="content"><showusername:showusername
				value="${taskList.taskAgent}"></showusername:showusername></td>
	</tr>
	<tr>
		<td class="label"></td>
		<td class="content" colspan="3"></td>
	</tr>
</table>