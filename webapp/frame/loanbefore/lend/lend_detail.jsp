<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 放款详细信息-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/lend/lend_detail.js?v=1.5.4'/>"></script>

<style type="text/css">
.label {
	text-align: right;
}

.contractInfo {
	position: absolute;
	left: 30px;
	top: 0;
	font-size: 16px;
}

.contractDv {
	border: 1px solid #333;
	border-radius: 8px;
	padding: 15px;
	position: relative;
	margin-top:20px;
}

.contractDv::before {
	content: attr(title);
	position: absolute;
	left: 5%;
	top: -2%;
	transform: translateX(-50%);
	-webkit-transform: translate(-50%, -50%);
	padding: 0 10px;
	background-color: #fff;
	font-size: 15px;
}
    .w1000 {
        width: 98% !important;
    }
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div class="contractDv htxx w1000" title="合同信息">
		<table class="contractTable">
			<c:if
				test="${lendSearchVo.channelCode!= null and lendSearchVo.channelCode=='210001'}">
				<tr>
					<td class="label">客户姓名:</td>
					<td class="content">${lendSearchVo.clientName}</td>
					<td class="label">产品大类:</td>
					<td class="content">${lendProductConfigVo.productMaxName}</td>
					<td class="label">申请期数:</td>
					<td class="content">${lendProductConfigVo.loanPeriod}</td>
					<td class="label">借款利率:</td>
					<td class="content">${lendProductConfigVo.interest}%</td>
						 <%--/${lendProductConfigVo.interestUnit}--%>
					<td class="label">申请提现时间:</td>
					<td class="content"><fmt:formatDate
							value="${lendSearchVo.lendSubmitTime}" pattern="yyyy-MM-dd" /></td>
					<td class="label">以房服务费率:</td>
					<td class="content"><fmt:formatNumber type="number" value="${lendSearchVo.yifangFeeRate}" pattern="0.00000000" maxFractionDigits="8"/>%</td>
					<%--<td class="label">手机:</td>--%>
					<%--<td class="content">${lendSearchVo.mobilePhone}</td>--%>
					<%--<td class="label">身份证:</td>--%>
					<%--<td class="content">${lendSearchVo.cardNo}</td>--%>
					<%--<td class="label">放款对象:</td>--%>
					<%--<td class="content"><bizoptionname:showname biztypekey="2122"--%>
							<%--value="${lendSearchVo.loanObject}" /></td>--%>
				</tr>
				<tr>
					<td class="label">手机号码:</td>
					<td class="content">${lendSearchVo.mobilePhone}</td>
					<td class="label">产品小类:</td>
					<td class="content">${lendProductConfigVo.productSubName}</td>
					<td class="label">合同本金:</td>
					<td class="content">${lendSearchVo.contractMoney}</td>
					<td class="label">总利息:</td>
					<td class="content grossInterest" id="grossInterest">${lendSearchVo.contractMoney * lendProductConfigVo.interest *  lendProductConfigVo.loanPeriod / 100} </td>
					<td class="label">实际放款时间:</td>
					<td class="content"><fmt:formatDate
							value="${lendSearchVo.lendSubmitTime}" pattern="yyyy-MM-dd" /></td>
					<td class="label">以房服务费:</td>
					<td class="content">${lendSearchVo.yifangFee}</td>

					<%--<td class="label">合同编号:</td>--%>
					<%--<td class="content">${lendSearchVo.contractCode}</td>--%>
					<%--<td class="label">提现金额:</td>--%>
					<%--<td class="content">${lendSearchVo.withdrawApplyMoney}</td>--%>
					<%--<td class="label">申请期限:</td>--%>
					<%--<td class="content">${lendProductConfigVo.loanPeriod}</td>--%>
					<%--&lt;%&ndash; ${lendProductConfigVo.interestUnit} &ndash;%&gt;--%>
					<%--<td class="label">申请提现时间:</td>--%>
					<%--<td class="content"><fmt:formatDate--%>
							<%--value="${lendSearchVo.lendingTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>--%>
					<%--<td class="label">实际放款时间:</td>--%>
					<%--<td class="content"><fmt:formatDate--%>
							<%--value="${lendSearchVo.lendSubmitTime}" pattern="yyyy-MM-dd" /></td>--%>
				</tr>
				<tr>
					<td class="label">身份证号:</td>
					<td class="content">${lendSearchVo.cardNo}</td>
					<td class="label">放款对象:</td>
					<td class="content"><bizoptionname:showname biztypekey="2122"
						value="${lendSearchVo.loanObject}" /></td>
					<td class="label">服务费率:</td>
					<td class="content"><fmt:formatNumber type="number" value="${lendProductConfigVo.productService}" pattern="0.00000000" maxFractionDigits="8"/>%</td>
					<td class="label">每期手续费率:</td>
					<td class="content"><fmt:formatNumber type="number" value="${lendSearchVo.termFee}" pattern="0.00000" maxFractionDigits="10" />%</td>
					<td class="label"></td>
					<td class="content"></td>
					<td class="label">固金所服务费:</td>
					<td class="content">${lendSearchVo.gjsFee}</td>

					<%--<td class="label">产品大类:</td>--%>
					<%--<td class="content">${lendProductConfigVo.productMaxName}</td>--%>
					<%--<td class="label">产品小类:</td>--%>
					<%--<td class="content">${lendProductConfigVo.productSubName}</td>--%>
					<%--<td class="label">总利息:</td>--%>
					<%--<td class="content grossInterest" id="grossInterest">${lendSearchVo.contractMoney * lendProductConfigVo.interest *  lendProductConfigVo.loanPeriod / 100} </td>--%>
					<%--<td class="label">服务费率:</td>--%>
					<%--<td class="content"><fmt:formatNumber type="number" value="${lendProductConfigVo.productService}" pattern="0.00000000" maxFractionDigits="8"/>%</td>--%>
					<%-- /${lendProductConfigVo.interestUnit} --%>
					<%--<td class="label">利率:</td>--%>
					<%--<td class="content"><fmt:formatNumber type="number" value="${lendProductConfigVo.interest}" pattern="0.00000000" maxFractionDigits="8"/>%</td>--%>
					<%--&lt;%&ndash; /${lendProductConfigVo.interestUnit} &ndash;%&gt;--%>
					<%--<td class="label">以房服务费率:</td>--%>
					<%--<td class="content"><fmt:formatNumber type="number" value="${lendSearchVo.yifangFeeRate}" pattern="0.00000000" maxFractionDigits="8"/>%</td>--%>
				</tr>
				<tr>
					<td class="label">合同编号:</td>
					<td class="content">${lendSearchVo.contractCode}</td>
					<td class="label">提现金额:</td>
					<td class="content">${lendSearchVo.withdrawApplyMoney}</td>
					<td class="label">服务费:</td>
					<td class="content">${lendSearchVo.serviceFee}</td>
					<td class="label">总手续费:</td>
					<td class="content">${lendSearchVo.toalTermFee}</td>

					<%--<td class="label">合同本金:</td>--%>
					<%--<td class="content">${lendSearchVo.contractMoney}</td>--%>

					<%--<td class="label">服务费:</td>--%>
					<%--<td class="content">${lendSearchVo.serviceFee}</td>--%>
					<%--<td class="label">服务费率:</td>--%>
					<%--<td class="content"><fmt:formatNumber type="number" value="${lendProductConfigVo.productService}" pattern="0.00000000" maxFractionDigits="8"/>%</td>--%>
					<%--<!-- 				<td class="label">实际放款时间:</td> -->--%>
					<%--&lt;%&ndash; 				<td class="content"><fmt:formatDate value="${lendSearchVo.lendSubmitTime}" pattern="yyyy-MM-dd"/></td> &ndash;%&gt;--%>
					<%--<td class="label">固金所服务费:</td>--%>
					<%--<td class="content">${lendSearchVo.gjsFee}</td>--%>
					<%--<td class="label">以房服务费:</td>--%>
					<%--<td class="content">${lendSearchVo.yifangFee}</td>--%>
				</tr>
                <tr>
					<td class="label">企业名称: </td>
					<td class="content">${lendSearchVo.enterpriseName}</td>
				</tr>
				<tr>
					<td class="label">证件号码:</td>
					<td class="content">${lendSearchVo.organizationCode}</td>
				</tr>
			</c:if>
			<c:if test="${lendSearchVo.channelCode!='210001'}">
				<tr>
					<td class="label">客户姓名:</td>
					<td class="content">${lendSearchVo.clientName}</td>
					<td class="label">产品大类:</td>
					<td class="content">${lendProductConfigVo.productMaxName}</td>
					<td class="label">申请期数:</td>
					<td class="content">${lendProductConfigVo.loanPeriod}</td>
					<td class="label">借款利率:</td>
					<td class="content">${lendProductConfigVo.interest}%</td>
					<td class="label">申请提现时间:</td>
					<td class="content"><fmt:formatDate
							value="${lendSearchVo.lendSubmitTime}" pattern="yyyy-MM-dd" /></td>

				</tr>
				<tr>
					<td class="label">手机号码:</td>
					<td class="content">${lendSearchVo.mobilePhone}</td>
					<td class="label">产品小类:</td>
					<td class="content">${lendProductConfigVo.productSubName}</td>
					<td class="label">合同本金:</td>
					<td class="content">${lendSearchVo.contractMoney}</td>
					<td class="label">总利息:</td>
					<td class="content grossInterest" id="grossInterest">${lendSearchVo.contractMoney * lendProductConfigVo.interest *  lendProductConfigVo.loanPeriod / 100} </td>
					<td class="label">实际放款时间:</td>
					<td class="content"><fmt:formatDate
							value="${lendSearchVo.lendSubmitTime}" pattern="yyyy-MM-dd" /></td>

				</tr>
				<tr>
					<td class="label">身份证号:</td>
					<td class="content">${lendSearchVo.cardNo}</td>
					<td class="label">放款对象:</td>
					<td class="content"><bizoptionname:showname biztypekey="2122"
																value="${lendSearchVo.loanObject}" /></td>
					<td class="label">服务费率:</td>
					<td class="content"><fmt:formatNumber type="number" value="${lendProductConfigVo.productService}" pattern="0.00000000" maxFractionDigits="8"/>%</td>
					<td class="label">每期手续费率:</td>
					<td class="content"><fmt:formatNumber type="number" value="${lendSearchVo.termFee}" pattern="0.00000" maxFractionDigits="10" />%</td>
					<td class="label"></td>
					<td class="content"></td>

				</tr>
				<tr>
					<td class="label">合同编号:</td>
					<td class="content">${lendSearchVo.contractCode}</td>
					<td class="label">提现金额:</td>
					<td class="content">${lendSearchVo.withdrawApplyMoney}</td>
					<td class="label">服务费:</td>
					<td class="content">${lendSearchVo.serviceFee}</td>
					<td class="label">总手续费:</td>
					<td class="content">${lendSearchVo.toalTermFee}</td>
				</tr>















				<%--<tr>--%>
					<%--<td class="label">客户姓名:</td>--%>
					<%--<td class="content">${lendSearchVo.clientName}</td>--%>

					<%--<td class="label">手机:</td>--%>
					<%--<td class="content">${lendSearchVo.mobilePhone}</td>--%>
					<%--<td class="label">身份证:</td>--%>
					<%--<td class="content">${lendSearchVo.cardNo}</td>--%>
					<%--<td class="label">放款对象:</td>--%>
					<%--<td class="content"><bizoptionname:showname biztypekey="2122"--%>
							<%--value="${lendSearchVo.loanObject}" /></td>--%>
				<%--</tr>--%>
				<%--<tr>--%>
					<%--<td class="label">合同编号:</td>--%>
					<%--<td class="content">${lendSearchVo.contractCode}</td>--%>
					<%--<td class="label">提现金额:</td>--%>
					<%--<td class="content">${lendSearchVo.withdrawApplyMoney}</td>--%>
					<%--<td class="label">申请期限:</td>--%>
					<%--<td class="content">${lendProductConfigVo.loanPeriod}${lendProductConfigVo.interestUnitName}</td>--%>
					<%--&lt;%&ndash; ${lendProductConfigVo.interestUnitName} &ndash;%&gt;--%>
					<%--<td class="label">申请提现时间:</td>--%>
					<%--<td class="content"><fmt:formatDate--%>
							<%--value="${lendSearchVo.lendingTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>--%>

				<%--</tr>--%>
				<%--<tr>--%>
					<%--<td class="label">产品大类:</td>--%>
					<%--<td class="content">${lendProductConfigVo.productMaxName}</td>--%>
					<%--<td class="label">产品小类:</td>--%>
					<%--<td class="content">${lendProductConfigVo.productSubName}</td>--%>
					<%--<td class="label" >总利息:</td>--%>
                    <%--<td class="content grossInterest">${lendSearchVo.contractMoney * lendProductConfigVo.interest *  lendProductConfigVo.loanPeriod / 100}</td>--%>
					<%--&lt;%&ndash; /${lendProductConfigVo.interestUnit} &ndash;%&gt;--%>
					<%--<td class="label">利率:</td>--%>
					<%--<td class="content">${lendProductConfigVo.interest}%</td>--%>
					<%--&lt;%&ndash; /${lendProductConfigVo.interestUnit} &ndash;%&gt;--%>
				<%--</tr>--%>
				<%--<tr>--%>
					<%--<td class="label">合同本金:</td>--%>
					<%--<td class="content">${lendSearchVo.contractMoney}</td>--%>
					<%--<td class="label">服务费:</td>--%>
					<%--<td class="content">${lendSearchVo.serviceFee}</td>--%>
					<%--<td class="label">服务费率:</td>--%>
					<%--<td class="content">${lendProductConfigVo.productService}/${lendProductConfigVo.interestUnitName}</td>--%>
					<%--<td class="label">总手续费:</td>--%>
					<%--<td class="content">${lendSearchVo.toalTermFee}</td>--%>

					<%--<td class="label">实际放款时间:</td>--%>
					<%--<td class="content"><fmt:formatDate--%>
							<%--value="${lendSearchVo.lendSubmitTime}" pattern="yyyy-MM-dd" /></td>--%>
				<%--</tr>--%>
			</c:if>

		</table>
	</div>
	<br />
	<div class="contractDv htxx w1000" title="收款卡信息">
		<table class="contractTable">
			<tr>
				<td class="label">户名:</td>
				<td class="content">${reBank.name}</td>
				<td class="label">开户行:</td>
				<td class="content">${reBank.bankBranch}</td>
				<td class="label">卡号:</td>
				<td class="content">${reBank.bankNo}</td>
			</tr>
		</table>
	</div>
	<br />
	<div class="contractDv htxx w1000" title="还款卡信息">
		<table class="contractTable">
			<tr>
				<td class="label">户名:</td>
				<td class="content">${bank.name}</td>
				<td class="label">开户行:</td>
				<td class="content">${bank.bankName}</td>
				<td class="label">卡号:</td>
				<td class="content">${bank.bankNo}</td>
			</tr>
		</table>
	</div>

	<c:if test="${lendSearchVo.channelCode!='210001'}">
		<c:if test="${lendStatus  != 118801}">
			<div>
				<h3>放款批次</h3>
				<table class="textalignCenter tabcustom " cellpadding="0"
					cellspacing="0" width="100%" style="margin-top: 20px;">
					<tr>
						<th>放款金额</th>
						<th>生成时间</th>
						<th>更新时间</th>
						<th>状态</th>
						<th>充值时间</th>
						<th>操作</th>
					</tr>
					<c:forEach items="${LoanProgramList}" var="loan">
						<tr>
							<td class="contentview"> <fmt:formatNumber type="number" value="${loan.singleMoney }" pattern="0.00" maxFractionDigits="2"/></td>
							<td class="contentview"><fmt:formatDate
									value="${loan.createDate }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
							<td class="contentview"><fmt:formatDate
									value="${loan.updateDate }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
							<td class="contentview"><bizoptionname:showname
									biztypekey="1208" value="${loan.state}" /></td>
							<td class="contentview"><fmt:formatDate
									value="${loan.rechargeTime }" pattern="yyyy-MM-dd HH:mm:ss" />
							</td>
							<td class="contentview"><c:if test="${loan.state == 120800}">
									<%--<button style="margin-right:50px;" lendPlanId="${loan.id}" id="loan" type="button">放款</button>--%>
									<button style="margin-right: 50px;" lendPlanId="${loan.id}"
										id="loan" onclick='fangkuan_pay("${loan.id}");' type="button">确认放款</button>
								</c:if> <c:if test="${loan.state == 120803}">
									<%--<button style="margin-right:50px;"  onclick='fangkuan_pay("${loan.id}");' type="button">放款</button>--%>
									<a href='javascript:;' onclick='fangkuan_pay("${loan.id}");'>确认放款</a>
								</c:if> <span></span></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</c:if>
	</c:if>

	<div >
		<h3>还款计划</h3>
		<table class="textalignCenter tabcustom" cellpadding="0"
			cellspacing="0" width="100%" style="margin-top: 20px;">
			<tr>
				<th>当前期数</th>
				<th>应还日期</th>
				<th>应收本金</th>
				<th>应还利息</th>
				<th>应还每期手续费</th>
				<th>应还本息和</th>
			</tr>
			<c:set var="sumPrincipal" value="0" />
			<c:set var="sumInterest" value="0" />
			<c:set var="sumPrincipalInterest" value="0" />
			<c:set var="sumTermFee" value="0" />
			<c:forEach items="${ listRepayPlanVoList}" var="vo">

				<tr>
					<c:if test="${cnt==1}">
						<td style="display: none"><input id="clientId"
							value="${clientId }" /> <input id="lendApplyId"
							value="${lendApplyId }" /> <input id="lendStatusCode"
							value="${lendStatus}" /></td>
					</c:if>
					<td class="contentview">${vo.serials }</td>
					<td class="contentview"><fmt:formatDate
							value="${vo.repayDate }" pattern="yyyy-MM-dd" /></td>
					<td class="contentview"><fmt:formatNumber type="number" value="${vo.principalRepay }" pattern="0.00" maxFractionDigits="2"/></td>
					<td class="contentview"><fmt:formatNumber type="number" value="${vo.interestRepay }" pattern="0.00" maxFractionDigits="2"/></td>
					<td class="contentview"><fmt:formatNumber type="number" value="${vo.termFeeAmount }" pattern="0.00" maxFractionDigits="2"/></td>
					<td class="contentview"><fmt:formatNumber type="number" value="${vo.principalInterest }" pattern="0.00" maxFractionDigits="2"/></td>
				</tr>
				<c:set var="sumPrincipal" value="${sumPrincipal+vo.principalRepay}" />
				<c:set var="sumInterest" value="${sumInterest+vo.interestRepay}" />
				<c:set var="sumTermFee" value="${sumTermFee+vo.termFeeAmount}" />
				<c:set var="sumPrincipalInterest" value="${sumPrincipalInterest+vo.principalInterest}" />
			</c:forEach>
			<tr>
				<td class="contentview">总计：</td>
				<td class="contentview"></td>
				<td class="contentview"><fmt:formatNumber type="number" value="${sumPrincipal}" pattern="0.00" maxFractionDigits="2"/></td>
				<td class="contentview"><fmt:formatNumber type="number" value="${sumInterest}" pattern="0.00" maxFractionDigits="2"/></td>
				<td class="contentview"><fmt:formatNumber type="number" value="${sumTermFee}" pattern="0.00" maxFractionDigits="2"/></td>
				<td class="contentview"><fmt:formatNumber type="number" value="${sumPrincipalInterest}" pattern="0.00" maxFractionDigits="2"/></td>
			</tr>
		</table>

		<div style="margin-top: 30px; text-align: right;">
			<c:if
				test="${lendSearchVo.lendStatus  == 118801 and lendSearchVo.channelCode!='210001'}">
				<button style="margin-right: 50px;" type="button"
					id="createLendPlan">生成放款批次</button>
			</c:if>
		</div>
	</div>

	<!-- 放款资金来源比例    弹出框 -->
	<div id="dialog-chgrole"></div>

</body>
</html>
