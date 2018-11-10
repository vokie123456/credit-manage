<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<!-- 放款查询列表-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.lend.query" bundle="${lang}" /></title>

<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/lend/lend_list.js?v=2.1.5'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: right;
	
}
input[name="minLendMoney"].ui-loxia-default{width:37%;}
input[name="maxLendMoney"].ui-loxia-default{width:37%;}
input[name="lendingTimeStart"].ui-loxia-default{width:37%;}
input[name="lendingsTimeEnd"].ui-loxia-default{width:37%;}
input[name="lendingTimeBegin"].ui-loxia-default{width:37%;}
input[name="lendingTimeEnd"].ui-loxia-default{width:37%;}
</style>
</head>

<body contextpath="<%=request.getContextPath()%>">
	
	<form id="lendListForm" method="post">
		<table>
			<tr>
				<td class="label">客户姓名:</td>
				<td width="200"><input id="" name="clientName"loxiaType="input" trim="true" /></td>
				<td class="label">产品:</td>
				<td width="200" colspan="1" class="timerTd">
				    <select name="productMaxId" style="width:80px;">
						<option value="">请选择</option>
						<c:forEach items="${ productMaxInfoList }" var="psi">
							<option value="${ psi.id }">${ psi.productName }</option>
						</c:forEach>
					</select>
				    <select name="productSubId" style="width:80px;">
						<option value="">请选择</option>
					</select>
				    
				</td>
				<td class="label">期限:</td>
				<td width="150"><input id="" name="loanPeriod" loxiaType="input" trim="true" /></td>
				
				<td class="label">手机号码:</td>
				<td width="150"><input id="" name="mobilePhone" loxiaType="input" trim="true" /></td>
				<td class="label">放款时间：</td>
				<td width="200"><input id="" class="style_td ui-loxia-default" name="lendingTimeStart" loxiaType="date" trim="true" />&nbsp;<span>到</span>&nbsp;
				<input id="" class="style_td ui-loxia-default" name="lendingsTimeEnd" loxiaType="date" trim="true"/></td>
			</tr>
			<tr >
				<td class="label">放款金额:</td>
				<td width="200"><input id="" name="minLendMoney" loxiaType="input" trim="true" class="ui-loxia-default"/>&nbsp;<span>到</span>&nbsp;
				<input id="" name="maxLendMoney" loxiaType="input" trim="true" class="ui-loxia-default"/></td>
			
				<td class="label">放款状态:</td>
				<td width="50" colspan="1">
					<bizselect:bizselect biztypekey="1188" startSort="1" endSort="4" name="lendStatus" id="lendStatus" isChoose="true" />
				</td>
				<td>提现申请时间：</td>
				<td width="200"><input id="loginTimeFrom1" loxiaType="date" name="lendingTimeBegin" trim="true" class="ui-loxia-default"/>&nbsp;<span>到</span>
				<input id="loginTimeTo1" loxiaType="date" name="lendingTimeEnd" trim="true" class="ui-loxia-default"/></td>	
			
				<td class="label">资金渠道:</td>
				<td width="200" colspan="1" class="timerTd">
				    <select name="capitalChannelId" style="width:175px;">
						<option value="">请选择</option>
						<c:forEach items="${ fundChannelManagerList }" var="fml">
							<option value="${ fml.channelCode }">${ fml.channelName }</option>
						</c:forEach>
					</select>
				</td>
				<td class="label">来源应用:</td>
				<td width="200" colspan="1" class="timerTd">
					<select name="applyCode" loxiaType="select">
						<option value="">请选择</option>
						<c:forEach items ="${amList}" var="mapOne">
							<option value=${ mapOne.applyCode} > ${mapOne.applyName}</option>
						</c:forEach>
					</select>
				</td>
			
			</tr> 
			
			
		</table>
		<div class="buttonlist buttonDivWidth">
		 	<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
				id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="button" loxiaType="button" id="confirmedLoanplan"  class="confirm">
				生成放款计划
			</button>
			<button type="button" loxiaType="button" id="confirmedLoan"  class="confirm">
				确认放款
			</button>
			<button type="button" loxiaType="button" id="contractCancel"  class="confirm">
				合同撤回
			</button>
			<button type="button" loxiaType="button" id="exportFK"  class="confirm">
				导出
			</button>
		<%-- 	<button type="button" loxiaType="button" class="confirm" id="">
				<fmt:message key="tip.sys.apply.batch" bundle="${ lang }"></fmt:message>
			</button> --%>
		</div>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-lendlist"></table>
		<div id="pager"></div>
	</form>
<div id="dialog-chgrole"></div>
</body>
</html>
