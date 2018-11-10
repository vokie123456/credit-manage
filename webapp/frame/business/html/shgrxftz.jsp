<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<p class="mrtb10">
	
</p>
<table class="table-text-left tabcustomPeo" cellpadding="0" cellspacing="0" style="margin-bottom: 20px;">
	<tbody>
		<tr>
			<td style="width: 25%;" class="BgColor">卡号</td>
			<td style="width: 25%;">${zhongCXPersonInfo.bankNo }</td>
			<td style="width: 25%;" class="BgColor">卡类型</td>
			<td style="width: 25%;">${zhongCXPersonInfo.level }</td>
		</tr>
		<tr>
			<td class="BgColor">卡性质</td>
			<td>${zhongCXPersonInfo.attribute }</td>
			<td class="BgColor">过去3个月银联消费笔数</td>
			<td>${zhongCXPersonInfo.consumerNumThrMon }</td>
		</tr>
		<tr>
			<td class="BgColor">过去12个月银联消费笔数</td>
			<td>${zhongCXPersonInfo.consumerNumTweMon }</td>
			<td class="BgColor">过去3个月银联消费金额</td>
			<td>${zhongCXPersonInfo.consumerAmtThrMon}</td>
		</tr>
		<tr>
			<td class="BgColor">过去12个月银联消费金额</td>
			<td>${zhongCXPersonInfo.consumAmtTweMon}</td>
			<td class="BgColor">过去12个月有交易的月数</td>
			<td>${zhongCXPersonInfo.consumerNumTransTweMon}</td>
		</tr>
		<tr>
			<td class="BgColor">年交易金额同城排名</td>
			<td>${zhongCXPersonInfo.rankTransAmtTweMon}</td>
			<td class="BgColor">年交易笔数同城排名</td>
			<td>${zhongCXPersonInfo.rankTransCountTweMon}</td>
		</tr>
	</tbody>
</table>
<div class="tit-detail-right" style="margin-top:30px;">
	个人消费特征
	<p class="seach-p">
		<!-- 报告编号:
		<select>
			<option selected="" value="2015030902000173496480">2015030902000173496480</option>
			<option value="2015010105678173496480">2015010105678173496480</option>
			<option value="2014112404500445666480">2014112404500445666480</option>
		</select> -->
		<c:if test="${type == 2 }">
			<button id="shgr_btn">获取</button>
		</c:if>
	</p>
</div>

<div id="shgr_table">
	<table class="table-text-left tabcustomPeo" cellpadding="0" cellspacing="0">
		<c:forEach items="${suanHuaConsumerVolists }" var="suanHuaConsumerVos">
			<tbody>
				<tr>
					<td style="width: 25%;" class="BgColor">卡号</td>
					<td style="width: 25%;">${suanHuaConsumerVos.cardNum}</td>
					<td style="width: 25%;" class="BgColor">卡类型</td>
					<td style="width: 25%;">
						<c:choose>
						    <c:when test="${suanHuaConsumerVos.cardType eq 1}">
						                          借记卡
						    </c:when>
						    <c:when test="${suanHuaConsumerVos.cardType eq 2}">
					       		贷记卡
						    </c:when>
						    <c:when test="${suanHuaConsumerVos.cardType eq 3}">
					       		预付费卡
						    </c:when>
						    <c:when test="${suanHuaConsumerVos.cardType eq 4}">
						                          准贷记卡
						    </c:when>
						    <c:otherwise>
						     	
						    </c:otherwise>
						</c:choose>
					</td>
				</tr>
				<tr>
					<td class="BgColor">姓名</td>
					<td>${suanHuaConsumerVos.name}</td>
					<td class="BgColor">过去六个月交易金额合计</td>
					<td>${suanHuaConsumerVos.transAmtLasixMon}</td>
				</tr>
				<tr>
					<td class="BgColor">过去六个月交易金额稳定性</td>
					<td>${suanHuaConsumerVos.transStable}</td>
					<td class="BgColor">近6月最大交易金额</td>
					<td>${suanHuaConsumerVos.transMaxamtLasixMon}</td>
				</tr>
				<tr>
					<td class="BgColor">近6月笔均交易金额</td>
					<td>${suanHuaConsumerVos.transAvgamtLasixMon}</td>
					<td class="BgColor">近6月交易笔数</td>
					<td>${suanHuaConsumerVos.transTimeLasixMon}</td>
				</tr>
				<tr>
					<td class="BgColor">近6月常用地区</td>
					<td>${suanHuaConsumerVos.transLoc}</td>
					<td class="BgColor">近6月发生交易月份数</td>
					<td>${suanHuaConsumerVos.transCountLasixMon}</td>
				</tr>
				<tr>
					<td class="BgColor">近6月发生交易的MCC种类数</td>
					<td>${suanHuaConsumerVos.transMccLasixMon}</td>
					<td class="BgColor">近12月跨境交易金额</td>
					<td>${suanHuaConsumerVos.transCrossAmt}</td>
				</tr>
				<tr>
					<td class="BgColor">近12月取现交易金额</td>
					<td>${suanHuaConsumerVos.drawAmtLatweMon}</td>
					<td class="BgColor">近12月转入交易金额</td>
					<td>${suanHuaConsumerVos.transIncomeAmt}</td>
				</tr>
				<tr>
					<td class="BgColor">近12月转出交易金额</td>
					<td><%-- ${suanHuaConsumerVos.drawAmtLatweMon} --%></td>
					<td class="BgColor"></td>
					<td></td>
				</tr>
			</tbody>
		</c:forEach>
		<tfoot>
			<tr>
				<td colspan="4">算话单次收费3元，建议存在多张银行卡时才进行调用</td>
			</tr>
		</tfoot>
	</table>
</div>

<script>
	$(function(){
		$("#shgr_btn").click(function(){
			
			var clientId = $('#client_id').val();
			//alert(clientId);
			
			 $j.ajax({
			    url:$j("body").attr("contextpath")+"/credit/suanhua/consumer.do?clientId="+clientId,    //请求的url地址
			    dataType:"json",   //返回格式为json
			    async:false,//请求是否异步，默认为异步，这也是ajax重要特性
			    type:"GET",   //请求方式
			    beforeSend:function(){
			        //请求前的处理
			    	
			    },
			    success:function(req){
			        //请求成功时处理
			    	json = req.suanHuaConsumerVolist;
			    	var str= "" ;
			    	var cartType="";
			    	for( var i = 0; i<json.length;i++){
			    		if(json[i].cardType == 1){
			    			cartType="借记卡";
			    		}if(json[i].cardType == 2){
			    			cartType="贷记卡";
			    		}if(json[i].cardType == 3){
			    			cartType="预付费卡";
			    		}if(json[i].cardType == 4){
			    			cartType=" 准贷记卡";
			    		}
			    		str+='<table class="table-text-left tabcustomPeo" id="shgr_table" cellpadding="0" cellspacing="0">'
			    			+'<tbody>'
			    			+'<tr>'
			    			+'<td style="width: 25%;" class="BgColor">卡号</td>'
			    			+'<td style="width: 25%;">'+json[i].cardNum+'</td>'
			    			+'<td style="width: 25%;" class="BgColor">卡类型</td>'
			    			+'<td style="width: 25%;">'+cartType+'</td>'
			    			+'</tr>'
			    			+'<tr>'
			    			+'<td style="width: 25%;" class="BgColor">姓名</td>'
			    			+'<td style="width: 25%;">'+json[i].name+'</td>'
			    			+'<td style="width: 25%;" class="BgColor">过去六个月交易金额合计</td>'
			    			+'<td style="width: 25%;">'+json[i].transAmtLasixMon+'</td>'
			    			+'</tr>'
			    			+'<tr>'
			    			+'<td style="width: 25%;" class="BgColor">过去六个月交易金额稳定性</td>'
			    			+'<td style="width: 25%;">'+json[i].transStable+'</td>'
			    			+'<td style="width: 25%;" class="BgColor">近6月最大交易金额</td>'
			    			+'<td style="width: 25%;">'+json[i].transMaxamtLasixMon+'</td>'
			    			+'</tr>'
			    			+'<tr>'
			    			+'<td style="width: 25%;" class="BgColor">近6月笔均交易金额</td>'
			    			+'<td style="width: 25%;">'+json[i].transAvgamtLasixMon+'</td>'
			    			+'<td style="width: 25%;" class="BgColor">近6月交易笔数</td>'
			    			+'<td style="width: 25%;">'+json[i].transTimeLasixMon+'</td>'
			    			+'</tr>'
			    			+'<tr>'
			    			+'<td style="width: 25%;" class="BgColor">近6月常用地区</td>'
			    			+'<td style="width: 25%;">'+json[i].transLoc+'</td>'
			    			+'<td style="width: 25%;" class="BgColor">近6月发生交易月份数</td>'
			    			+'<td style="width: 25%;">'+json[i].transCountLasixMon+'</td>'
			    			+'</tr>'
			    			+'<tr>'
			    			+'<td style="width: 25%;" class="BgColor">近6月发生交易的MCC种类数</td>'
			    			+'<td style="width: 25%;">'+json[i].transMccLasixMon+'</td>'
			    			+'<td style="width: 25%;" class="BgColor">近12月跨境交易金额</td>'
			    			+'<td style="width: 25%;">'+json[i].transCrossAmt+'</td>'
			    			+'</tr>'
			    			+'<tr>'
			    			+'<td style="width: 25%;" class="BgColor">近12月取现交易金额</td>'
			    			+'<td style="width: 25%;">'+json[i].drawAmtLatweMon+'</td>'
			    			+'<td style="width: 25%;" class="BgColor">近12月转入交易金额</td>'
			    			+'<td style="width: 25%;">'+json[i].transIncomeAmt+'</td>'
			    			+'</tr>'
			    			+'<tr>'
			    			+'<td style="width: 25%;" class="BgColor">近12月转出交易金额</td>'
			    			+'<td style="width: 25%;">'+json[i].drawAmtLatweMon+'</td>'
			    			+'<td style="width: 25%;" class="BgColor"></td>'
			    			+'<td style="width: 25%;"></td>'
			    			+'</tr>'
			    			+'</tbody></table>';
			    	}
			    	str+="<p>算话单次收费3元，建议存在多张银行卡时才进行调用</p>";
			    	$('#shgr_table').html(str);			
			    },
			    complete:function(){
			        //请求完成的处理
			    },
			    error:function(){
			        //请求出错处理
			    }
			}); 
		});
	})
</script>