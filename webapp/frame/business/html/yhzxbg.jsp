<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@ taglib uri="/WEB-INF/Linkage.tld" prefix="linkage" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<p class="mrtb10">
	<span>报告编号：${creditPbccrcBasicInfo.reportSn}</span>
	<span>报告时间：${creditPbccrcBasicInfo.reportTime }</span>
	<span>查询时间：${creditPbccrcBasicInfo.queryTime }</span>
</p>
<div class="single-table-dv">
	<p class="sin-tit f-col-99">
		<span>逾期情况</span>
	</p>
	<div class="padTop">
		<table class="table-text-left tabcustomPeo" cellpadding="0" cellspacing="0">
			<thead>
				<tr class="f-col-99">
					<td style="width:35%">信用卡</td>
					<td class="w85"></td>
					<td style="width:35%"></td>
					<td class="w85"></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="BgColor">当前逾期卡所属机构数</td>
					<td>${creditPbccrcOverdueInfo.creditOrgCounts}</td>
					<td class="BgColor">当前逾期总金额</td>
					<td>${creditPbccrcOverdueInfo.creditAmts}</td>
				</tr>
				<tr>
					<td class="BgColor">当前逾期卡所属机构数<br>(逾期金额>200元/卡)</td>
					<td>${creditPbccrcOverdueInfo.creditOrgCountsTwohun}</td>
					<td class="BgColor">当前逾期总金额<br>(逾期金额>200元/卡)</td>
					<td>${creditPbccrcOverdueInfo.creditAmtsTwohun}</td>
				</tr>
				<tr>
					<td class="BgColor">信用卡近60个月逾期月数</td>
					<td>${creditPbccrcOverdueInfo.creditCountsMone}</td>
					<td class="BgColor">信用卡近60个月逾期90天以上月数</td>
					<td>${creditPbccrcOverdueInfo.creditCountsMtwo}</td>
				</tr>
			</tbody>
			<thead>
				<tr class="f-col-99">
					<td>贷款</td>
					<td class="w85"></td>
					<td></td>
					<td class="w85"></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="BgColor">当前逾期笔数</td>
					<td>${creditPbccrcOverdueInfo.loanCounts}</td>
					<td class="BgColor">当前逾期总金额</td>
					<td>${creditPbccrcOverdueInfo.loanAmts}</td>
				</tr>
				<tr>
					<td class="BgColor">贷款近60个月逾期月数</td>
					<td>${creditPbccrcOverdueInfo.loanCountsMone}</td>
					<td class="BgColor">贷款近60个月逾期90天以上逾期月数</td>
					<td>${creditPbccrcOverdueInfo.loanCountsMtwo}</td>
				</tr>
			</tbody>
			<thead>
				<tr class="f-col-99">
					<td>汇总</td>
					<td class="w85"></td>
					<td></td>
					<td class="w85"></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="BgColor">近60个月逾期月数</td>
					<td>${creditPbccrcOverdueInfo.countsMone}</td>
					<td class="BgColor">近60个月逾期90天以上逾期月数</td>
					<td>${creditPbccrcOverdueInfo.countsMtwo}</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>

<div class="single-table-dv">
	<p class="sin-tit f-col-99">
		<span>负债情况</span>
	</p>
	<div class="padTop">
		<table class="table-text-left tabcustomPeo" cellpadding="0" cellspacing="0">
			<thead>
				<tr class="f-col-99">
					<td style="width:35%">信用卡</td>
					<td class="w85"></td>
					<td style="width:35%"></td>
					<td class="w85"></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="BgColor">单卡最大信用额度</td>
					<td>${creditPbccrcDebtInfo.creditLimitMax}</td>
					<td class="BgColor">信用卡限额总额度</td>
					<td>${creditPbccrcDebtInfo.creditLimitTotal}</td>
				</tr>
				<tr>
					<td class="BgColor">卡数/机构数</td>
					<td>${creditPbccrcDebtInfo.creditOrgCounts}</td>
					<td class="BgColor">当前已使用信用额度合计</td>
					<td>${creditPbccrcDebtInfo.creditLimitUsed}</td>
				</tr>
				<tr>
					<td class="BgColor">当前总信用额度使用率</td>
					<td colspan="3">
						<c:if test="${creditPbccrcDebtInfo.creditLimitUseRate != null && creditPbccrcDebtInfo.creditLimitUseRate != '' }">
							${creditPbccrcDebtInfo.creditLimitUseRate}
						</c:if>
					</td>
				</tr>
			</tbody>
			<thead>
				<tr class="f-col-99">
					<td>贷款</td>
					<td class="w85"></td>
					<td></td>
					<td class="w85"></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="BgColor">贷款总余额</td>
					<td>${creditPbccrcDebtInfo.loanBalances}</td>
					<td class="BgColor">贷款总笔数</td>
					<td>${creditPbccrcDebtInfo.loanCounts}</td>
				</tr>
				<tr>
					<td class="BgColor">房贷总余额</td>
					<td>${creditPbccrcDebtInfo.loanBalancesMortgage}</td>
					<td class="BgColor">车贷总余额</td>
					<td>${creditPbccrcDebtInfo.loanBalancesCar}</td>
				</tr>
				<tr>
					<td class="BgColor">经营贷总余额</td>
					<td>${creditPbccrcDebtInfo.loanBalancesBiz}</td>
					<td class="BgColor">其他贷款总余额</td>
					<td>${creditPbccrcDebtInfo.loanBalancesOther}</td>
				</tr>
				<tr>
					<td class="BgColor">未结清贷款总笔数</td>
					<td>${creditPbccrcDebtInfo.loanBalanceCounts}</td>
					<td class="BgColor">未结清贷款总额</td>
					<td>${creditPbccrcDebtInfo.loanAmtsNoSettle}</td>
				</tr>
			</tbody>
			<thead>
				<tr class="f-col-99">
					<td>贷款余额信息详列</td>
					<td class="w85"></td>
					<td></td>
					<td class="w85"></td>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${creditPbccrcLoanAndOrgInfoList}" var="vo" varStatus="i">
				<tr>
					<td>${vo.org}</td>
					<td>住房贷款额：${vo.amts}元</td>
					<td>贷款余额：${vo.balance}元</td>
					<td>未偿月数：${vo.debtMonths}月</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</div>



<!-- <div class="single-table-dv">
	<p class="sin-tit f-col-99">
		<span>负债情况</span>
	</p>
	<div class="padTop">
		<table class="table-text-left tabcustomPeo" cellpadding="0" cellspacing="0">
			<thead>
				<tr class="f-col-99">
					<td>信贷历史</td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="BgColor">单卡最大信用额度</td>
					<td>88.88</td>
					<td class="BgColor">总信用额度</td>
					<td>88.88</td>
				</tr>
			</tbody>
		</table>
	</div>
</div> -->
<div class="single-table-dv">
	<p class="sin-tit f-col-99">
		<span>近期信用需求</span>
	</p>
	<div class="padTop">
		<table class="table-text-left tabcustomPeo" cellpadding="0" cellspacing="0">
			<tbody>
				<tr>
					<td class="BgColor" style="width:35%">近3个月内新发信用卡机构数</td>
					<td class="w85">${creditPbccrcBasicInfo.creditOrgCountsMthr }</td>
					<td class="BgColor" style="width:35%">近3个月新增信用卡信用总额度</td>
					<td class="w85">${creditPbccrcBasicInfo.creditLimitTotalMthr }</td>
				</tr>
				<tr>
					<td class="BgColor">近3个月内新核发贷款笔数</td>
					<td>${creditPbccrcBasicInfo.loanCountsMthr }</td>
					<td class="BgColor">近3个月内新核发贷款总金额</td>
					<td>${creditPbccrcBasicInfo.loanAmtsMthr }</td>
				</tr>
				<tr>
					<td class="BgColor">近3个月“贷款审批”查询次数</td>
					<td>${creditPbccrcBasicInfo.loanQueriesMthr }</td>
					<td class="BgColor">近3个月内“本人查询”次数</td>
					<td>${creditPbccrcBasicInfo.selfQueriesMthr }</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<div class="single-table-dv">
	<p class="sin-tit f-col-99">
		<span>其他信息</span>
	</p>
	<div class="padTop">
		<table class="table-text-left tabcustomPeo" cellpadding="0" cellspacing="0">
			<tbody>
				<tr>
					<td class="BgColor" style="width:35%">当前为他人担保笔数</td>
					<td class="w85">${creditPbccrcBasicInfo.guarantees }</td>
					<td class="BgColor" style="width:35%">当前为他人担保金额</td>
					<td class="w85">${creditPbccrcBasicInfo.guaranteeAmts }</td>
				</tr>
				<tr>
					<td class="BgColor">近6个月内欠税总额</td>
					<td>${creditPbccrcBasicInfo.monthSixTaxAmts }</td>
					<td></td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</div>
</div>