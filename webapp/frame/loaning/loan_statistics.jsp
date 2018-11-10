<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 放款查询列表-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.lend.query" bundle="${lang}" /></title>
<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loaning/loan_statistics.js?v=1.5.1'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label1 {
	text-align: right;
}
.fangc{
	min-width: 400px;
}
.fangc select{
	width: 32% !important;
}
.timerTd{
	min-width: 290px;
}
.timerTd input{
	width: 112px !important;
}
.colCCC{
	color:#cccccc;
}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div id="imgBox" style="display:none">
	  <img src="" alt="" />
	</div>
	<form id="lendListForm" method="post">
		<table>
			<tr>
				<td class="label1">客户：</td>
				<td width="80">
					<input name="clientName" loxiaType="input" trim="true" />
				</td>
				<td class="label1">还款方式：</td>
				<td width="80">
					<select class="ui-loxia-default ui-corner-all" name="repayMode">
						<option value="">请选择</option>
						<option value="109101">先付费后还本</option>
						<option value="109102">等额还本付费</option>
						<option value="109103">一次性还本付息</option>
					</select>
				</td>
				 <td class="label1">期限：</td>
				<td width="80">
				    <select class="ui-loxia-default ui-corner-all" name="loanPeriod">
						<option value="">3</option>
						<option value="109101">6</option>
						<option value="109102">9</option>
						<option value="109103">12</option>
					</select>
				</td> -->
				<td class="label1">产品:</td>
				<td colspan="1">
				    <select name="productMaxId" width="50" >
						<option value="">请选择</option>
						<c:forEach items="${ productMaxInfoList }" var="psi">
							<option value="${ psi.id }">${ psi.productName }</option>
						</c:forEach>
					</select>
					<select name="productSubId" width="50">
						<option value="">请选择</option>
					</select>
				</td>
				<td class="label1">合同编号：</td>
				<td width="80">
					<input name="loanCode" loxiaType="input" trim="true" />
				</td>
			</tr>
			<tr>
				<td class="label1">放款日期：</td>
				<td class="timerTd">
					<input id="loginTimeFrom" loxiaType="date" name="lendingTimeStart"  />
					<span>到</span>
					<input id="loginTimeTo" loxiaType="date" name="lendingTimeEnd" />
				</td>
				<td class="label1">申请日期：</td>
				<td class="timerTd">
					<input id="loginTimeFrom1" loxiaType="date" name="createTimeStart" />
					<span>到</span>
					<input id="loginTimeTo1" loxiaType="date" name="createTimeEnd" />
				</td>
				<td class="label1">初审通过时间:</td>
				<td class="timerTd">
					<input id="loginTimeFrom2" loxiaType="date" name="firstTimeStart" />
					<span>到</span>
					<input id="loginTimeTo2" loxiaType="date" name="firstTimeEnd"  />
				</td>
				<td class="label1">终审通过时间:</td>
				<td class="timerTd">
					<input id="loginTimeFrom3" loxiaType="date" name="finalTimeStart"  />
					<span>到</span>
					<input id="loginTimeTo3" loxiaType="date" name="finalTimeEnd"  />
				</td>
			</tr>
		</table>
		<div class="buttonlist buttonDivWidth" >
		 	<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
				id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="button" id="biaodiFile" loxiaType="button" class="confirm" title="tip"/>
				导出
			</button>
		</div>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-lendlist"></table>
		<div id="pager"></div>
	</form>
	<div id="dialog-chgrole"></div>
</body>
</html>