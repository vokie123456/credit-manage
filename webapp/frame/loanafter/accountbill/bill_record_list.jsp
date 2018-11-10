<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 企业   -->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.audit.tasklist" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/accountbill/bill_record_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>

	<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div>
		<form id="qryfrm">
		<table>
			<tr>
				<!-- 申请表信息 -->
				<td class="label" colspan="6"> 账单查询</td>
			</tr>
			<tr>
				<!-- 项目编号-->
				<td class="label"><fmt:message
						key="label.audit.taskquery.project_code" bundle="${lang}" /></td>
				<td width="150"><input name="projectCode" loxiaType="input" trim="true" /></td>
				<!-- 状态 -->
				<td class="label">客户：</td>
				<td width="150"><input name="clientName" loxiaType="input" trim="true" /></td>
				
				<!-- 状态 -->
				<td class="label">项目状态：</td>
				<td width="150"><bizoption:bizoption name="projectStatus" biztypekey="1101" isChoose="true"/></td>
				
			</tr>
			<tr>
			    <td class="label">账单流水号： </td>
			    <td width="150"><input name="billId" loxiaType="input" trim="true"/> </td>
				<!-- 逾期日期-->
				<td class="label">逾期日期：  &nbsp; 从</td>
				<td width="150"><input name="expiredDateBegin" id="expiredDateBegin" loxiaType="date" checkmaster="setMinDate" /></td>
				<td class="label"> 到 </td>
				<td width="150"><input name="expiredDateEnd" id="expiredDateEnd" loxiaType="date" checkmaster="setMaxDate" /></td>
			</tr>
			<tr>
			    <td class="label">账单状态： </td>
			    <td width="150"><bizoption:bizoption name="status" biztypekey="1094" isChoose="true"/></td>
				<!-- 逾期日期-->
				<td colspan='4'></td>
			</tr>
			
		</table>
		
		<input type="hidden" name="clientId" value="${clientId}" id="clientId"/>
		
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm" id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="reset" loxiaType="button" class="confirm" id="resets">
				<fmt:message key="button.reset" bundle="${lang}" />
			</button>
			<!--  
			<button type="button" loxiaType="button" class="confirm" id="btnGenCmd">
				导出扣款指令
			</button>
			-->
		</div>
		</form>
	<%@include file="/common/paginationInit.jsp" %>	
	<table id="tbl-list"></table>
	<div id="pager"></div>
</div>

</body>
</html>
