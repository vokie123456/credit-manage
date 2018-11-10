<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/Linkage.tld" prefix="linkage" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<table class="table-text-left tabcustomPeo" cellpadding="0" cellspacing="0" style="margin-bottom: 20px;">
	
	<tbody>
		<tr>
			<td style="width: 25%;" class="BgColor">姓名</td>
			<td style="width: 25%;" id="Gjjname">${accumulationFund.name }</td>
			<td style="width: 25%;" class="BgColor">开户日期</td>
			<td style="width: 25%;" id="accountTime">
			${accumulationFund.openDate }
			</td>
		</tr>
		<tr>
			<td class="BgColor">公积金账号</td>
			<td id="GjjNumber">${accumulationFund.accountNo }</td>
			<td class="BgColor">所属地区</td>
			<td id="address">${accumulationFund.city }</td>
		</tr>
		
		<tr>
			<td class="BgColor">所属单位</td>
			<td id="unit">${accumulationFund.companyName }</td>
			<td class="BgColor">账户余额</td>
			<td id="accountBalance">${accumulationFund.balance }</td>
		</tr>
		<tr>
			<td class="BgColor">月缴存额</td>
			<td id="monthBalance">${accumulationFund.payAmtMonthly }</td>
			<td class="BgColor">末次缴存年月</td>
			<td id="lastMonth">
				${accumulationFund.lastPayDate}
			</td>
		</tr>
		<tr>
			<td class="BgColor">账户状态</td>
			<td id="accountStatus">${accumulationFund.status }</td>
			<td class="BgColor">本年支取</td>
			<td id="yearDraw">${accumulationFund.thisYearWithdraw }</td>
		</tr>
		<tr>
			<td class="BgColor">是否有贷款信息</td>
			<td id="whetherCredit">${accumulationFund.hasLoan }</td>
			<td class="BgColor">贷款账号</td>
			<td id="creditNumber">${accumulationFund.loanAccountNo }</td>
		</tr>
		<tr>
			<td class="BgColor">贷款账号贷款账户状态</td>
			<td id="creditStatus">${accumulationFund.loanStatus }</td>
			<td class="BgColor">贷款开户日期</td>
			<td id="creditTime">
					${accumulationFund.loanOpenDate }
			</td>
		</tr>
		<tr>
			<td class="BgColor">贷款期限</td>
			<td id="creditTerm">${accumulationFund.loanDuration }</td>
			<td class="BgColor">贷款总额</td>
			<td id="creditRental">${accumulationFund.loanTotalAmt }</td>
		</tr>
		<tr>
			<td class="BgColor">贷款余额</td>
			<td id="creditBalance">${accumulationFund.loanLeftAmt }</td>
			<td class="BgColor">还款方式</td>
			<td id="repayment">${accumulationFund.repayType }</td>
		</tr>
		<tr>
			<td class="BgColor">末次还款年月</td>
			<td colspan="3" id="lastRepayMent">
				${accumulationFund.lastRepayDate}
			</td>
			
		</tr>
	</tbody>
</table>
<script>
	/* $(function(){
		$.ajax({
			url:'',
			type:'post',
			data:{},
			dataType:'json',
			success:function(data){
				if(data.code == '1'){
					$('#Gjjname').text(data.Gjjname);						//姓名
					$('#accountTime').text(data.accountTime);				//开户日期
					$('#GjjNumber').text(data.GjjNumber);					//公积金账号
					$('#address').text(data.address);						//所属地区
					$('#unit').text(data.unit);								//所属单位
					$('#accountBalance').text(data.accountBalance);			//账户余额
					$('#monthBalance').text(data.monthBalance);				//月缴存额
					$('#lastMonth').text(data.lastMonth);					//末次缴存年月
					$('#accountStatus').text(data.accountStatus);			//账户状态
					$('#yearDraw').text(data.yearDraw);						//本年支取
					$('#whetherCredit').text(data.whetherCredit);			//是否有贷款信息
					$('#creditNumber').text(data.creditNumber);				//贷款账号
					$('#creditStatus').text(data.creditStatus);				//贷款账号贷款账户状态
					$('#creditTime').text(data.creditTime);					//贷款开户日期
					$('#creditTerm').text(data.creditTerm);					//贷款期限
					$('#creditRental').text(data.creditRental);				//贷款总额
					$('#creditBalance').text(data.creditBalance);			//贷款余额
					$('#repayment').text(data.repayment);					//还款方式
					$('#lastRepayMent').text(data.lastRepayMent);			//末次还款年月
				}else{
					alert("请求失败");
				}
			}
		});
	}) */
</script>