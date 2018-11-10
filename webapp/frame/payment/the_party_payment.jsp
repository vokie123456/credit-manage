<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.lend.query" bundle="${lang}" /></title>

<style type="text/css">
.label {
	text-align: left;
}

.dv{
	border: 1px solid #ccc;
	width: 500px;
	height: 500px;
	overflow: hidden;
}
.son{
	width: 500px;
	height: 500px;
	/*font-size: 40px;*/
	font-weight: bold;
	text-align: center;
	/*line-height: 500px;*/
	display: none;
}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div class="dv-a">
		<a href="#" title="宝付查询绑定交易类" >宝付查询绑定关系交易类</a>
		<a href="#" title="宝付交易状态查询类交易  ">宝付交易状态查询类交易</a>
		<a href="#" title="宝付代付交易状态查证接口" >宝付代付交易状态查证接口</a>
		
		<a href="#" title="算话个人消费特征信息查询">算话个人消费特征信息查询  </a>
		<a href="#" title="算话信用报告查询 ">算话信用报告查询</a>
		<a href="#" title="中诚信四项认证查询  ">中诚信四项认证查询</a>
		
	</div>
	
	<div class="dv">
		<div class="son">
			<form id="frm">
				<table>
					<tr>
						<td>银行卡号</td>
						<td><input type="text" id="accnos" value="6222620110014012331" /></td>
					</tr>
				
					<tr>
						<td><input type="button" id="dv1_btn" value="提交" 	/></td>
					</tr>
				</table>
			</form>
		</div>
		<div class="son">
			<form id="frm-two">
				<table>
					<tr>
						<td>宝付原始订单号</td>
						<td><input type="text"  value="" id="orgTransId" /></td>
					</tr>
					<tr>
						<td>交易流水号</td>
						<td><input type="text"  value="" id="transSerialNo" /></td>
					</tr>
					<tr>
						<td>日期</td>
						<td><input loxiaType="date" trim="true"  id="tradeDate" /> 
						</td>
					</tr>
					<tr>
						<td><input type="button" id="dv2_btn" value="提交" 	/></td>
					</tr>
				</table>
			</form>		
		</div>
		
		
		<div class="son">
			<form id="frm-three">
				<table>
					<tr>
						<td>商户订单号</td>
						<td><input type="text"  value="" id="transNo" /></td>
					</tr>
					<tr>
						<td>宝付的批次号</td>
						<td><input type="text"  value="" id="transBatchId" /></td>
					</tr>
					<tr>
						<td><input type="button" id="dv3_btn" value="提交" 	/></td>
					</tr>
				</table>
			</form>		
		</div>
		
		
		<div class="son">
			<form id="frm-four">
				<table>
					<tr>
						<td>客户ID</td>
						<td><input type="text"  value="" id="sCustomerId" /></td>
					</tr>
					<tr>
						<td>姓名</td>
						<td><input type="text"  value="" id="sName" /></td>
					</tr>
					<tr>
						<td>身份证号码</td>
						<td><input type="text"  value="" id="sIdCard" /></td>
					</tr>
					<tr>
						<td>银行卡号</td>
						<td><input type="text"  value="" id="sCardNum" /></td>
					</tr>
					<tr>
						<td>手机号码</td>
						<td><input type="text"  value="" id="sMobileNum" /></td>
					</tr>
					<tr>
						<td><input type="button" id="dv4_btn" value="提交" 	/></td>
					</tr>
				</table>
			</form>		
		</div>
		
		
		<div class="son">
			<form id="frm-five">
				<table>
					<tr>
						<td>姓名</td>
						<td><input type="text"  value="" id="sNames" /></td>
					</tr>
					<tr>
						<td>身份证号码</td>
						<td><input type="text"  value="" id="sIdCards" /></td>
					</tr>
					<tr>
						<td><input type="button" id="dv5_btn" value="提交" 	/></td>
					</tr>
				</table>
			</form>		
		</div>
		
		<div class="son">
			<form id="frm-six">
				<table>
					<tr>
						<td>客户ID</td>
						<td><input type="text"  value="" id="zCustomerId" /></td>
					</tr>
					<tr>
						<td>姓名</td>
						<td><input type="text"  value="" id="zName" /></td>
					</tr>
					<tr>
						<td>身份证号码</td>
						<td><input type="text"  value="" id="zCid" /></td>
					</tr>
					<tr>
						<td>手机号码</td>
						<td><input type="text"  value="" id="zMobile" /></td>
					</tr>
					<tr>
						<td>银行卡号码</td>
						<td><input type="text"  value="" id="zCard" /></td>
					</tr>
					<tr>
						<td><input type="button" id="dv6_btn" value="提交" 	/></td>
					</tr>
				</table>
			</form>		
		</div>
		
		
		
		<div id="divResult"></div>
	</div>
	<script>
			$(function(){
				$('.dv-a').find('a').click(function(e){
					e.preventDefault();
					var ind = $(this).index();
					$('.dv').find('.son').hide().eq(ind).show();
				})
				//  宝付查询绑定交易类
				$('#dv1_btn').click(function(){
					$j.ajax({
					    url:$j("body").attr("contextpath")+"/payment/thePartyPayment/baofuQueryBind.do?"+"timestamp ="+ Date.parse(new Date()),    //请求的url地址
					    dataType:"json",   //返回格式为json
					    async:false,//请求是否异步，默认为异步，这也是ajax重要特性
					   	data:{"accno":$j("#accnos").val()},    //参数值
					    type:"POST",   //请求方式
					    success:function(req){
					        //请求成功时处理
					        alert(JSON.stringify(req));
					        $('#divResult').html("");
					        $('#divResult').after(JSON.stringify(req));
					    },error:function(){
					        //请求出错处理
					        alert("error");
					    }
					});
				})
				
				
				$('#dv2_btn').click(function(){
					$j.ajax({
					    url:$j("body").attr("contextpath")+"/payment/thePartyPayment/gatherQuery.do",    //请求的url地址
					    dataType:"json",   //返回格式为json
					    async:true,//请求是否异步，默认为异步，这也是ajax重要特性
					   	data:{orgTransId: $j("#orgTransId").val(), transSerialNo: $j("#transSerialNo").val(),"tradeDate":$j("#tradeDate").val()},    //参数值
					    type:"POST",   //请求方式
					    beforeSend:function(){
					     
					    },
					    success:function(req){ //请求成功时处理
					    	alert(JSON.stringify(req));
					        $('#divResult').html("");
					        $('#divResult').after(JSON.stringify(req));
					    },error:function(){
					        //请求出错处理
					        alert("error");
					    }
					});
				})
			
				$('#dv3_btn').click(function(){
					$j.ajax({
					    url:$j("body").attr("contextpath")+"/payment/thePartyPayment/payQuery.do",    //请求的url地址
					    dataType:"json",   //返回格式为json
					    async:false,//请求是否异步，默认为异步，这也是ajax重要特性
					   	data:{"transNo":$j("#transNo").val(),"transBatchId":$j("#transBatchId").val()},    //参数值
					    type:"POST",   //请求方式
					    beforeSend:function(){
					    	
					    },
					    success:function(req){ //请求成功时处理
					    	alert(JSON.stringify(req));
					        $('#divResult').html("");
					        $('#divResult').after(JSON.stringify(req));
					    },error:function(){
					        //请求出错处理
					        alert("error");
					    }
					});
				})
				
				$('#dv4_btn').click(function(){
					$j.ajax({
					    url:$j("body").attr("contextpath")+"/payment/thePartyPayment/api5003.do",    //请求的url地址
					    dataType:"json",   //返回格式为json
					    async:false,//请求是否异步，默认为异步，这也是ajax重要特性
					   	data:{"customerId":$j("#sCustomerId").val(),"name":$j("#sName").val(),"idCard":$j("#sIdCard").val(),"cardNum":$j("#sCardNum").val(),"mobileNum":$j("#sMobileNum").val()},    //参数值
					    type:"POST",   //请求方式
					    beforeSend:function(){
					    	
					    },
					    success:function(req){ //请求成功时处理
					    	alert(JSON.stringify(req));
					        $j('#divResult').html("");
					        $j('#divResult').after(JSON.stringify(req));
					    },error:function(){
					        //请求出错处理
					        alert("error");
					    }
					});
				})
				
				$('#dv5_btn').click(function(){
					$j.ajax({
					    url:$j("body").attr("contextpath")+"/payment/thePartyPayment/pbccrcQuery.do",    //请求的url地址
					    dataType:"json",   //返回格式为json
					    async:false,//请求是否异步，默认为异步，这也是ajax重要特性
					   	data:{"name":$j("#sNames").val(),"idCard":$j("#sIdCards").val()},    //参数值
					    type:"POST",   //请求方
					    beforeSend:function(){
					    	
					    },
					    success:function(req){ //请求成功时处理
					    	alert(JSON.stringify(req));
					        $j("#divResult").html("");
					        $j("#divResult").after(JSON.stringify(req));
					    },error:function(){
					        //请求出错处理
					        alert("error");
					    }
					});
				})
				
				$('#dv6_btn').click(function(){
					$j.ajax({
					    url:$j("body").attr("contextpath")+"/payment/thePartyPayment/basicInfoQuery.do",    //请求的url地址
					    dataType:"json",   //返回格式为json
					    async:false,//请求是否异步，默认为异步，这也是ajax重要特性
					   	data:{"customerId":$j("#zCustomerId").val(),"name":$j("#zName").val(),"cid":$j("#zCid").val(),"mobile":$j("#zMobile").val(),"card":$j("#zCard").val()},    //参数值
					    type:"POST",   //请求方
					    beforeSend:function(){
					    	
					    },
					    success:function(req){ //请求成功时处理
					    	alert(JSON.stringify(req));
					        $j('#divResult').html("");
					        $j('#divResult').after(JSON.stringify(req));
					    },error:function(){
					        //请求出错处理
					        alert("error");
					    }
					});
				})
				
				
			})
		</script>
</body>
</html>
