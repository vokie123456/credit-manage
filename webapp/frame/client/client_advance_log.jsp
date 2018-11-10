<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  manifest="/scripts/common/clear.appcache">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/accountbill/bill_detail.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loaning/repay_plan_edit_bill_list.js'/>"></script>
	<style>
		.client_adv{}
		.client_adv td{height:30px; line-height:30px;}
		.client_adv td:first-child{text-align:right; padding-right:10px;}
		.client_adv td select{width:150px;}
		.client_adv td textarea{width:450px; height:250px;resize:none}
	</style>
</head>

<body>

	<form action="/credit-web/client/clientAdvance/saveClientAdvanceLog.do" method="post">
		<table class="client_adv">
		<c:forEach  var="vo"  items="${ list}">
				<input name="advanceId" value="${vo.id }" style="display:none;" />
				
				<tr> 
					<td>补件理由</td>
					<td><input type="text"  value="${ vo.adcanceReason }" readOnly="true" style='border-left:0px;border-top:0px;border-right:0px;border-bottom:1px '/></td>
				</tr>
				<tr>
					<td>备注</td>
					<td><input type="text"  value="${ vo.adcanceType }" readOnly="true" style='border-left:0px;border-top:0px;border-right:0px;border-bottom:1px ' /></td>
				</tr>
				<tr>
					<td>推进方式:</td>
					<td>
						<select name="advanceWay">
							<option value="190001">短信推进</option>
							<option value="190002">电话推进</option>
							<option value="190003">网络推进</option>
							<option value="190004">线下推进</option>
							<option value="190005">其他推进</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>推进描述</td>
					<td><textarea name=adcanceCause></textarea></td>
				</tr>
				<tr>
					<td colspan='2' style="text-align:center;"><input type="submit" value="确定" /> </td>
				</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>