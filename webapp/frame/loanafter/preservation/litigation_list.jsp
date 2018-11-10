<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/preservation/litigation_list.js'/>"></script>
<title>法律诉讼列表（项目和法律诉讼信息）</title>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div>
		<form id="clientProjectQueryForm">       
			<table>      
				<tr>        
					<td class="label textalignLeft"  style="width:130px;padding-right: 5px;">客户名称：</td>
					<td width="150"><input loxiaType="input" trim="true" name="clientName" /></td>
					<td class="label textalignLeft">客户经理：</td>
					<td width="150"><input type="hidden" id="bizHalls" value="${bizHalls }" />
						<input type="hidden" id="userId" value="${userId }" /> <user:user
							bizHall="${bizHalls }" compCode="${compCode }"
							roleCode="0101,0102" userId="${userId }" id="broker"     
							name="broker" isChoose="true" /></td>
				</tr>
				<tr>
					<td class="label textalignLeft">诉讼标的金额(元)：</td>
					<td width="150"><input loxiaType="input" trim="true"
						name="litigationMoney" /></td>
					<td class="label textalignLeft">终结日期：</td>
					<td width="150"><input loxiaType="date" trim="true" name="lpendTime" /></td>
				</tr>
			</table>
		</form>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm" id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<!-- <button type="button" loxiaType="button" class="confirm"
				title="新增" id="add_litigation">新增</button> -->
		</div>
		<%@include file="/common/paginationInit.jsp"%>
		<table id="tbl-litigation-list"></table>
		<div id="pager"></div>
	</div>
</body>
</html>