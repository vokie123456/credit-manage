<%@page import="com.alibaba.fastjson.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/meta.jsp"%>
<script type="text/javascript"
	src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/newsZr/lib/jquery.form.js'/>"></script>
<script>
	list = ${listJson};
	ClientContractVo = ${ClientContractVoJson};

</script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/accountbill/bill_detail.js?v=3.1.0'/>"></script>
<fmt:setBundle basename="messages" var="lang" />
<style>
p {
	margin: 0
}

.w1000 {
	width: 90% !important;
}

.contractDv {
	width: 600px;
	border: 1px solid #CCCCCC;
	border-radius: 10px;
	position: relative;
	padding: 10px;
	margin-bottom: 20px;
}

.contractDv:before {
	display: block;
	background: #fff;
	position: absolute;
	padding: 0 3px;
	top: -12px;
	left: 10px;
}

.htxx:before {
	content: "合同信息:";
}

.hkk:before {
	content: "还款卡信息";
}

.contractTable {
	width: 100%;
	text-align: left;
}

.contractTable td {
	height: 30px;
}

sup {
	color: red;
}

#hkFrm input[type=text], select {
	width: 120px;
}
</style>
</head>

<body contextpath="<%=request.getContextPath()%>">
<input id="creditCode" type="hidden" value="${ClientContractVo.creditCode}">
<input id="userType" type="hidden" value="${bank.userType}">
<input id="clientId" type="hidden" value="${bank.clientId}">
	<div class="contractDv htxx w1000" style="margin-top: 30px;">
		<table class="contractTable">
			<tbody>
				<tr>
					<td>客户姓名:${ClientContractVo.clientName}</td>
					<td>手机:${ClientContractVo.mobile}</td>
					<td colspan="2">身份证:${ClientContractVo.cardNo}</td>
					<td>账户余额:${ClientContractVo.accountBalance}</td>
					<td>放款日期:<fmt:formatDate value="${ClientContractVo.lendDate}"
											 pattern="yyyy-MM-dd HH:mm:ss" /></td>
				</tr>
				<tr>
					<td>合同编号:${ClientContractVo.contractCode}</td>
					<%--<td>放款日期:<fmt:formatDate value="${ClientContractVo.lendDate}"--%>
							<%--pattern="yyyy-MM-dd HH:mm:ss" /></td>--%>
					<td>总期数:${ClientContractVo.loanPeriod}</td>
					<td>当前期数:${ClientContractVo.billPeriod}</td>
					<td>产品大类:${ClientContractVo.productMaxName}</td>
					<td>产品小类:${ClientContractVo.productSubName}</td>
					<td>最后结清日:<fmt:formatDate value="${lastDate}"
											  pattern="yyyy-MM-dd" /></td>
				</tr>
				<tr>
					<td>合同金额:${ClientContractVo.contractMoney}</td>
					<td>合同利息:${ClientContractVo.interest}</td>
					<td>应还罚息:${ClientContractVo.waitInterestFine}</td>
					<td>应还总手续费:${termFeeTotal}</td>
					<td>服务费:${serviceFee}</td>
					<td colspan="2">下个还款日:<fmt:formatDate
							value="${ClientContractVo.nextRepayDate}" pattern="yyyy-MM-dd" /></td>

					<%--<td>合同本金:${ClientContractVo.principal}</td>--%>
					<%--&lt;%&ndash;<td>合同利息:${ClientContractVo.interest}</td>&ndash;%&gt;--%>
					<%--<td>产生罚息:${ClientContractVo.interestFine}</td>--%>
					<%--<td></td>--%>
				</tr>
				<tr>
					<td>已还本金:${pricipalPaidTotal}</td>
					<td>已还利息:${interestPaidTotal}</td>
					<td>已还罚息:${interestFinePaidTotal}</td>
					<td>已还总手续费:${termFeePaidTotal}</td>
					<td>当前状态: <c:choose>
						<c:when test="${ClientContractVo.lendStatus == '已逾期'}">
								<span style="color: red;"> ${ClientContractVo.lendStatus}
								</span>
						</c:when>
						<c:when test="${ClientContractVo.lendStatus == '还款中'}">
								<span style="color: #000;">
										${ClientContractVo.lendStatus} </span>
						</c:when>
						<c:otherwise>
								<span style="color: green;">
										${ClientContractVo.lendStatus} </span>
						</c:otherwise>
					</c:choose>
					</td>
					<%--<td>最后结清日:<fmt:formatDate value="${lastDate}"--%>
							<%--pattern="yyyy-MM-dd" /></td>--%>
					<%--<td>应还总手续费:${termFeeTotal}</td>--%>
				</tr>
				<tr>
					<%--<td colspan="2">下个还款日:<fmt:formatDate--%>
							<%--value="${ClientContractVo.nextRepayDate}" pattern="yyyy-MM-dd" /></td>--%>
					<td>待还本金:${ClientContractVo.waitPrincipal}</td>
					<td>待还利息:${ClientContractVo.waitInterest}</td>
					<td>待还罚息:${ClientContractVo.waitInterestFine}</td>
					<td>待还总手续费:${termFeeLeftTotal}</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="contractDv hkk w1000" style="margin-top: 30px;">
		<table class="contractTable">
			<tbody>
				<tr>
					<td>户名:${bank.name}</td>
					<td>开户行:${bank.bankName}</td>
					<td>卡号:${bank.bankNo}</td>
					<c:if test="${ClientContractVo.channelCode =='210001'}">
					<td>绑卡状态:${bank.isBinding}</td>
					<td>自动代扣:${ClientContractVo.opreateResult == "1"?"已授权":"未授权"}</td>
					</c:if>
				</tr>
				<tr>
					<c:if test="${ClientContractVo.channelCode}=='210001'}">
					<td><input id="getBalance" type="button" value="获取余额" style="background:#008cff;color:#fff;border-radius:5px;"></td>
					<td class="balance" style="display: none;">账户余额:<span id="accountBalance"></span></td>
					<td class="balance" style="display: none;">冻结金额:<span id="freezMoney"></span></td>
					</c:if>
				</tr>

			</tbody>
		</table>
	</div>
	<form>
		<input type="hidden" id="bill_projectId" value="${projectId }" />
		<table class="textalignCenter tabcustom" cellpadding="0"
			cellspacing="0" width="100%">
			<tr class="tabcustomTr">
				<th>当前期数</th>
				<th>应收本金</th>
				<th>应还每期手续费</th>
				<th>应还利息</th>
				<th>逾期天数</th>
				<th>应还罚息</th>
				<th>应还款日期</th>
				<th>实际还款日期</th>
				<th>已还本金</th>
				<th>已还每期手续费</th>
				<th>已还利息</th>
				<th>已还罚息</th>
				<%--<th>已还总违约金</th>--%>
				<th>待还本息和</th>
				<th>待还每期手续费</th>
				<th>待还罚息</th>
				<th>还款状态</th>
				<th>操作</th>
			</tr>
			<c:forEach items="${list}" var="vos" varStatus="status">
				<tr>
					<td class="contentview">${vos.serials }</td>
					<td class="contentview">${vos.principal }</td>
					<td class="contentview">
						<c:choose>
							<c:when test="${!status.last}">${vos.termFeeForPlan}</c:when>
							<c:otherwise>${vos.termFeeTotal}</c:otherwise>
						</c:choose>
				    </td>
					<td class="contentview">${vos.interest}</td>

					<td class="contentview"><c:choose>
							<c:when test="${vos.status != null}">
                                    ${vos.oveDueDays}
                                </c:when>
							<c:otherwise>
							</c:otherwise>
						</c:choose></td>

					<td class="contentview">${vos.interestFine }</td>
					<td class="contentview"><fmt:formatDate
							value="${vos.expiredDate}" pattern="yyyy-MM-dd" /></td>
					<td class="contentview">${vos.finishDate}</td>
					<td class="contentview">${vos.principalPaid}</td>
					<td class="contentview">
					<c:choose>
						<c:when test="${!status.last}">${vos.termFeePaid}</c:when>
						<c:otherwise>${vos.termFeePaidTotal}</c:otherwise>
					</c:choose>
				   </td>
					<td class="contentview">${vos.interestPaid}</td>
					<td class="contentview">${vos.interestFinePaid}</td>
					<td class="contentview">${vos.principalInterest}</td>
					<%--<td class="contentview">${vos.principalInterest}</td>--%>
					<td class="contentview">
					<c:choose>
						<c:when test="${!status.last}">${vos.termFeeLeft}</c:when>
						<c:otherwise>${vos.termFeeLeftTotal}</c:otherwise>
					</c:choose>
					</td>
					<td class="contentview">${vos.excuseInterestfine}</td>
					<td class="contentview">${vos.repayStatus}</td>
					<td class="contentview">&nbsp; <c:if
							test="${vos.status != null && vos.status != '109403'}">
							<a href="javascript:;" class="activerepayment" onclick="toAccountUrls(${status.index})">主动还款</a>
						</c:if>
					</td>
				</tr>
			</c:forEach>
		</table>
	</form>
	<br></br>
	<div id="account-detail"></div>
	<div id="dialog-chgrole"></div>
</body>
</html>