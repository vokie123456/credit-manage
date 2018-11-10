<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<div class="divBgColor">合规信息</div>
 <table class="col3" >
	<tr>
			<td class="label"><fmt:message
					key="label.audit.taskdetail.money_check" bundle="${lang}" /></td>
		<td class="content">${checkBasic.checkMoney }</td>
		<td class="label"></td>
		<td class="content"></td>
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
	<br/>
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
	 <br/>
	 <table class="col3" >
	 <tr>
	 	<td class="label" >是否落实：</td>
	 	<td class="content" ><bizoptionname:showname biztypekey="1151"  value="${regularBasic.ifPass }"  /></td>
		<td class="label"> </td>
		<td class="content"> </td>
	 </tr>
	 </table>
	 	<div class="divBgColor">操作信息</div>
			<table class="col3">
		<tr>
				<td class="label">操作类型：</td>
				<td class="content">${taskList.operType}</td>
					<td class="label">操作时间：</td>
					<td class="content"><fmt:formatDate  value="${taskList.submitTime}"  pattern="yyyy-MM-dd  HH:mm:ss"/></td>
			</tr>
			<tr>
				<td class="label">经办人：</td>
			    <td class="content"><showusername:showusername value="${taskList.taskAgent}"></showusername:showusername></td>
			</tr>
			<tr>
			<td class="label">操作意见：</td>
				<td  colspan="3" style="font-size: 14px; width:80%;border: 1px solid #dcdcdc;padding-left:10px;" valign="top">${ucx:unCleanXSS(taskList.operReasonRemark) }</td>
				</tr>
		</table>