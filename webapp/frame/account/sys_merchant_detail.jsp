<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/mytable01.css'/>"/>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/account/sys_merchant_detail.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/frame/account/sys_merchant_schedule.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<title>详情</title>
<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
<input type="hidden" name="accountId" id="accountId" value="${pc.id }">
	<div>
		<table cellpadding="0" cellspacing="0" class="detail_table">
			<tr>
				<th class="detail_th">账户名称</th>
				<th  class="detail_th">银行</th>
				<th  class="detail_th">卡号</th>
				<th  class="detail_th">第三方机构</th>
				<th  class="detail_th">账户余额</th>
				<th  class="detail_th">冻结金额</th>
				<th  class="detail_th">放款总额</th>
				<th  class="detail_th">待收款余额</th>
				<th  class="detail_th">已还款余额</th>
				<th  class="detail_th">建立日期</th>
			</tr>
			<tr>
				<td class="detail_td">${pc.account_name}</td>
				<td class="detail_td">${pc.bankName}</td>
				<td class="detail_td">${pc.bankNo}</td>
				<td class="detail_td"><bizoptionname:showname biztypekey="1186" value="${pc.payChannel}" /></td>
				<td class="detail_td">${pc.accountBalance}</td>
				<td class="detail_td">${pc.freezeBalance }</td>
				<td class="detail_td">${pc.fkze}</td>
				<td class="detail_td">${pc.ds}</td>
				<td class="detail_td">${pc.ys}</td>
				<td class="detail_td"><fmt:formatDate value="${pc.creationDate}" pattern="yyyy-MM-dd"/></td>
			</tr>

			<tr>
			</tr>
		</table>
		<div class="ui-tabs ui-widget ui-widget-content ui-corner-all"
		id="div_out">
		<ul class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active"><a
				href="#div-1">充值、提现记录</a></li> 
			<li class="ui-state-default ui-corner-top"><a href="#div-2">放款、还款记录</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-3">第三方手续费</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-4">还款计划</a></li>
			<c:if test="${isShow==true}">
			<li class="ui-state-default ui-corner-top"><a href="#div-5">收取服务费</a></li>
			</c:if>
		</ul>
		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="div-1">
			<table cellpadding="0" cellspacing="0" class="detail_table">
				<tr>
					<th  class="detail_th">操作时间</th>
					<th  class="detail_th">操作类型</th>
					<th  class="detail_th">商户订单号</th>
					<th  class="detail_th">第三方机构</th>
					<th  class="detail_th">操作金额</th>
					<th  class="detail_th">操作人</th>
					<th  class="detail_th">状态</th>
					<th  class="detail_th">原因</th>
				</tr>
				<c:forEach items="${cztx_flows }" var="flow">
				<tr>
					<td class="detail_td"><fmt:formatDate value="${flow.transDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
					<td class="detail_td">${flow.transTypeNme }</td>
					<td class="detail_td">${flow.merOrderId }</td>
					<td class="detail_td">${flow.payChannel }</td>
					<td class="detail_td">${flow.transBalance }</td>
					<td class="detail_td">${flow.operatorName }</td>
					<td class="detail_td">${flow.transStatus }</td>
					<td class="detail_td">${flow.respMsg }</td>
				</tr>
				</c:forEach>
			</table>
		</div>
		<div
			class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
			id="div-2">
			<table cellpadding="0" cellspacing="0" class="detail_table">
			<tr>
				<th  class="detail_th">操作时间</th>
				<th  class="detail_th">操作类型</th>
				<th  class="detail_th">商户订单号</th>
				<th  class="detail_th">第三方机构</th>
				<th  class="detail_th">操作金额</th>
				<th  class="detail_th">操作人</th>
				<th  class="detail_th">状态</th>
				<th  class="detail_th">原因</th>
			</tr>
			<c:forEach items="${fkhk_flows }" var="flow">
			<tr>
				<td class="detail_td"><fmt:formatDate value="${flow.transDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				<td class="detail_td">${flow.transTypeNme }</td>
				<td class="detail_td">${flow.merOrderId }</td>
				<td class="detail_td">${flow.payChannel }</td>
				<td class="detail_td">${flow.transBalance }</td>
				<td class="detail_td">${flow.operatorName }</td>
				<td class="detail_td">${flow.transStatus }</td>
				<td class="detail_td">${flow.respMsg }</td>
			</tr>
			</c:forEach>
		</table>
		</div>
		<div
		class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
		id="div-3">
		<table cellpadding="0" cellspacing="0" class="detail_table">
			<tr>
				<th  class="detail_th">操作时间</th>
				<th  class="detail_th">操作类型</th>
				<th  class="detail_th">商户订单号</th>
				<th  class="detail_th">第三方机构</th>
				<th  class="detail_th">操作金额</th>
				<th  class="detail_th">操作人</th>
				<th  class="detail_th">状态</th>
			</tr>
			<c:forEach items="${sxf_flows }" var="flow">
			<tr>
				<td class="detail_td"><fmt:formatDate value="${flow.transDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				<td class="detail_td">${flow.transTypeNme }</td>
				<td class="detail_td">${flow.merOrderId }</td>
				<td class="detail_td">${flow.payChannel }</td>
				<td class="detail_td">${flow.counterFee }</td>
				<td class="detail_td">${flow.operatorName }</td>
				<td class="detail_td">${flow.transStatus }</td>
			</tr>
			</c:forEach>
		</table>
		</div>
		<div
		class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
		id="div-4">
		<div>
		<form id="frm-qryclient" method="POST">
			<table>
				<tr>
					<td class="label1">计划还款开始日期：</td>
					<td align="content"><input id="repayDateBegin"
						name="repayDateBegin" loxiaType="date" min="${sysDate }" trim="true"/></td>
					<td class="label1">计划还款结束日期：</td>
					<td align="content"><input id="repayDateEnd"
						name="repayDateEnd" loxiaType="date" min="${sysDate }" trim="true"/></td>
					<td class="label1">是否还清：</td>
					<td align="content"><select name="valid" id="valid" loxiaType="select">
						<option value="">-请选择-</option>
						<option value="1">是</option>
						<option value="0">否</option>
					</select></td>
				</tr>
			</table>
		</form>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
				id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.reset" bundle="${lang}"/>"
				id="resets">
				<fmt:message key="button.reset" bundle="${lang}" />
			</button>
		</div>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-configlist"></table>
		<div id="pager"></div>
		<div id="mxzd"></div>
	</div>
		</div>
		<c:if test="${isShow==true}">
			 <div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="div-5">
				<table cellpadding="0" cellspacing="0" class="detail_table">
					<tr>
						<th  class="detail_th">收取时间</th>
						<th  class="detail_th">贷款编号</th>
						<th  class="detail_th">放款账户</th>
						<th  class="detail_th">金额</th>
					</tr>
					<c:forEach items="${yifang }" var="yf">
	 				<tr>
					 	<td class="detail_td">${yf.shouQuTime }</td>
						<td class="detail_td">${yf.loanCode }</td>
						<td class="detail_td">${yf.accountName }</td>
						<td class="detail_td">${yf.serviceFee }</td> 
					</tr>
					</c:forEach> 
				</table>
			</div>
		</c:if>
		
			
	
	</div>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="backoff">返回</button>
		</div>
	</div>
</body>
</html>