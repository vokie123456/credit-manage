<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title></title>
</head>
<body>
	<script type="text/javascript">
	 var Json_news;
	 $(function(){
		 $j.ajax({
		    url:$j("body").attr("contextpath")+"/credit/bank/queryAll.do",    //请求的url地址
		    dataType:"json",   //返回格式为json
		    async:false,//请求是否异步，默认为异步，这也是ajax重要特性
		   	data:{"clientId":$("#client_id").val()},    //参数值
		    type:"GET",   //请求方式
		    beforeSend:function(){
		        //请求前的处理
		    },
		    success:function(req){
		        //请求成功时处理
		        var reqs = eval(req);
		    	Json_news = req;
		    	var str_sel = "<select onchange='select_change(this)'>";
				for(var i = 0; i<Json_news.length; i++){
					str_sel += "<option value='"+reqs[i].reportinfo.reportSN+"'>"+reqs[i].reportinfo.reportSN+"</option>";
				}
				$("#yhzxbgNews0").after(str_sel+"</select>");
				

				yhzx_new(reqs[0]);
		    },
		    complete:function(){
		        //请求完成的处理
		    },
		    error:function(){
		        //请求出错处理
		    }
		});
			
	 })
	
	function yhzx_new(objOne){
		
		 $("#yhzxbgNews1").html(objOne.reportinfo.reporttime);
		 $("#yhzxbgNews2").html(objOne.reportinfo.querytime);
		 $("#yhzxbgNews3").html(objOne.personalinfo.name);
		 $("#yhzxbgNews4").html(objOne.personalinfo.IDtype);
		 $("#yhzxbgNews5").html(objOne.personalinfo.IDnumber);
		 $("#yhzxbgNews6").html(objOne.personalinfo.marital);
		 $("#yhzxbgNews7").html(objOne.creditRecord.info);
		 
		 
		 $("#yhzxbgNews8").find("td").eq(1).html(objOne.creditRecord.summary.creditCard.accountTotal);
		 $("#yhzxbgNews8").find("td").eq(2).html(objOne.creditRecord.summary.mortgage.accountTotal);
		 $("#yhzxbgNews8").find("td").eq(3).html(objOne.creditRecord.summary.otherLoan.accountTotal); 
		 
		 $("#yhzxbgNews9").find("td").eq(1).html(objOne.creditRecord.summary.creditCard.activeTotal);
		 $("#yhzxbgNews9").find("td").eq(2).html(objOne.creditRecord.summary.mortgage.activeTotal);
		 $("#yhzxbgNews9").find("td").eq(3).html(objOne.creditRecord.summary.otherLoan.activeTotal);
		 
		 $("#yhzxbgNews10").find("td").eq(1).html(objOne.creditRecord.summary.creditCard.overdueTotal);
		 $("#yhzxbgNews10").find("td").eq(2).html(objOne.creditRecord.summary.mortgage.overdueTotal);
		 $("#yhzxbgNews10").find("td").eq(3).html(objOne.creditRecord.summary.otherLoan.overdueTotal);
		 
		 
		 $("#yhzxbgNews11").find("td").eq(1).html(objOne.creditRecord.summary.creditCard.overdue90Total);
		 $("#yhzxbgNews11").find("td").eq(2).html(objOne.creditRecord.summary.mortgage.overdue90Total);
		 $("#yhzxbgNews11").find("td").eq(3).html(objOne.creditRecord.summary.otherLoan.overdue90Total);
		 
		 $("#yhzxbgNews12").find("td").eq(1).html(objOne.creditRecord.summary.creditCard.guarantee);
		 $("#yhzxbgNews12").find("td").eq(2).html(objOne.creditRecord.summary.mortgage.guarantee);
		 $("#yhzxbgNews12").find("td").eq(3).html(objOne.creditRecord.summary.otherLoan.guarantee);
		 
		 
		 var yhzx_yq ="";
		 for(var z = 0;z<objOne.creditRecord.detail.creditCard.overdueDetails.length;z++){
			 yhzx_yq+=(z+1)+"、"+objOne.creditRecord.detail.creditCard.overdueDetails[z]+"<br/>";
		 }
		 $("#yhzxbgNews30").html(yhzx_yq);
		 
		 var yh_no = "";
		 for(var z = 0;z<objOne.creditRecord.detail.creditCard.noOverdueDetails.length;z++){
			 yh_no+=(z+1)+"、"+objOne.creditRecord.detail.creditCard.noOverdueDetails[z]+"<br/>";
		 }
		 $("#yhzxbgNews13").html(yh_no);
		 
		 
		 var yhze_zff = "";
		 for(var z = 0;z<objOne.creditRecord.detail.mortgage.overdueDetails.length;z++){
			 yhze_zff+=(z+1)+"、"+objOne.creditRecord.detail.mortgage.overdueDetails[z]+"<br/>";
		 }
		 $("#yhzxbgNews40").html(yhze_zff);
		 
		 
		 var yhze_zfw = "";
		 for(var z = 0;z<objOne.creditRecord.detail.mortgage.noOverdueDetails.length;z++){
			 yhze_zfw+=(z+1)+"、"+objOne.creditRecord.detail.mortgage.noOverdueDetails[z]+"<br/>";
		 }
		 $("#yhzxbgNews41").html(yhze_zfw);
		 
		 
		 var yhze_qtf = "";
		 for(var z = 0;z<objOne.creditRecord.detail.otherLoan.overdueDetails.length;z++){
			 yhze_qtf+=(z+1)+"、"+objOne.creditRecord.detail.otherLoan.overdueDetails[z]+"<br/>";
		 }
		 $("#yhzxbgNews42").html(yhze_qtf);
		 
		 var yhze_qtw = "";
		 for(var z = 0;z<objOne.creditRecord.detail.otherLoan.noOverdueDetails.length;z++){
			 yhze_qtw+=(z+1)+"、"+objOne.creditRecord.detail.otherLoan.noOverdueDetails[z]+"<br/>";
		 }
		 $("#yhzxbgNews43").html(yhze_qtw);
		 
		 
		 
		 $("#yhzxbgNews14").html(objOne.publicRecord.intro);
		 
		 var yhzx_qs="";
		 for(var z=0;z <objOne.publicRecord.detail.tax.length;z++){
			 yhzx_qs+=(z+1)+"、"+ objOne.publicRecord.detail.tax[z]+"<br/>";
		 }
		 $("#yhzxbgNews45").html(yhzx_qs);
		 
		 
		 var yhzx_mspj="";
		 for(var z=0;z<objOne.publicRecord.detail.judgment.length;z++){
			 yhzx_mspj+=(z+1)+"、" +objOne.publicRecord.detail.judgment[z]+"<br/>";
		 }
		 $("#yhzxbgNews46").html(yhzx_mspj);
		 
		 var yhzx_qzzx="";
		 for(var z=0;z<objOne.publicRecord.detail.enforcement.length;z++){
			 yhzx_qzzx+= (z+1)+"、" +objOne.publicRecord.detail.enforcement[z]+"<br/>";
		 }
		 $("#yhzxbgNews47").html(yhzx_qzzx);
		 
		 var yhzx_xzcf="";
		 for(var z=0;z<objOne.publicRecord.detail.punishment.length;z++){
			 yhzx_xzcf +=(z+1)+"、" + objOne.publicRecord.detail.punishment[z]+"<br/>";			 
		 }
		 $("#yhzxbgNews48").html(yhzx_xzcf);
		 
		 var yhzx_dxqf="";
		 for(var z=0;z<objOne.publicRecord.detail.telecom.length;z++){
			 yhzx_dxqf += (z+1)+"、"+ objOne.publicRecord.detail.telecom[z]+"<br/>";
		 }
		 $("#yhzxbgNews49").html(yhzx_dxqf);
		 
		 
		 $("#yhzxbgNews50").html(objOne.publicRecord.summary.tax);
		 $("#yhzxbgNews51").html(objOne.publicRecord.summary.judgment);
		 $("#yhzxbgNews52").html(objOne.publicRecord.summary.enforcement);
		 $("#yhzxbgNews53").html(objOne.publicRecord.summary.punishment);
		 $("#yhzxbgNews54").html(objOne.publicRecord.summary.telecom);
		 
		 
		 $("#yhzxbgNews21").html("查询次数："+objOne.queryRecord.summary.organization);
		 $("#yhzxbgNews70").html("查询次数："+objOne.queryRecord.summary.individual);
		 
		  var yhzxbgNews15=$("#yhzxbgNews15").find("tbody"); 
		  var yh_new = "";
		  for(var j=0; j < objOne.queryRecord.detail.organization.length;j++   ){
			  yh_new += "<tr>"+
			  				"<td>"+(j+1)+"</td>"+
			  				"<td>"+objOne.queryRecord.detail.organization[j].date+"</td>"+
			  				"<td>"+objOne.queryRecord.detail.organization[j].operator+"</td>"+
			  				"<td>"+objOne.queryRecord.detail.organization[j].reason+"</td>"
			  			+"</tr>";  
		  }
		  yhzxbgNews15.html(yh_new);
		  
		  var yhzxbgNews16=$("#yhzxbgNews16").find("tbody");
		  var yh_str = "";
		
		  for(var i=0; i < objOne.queryRecord.detail.individual.length;i++   ){
			  yh_str += "<tr>"+
			  				"<td>"+(i+1)+"</td>"+
			  				"<td>"+objOne.queryRecord.detail.individual[i].date+"</td>"+
			  				"<td>"+objOne.queryRecord.detail.individual[i].operator+"</td>"+
			  				"<td>"+objOne.queryRecord.detail.individual[i].reason+"</td>"
			  			+"</tr>";  
		  }   
		  yhzxbgNews16.html(yh_str);
	
	 }
	 
 	 function select_change(obj){
		 var sel_id = $(obj).val();
		 for(var i = 0; i<Json_news.length; i++){
			if(Json_news[i].reportinfo.reportSN == sel_id){
				yhzx_new(Json_news[i]);
				return false;
			}
		 }
	 } 
	</script>
	



	<div class="tit-detail-right" style="margin-left:-1px;">
		新央行征信报告
		<p class="seach-p">
			<span id="yhzxbgNews0">报告编号:</span>
		</p>
	</div>
	<div class="yh-news-dv">
		<div class="yh-news-top-dv">
			<p class="mrtb10" style="margin-top: 0;">
				<span>报告时间：</span><span id="yhzxbgNews1"> </span>
				<span class="fl-r" style="margin-right: 60px;">查询时间：
					<span id="yhzxbgNews2"></span>
				</span>
			</p>
			<p class="mrtb10 clearfix">
				<span class="fl-l" style="display: inline-block; width: 20%;">姓名：	<span id="yhzxbgNews3"></span></span>
				<span class="fl-l" style="display: inline-block; width: 20%;">证件类型：<span id="yhzxbgNews4"></span></span>
				<span class="fl-l" style="display: inline-block; width: 35%;">证件号码：<span id="yhzxbgNews5"></span></span>
				<span class="fl-l" style="display: inline-block; width: 25%;">婚姻状况：<span id="yhzxbgNews6"></span></span>
			</p>
		</div>
		<div class="single-table-dv">
			<p class="yh-tit">
				信贷记录
			</p>
			<p class="co-d5" id="yhzxbgNews7">这部分包含您的信用卡、贷款和其他信贷记录。金额类数据均以人民币计算，精确到元</p>
			<p  id="yhzxbgNews20"> </p>
			<p class="yh-tit-bor">
				<span>信息概要</span>
			</p>
			<div class="" style="padding-top: 0; margin-bottom: 0;">
				<table cellspacing="0" cellpadding="0" class="tabcustomPeo yh-table-news">
					<thead>
						<tr class="f-col-99">
							<td style="width:35%"></td>
							<td class="w85">信用卡</td>
							<td style="width:35%">购房贷款</td>
							<td class="w85">其他贷款</td>
						</tr>
					</thead>
					<tbody>
						<tr id="yhzxbgNews8">
							<td class="BgColor">账户数</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr id="yhzxbgNews9" > 
							<td class="BgColor">未结清/未销户账户数</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr id="yhzxbgNews10">
							<td class="BgColor">发生过逾期的账户数</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr id="yhzxbgNews11">
							<td class="BgColor">发生过90天以上逾期的账户数</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr id="yhzxbgNews12">
							<td class="BgColor">为他人担保笔数</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="4">
								 <span style="font-weight:bold;">信用卡</span>
							
							
								<p>发生过逾期的贷记卡账户明细如下：</p>
								
								<div id="yhzxbgNews30">
								
								</div>
								<p>从未逾期过的贷记卡及透支未超过60天的准贷记卡账户明细如下：         </p>
								<div id="yhzxbgNews13">
									
								</div>
							</td>
						</tr>
						
						<tr>
							<td colspan="4">
								<span class="jl-text-tit">住房贷款</span>
							
							
								<p>发生过逾期的账户明细如下：</p>
								
								<div id="yhzxbgNews40">
								
								</div>
								<p>从未逾期过的账户明细如下：      </p>
								<div id="yhzxbgNews41">
									
								</div>
							</td>
						</tr>
						
						<tr>
							<td colspan="4">
								<span class="jl-text-tit">其他贷款</span>
							
							
								<p>发生过逾期的账户明细如下：</p>
								
								<div id="yhzxbgNews42">
								
								</div>
								<p>从未逾期过的账户明细如下：   </p>
								<div id="yhzxbgNews43">
									
								</div>
							</td>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
		<div class="single-table-dv">
			<p class="yh-tit">
				公共记录 
			</p>
			<p class="jl-text">
			 	<span id="yhzxbgNews14"></span>
				<span class="jl-text-tit" >欠税记录 <span id="yhzxbgNews50"></span></span>
				<span id="yhzxbgNews45"></span>
				<span class="jl-text-tit" >民事判决记录  <span id="yhzxbgNews51"></span></span>
				<span id="yhzxbgNews46"></span>
				<span class="jl-text-tit" >强制执行记录  <span id="yhzxbgNews52"></span></span>
				<span id="yhzxbgNews47"></span>
				<span class="jl-text-tit" >行政处罚记录 <span id="yhzxbgNews53"></span></span>  
				<span id="yhzxbgNews48"></span>
				<span class="jl-text-tit" >电信欠费记录 <span id="yhzxbgNews54"></span></span>
				<span id="yhzxbgNews49"></span>
				<!-- 系统中没有您最近5年内的欠税记录 -->
			</p>
			
			
			
			
			
			
			
			
			<p class="yh-tit">
				查询记录
			</p>
			<p class="jl-text">
				这部分包含您的信用报告最近两年被机构和个人查询的记录：
			</p>
			<div class="padTop" style="padding-top: 0; margin-bottom: 0;">
				<p class="yh-tit-bor">
					<span class="yh-tit-left">机构查询记录明细</span>
					<span class="yh-tit-right" id="yhzxbgNews21"></span>
				</p>
				<table class="jg-detail" id="yhzxbgNews15">
					<thead>
						<tr>
							<td>编号</td>
							<td>查询日期</td>
							<td>查询操作员</td>
							<td>查询原因</td>
						</tr>
					</thead>
					<tbody>
						
					</tbody>
				</table>
				<p class="yh-tit-bor">
					<span class="yh-tit-left">本人查询记录明细</span>
					<span class="yh-tit-right" id="yhzxbgNews70"></span>
				</p>
				<table class="jg-detail" id="yhzxbgNews16">
					<thead>
						<tr>
							<td>编号</td>
							<td>查询日期</td>
							<td>查询操作员</td>
							<td>查询原因</td>
						</tr>
					</thead>
					<tbody>
						
					</tbody>
				</table>
			</div>
		</div>
</div>
</body>
</html>