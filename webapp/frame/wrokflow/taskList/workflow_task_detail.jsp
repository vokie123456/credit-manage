<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/newsZr/style_zr.css'/>"/> 
<link rel="stylesheet" type="text/css" href="<c:url value='/css/newsZr/photoGallery.css'/>"/> 
<link rel="stylesheet" type="text/css" href="<c:url value='/scripts/kindeditor/themes/default/default.css'/>"/> 
<link rel="stylesheet" type="text/css" href="<c:url value='/scripts/kindeditor/plugins/code/prettify.css'/>"/> 

<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/my-jquery-ajax.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/newsZr/WdatePicker/WdatePicker.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/newsZr/dialog.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/newsZr/jquery.photo.gallery.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery.form.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/kindeditor/kindeditor.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/kindeditor/plugins/code/prettify.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/frame/workflow/taskList/workflow_task_detail.js?v=1.24'/>"></script>
	<script type="text/javascript" src="<c:url value='/scripts/specialpag.js?v=0.1.1'/>"></script>
<title>案件详情</title>
<linkage:define />
            <script type="text/javascript">
        console.log("aaa---");
		console.log(changePro);
	</script>
<style>
   body {color: #333333;font-family: "微软雅黑 Regular","微软雅黑";font-size: 14px;}
   ul li{list-style: none;}
   a{text-decoration: none;color:#333;}
   /*.use-file .nav-file-zr .active{background: rgba(242, 242, 242, 0.776) none repeat scroll 0 0;}*/
   .use-file{background: #fff none repeat scroll 0 0;min-height: 1024px;margin-left:-45px;}
   .use-file li{float:left;width: 150px;height: 35px;line-height: 35px;border:1px solid #ccc;text-align: center;cursor:pointer;}
   .use-file li a{color: #333333;}
   .clear{clear:both;}
  #div-1{width:90%;}
  #dv-content{margin-left:40px;}
   #dv-content tr td{height:30px;line-height:30px;}
.originTitle{width:100%;margin-left:8px;}
.originTitle .CaseNumber{width:245px;height: 20px;background:#008000;color:#fff;margin-left:0px;padding-left: 8px;}
.originTitle .originBtn{width:70%;text-align:right;}
.originTitle tr .w15{width:10%;}
.originTitle tr .w5{width:5%;}
.approvalResult .point-color{
    color: #ccc;
    white-space: nowrap;
    cursor: pointer;
    font-size: 14px;
    text-decoration: none;
}
.process_table tr td{width:25%;}
.process_table tr td:nth-child(2n+1){width:6%;}

.disNone{display:none;}
   .easyDialog_wrapper .easyDialog_title{ background:#019fd6 none repeat scroll 0 0;color:#fff;}
   .easyDialog_wrapper .close_btn{color:#fff;}
   .easyDialog_content{border:1px solid #666666;}
   .easyDialog_wrapper .btn_highlight {
	   background:#019fd6 none repeat scroll 0 0;
   }
   .approvalResult{border:1px solid #cccccc;padding:10px;}
	.firstTrial{font-size:16px;margin:8px 0;}
   /*.dotted td{width:50px;}*/
   .dotted td.width30{width:35%;}
   .fixedPeriod td{width:50%;}
	.dotted td{border-bottom:1px dotted #cccccc;height:40px;width:15%;}
	.operate{margin:5px 0;}
    .operate span{font-size:14px;color:#ccc;}
   .check{
	   display:inline-block;
	   position: relative;
	   width:100px;
   }
   .icon{
	   position: absolute;
	   display: inline-block;
	   width: 15px;
	   height: 15px;
	   border: 1px solid #ccc;
	   border-radius: 50%;
	   line-height: 15px;
	   left:40px;
	   top:2px;
	   behavior: url(PIE.htc);
   }
   .operate input[type="radio"]{
	   width: 15px;
	   height: 15px;
	   opacity: 0;
	   margin-left:45px;
	   filter:Alpha(Opacity=0);
   }
	.font-color{color:#ccc;}
	.active{color: #019fd6!important;}
	.color{background: url('../../images/icons/button_selected.png') no-repeat center;background-size: 100%;}
	.rateSet{display: none;}
   .rateCompute{display: none;}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
    <input type="hidden" name="project_id" id="project_id" value="${project_id }">
    <input type="hidden" name="creditCode" id=creditCode value="${creditCode }">
	<input type="hidden" name="taskid" id="taskid" value="${taskid }">
    <input type="hidden" name="client_id" id="client_id" value="${client_id }">
     <input type="hidden" name="clientId" id="clientId" value="${client_id }">
    <input type="hidden" name="creditId" id="creditId" value="${creditId }">
    <input type="hidden" name="user_id" id="user_id" value="${user_id }">
   <input type="hidden" name="auditor_name" id="auditor_name" />
   <input type="hidden" value="${page_type } " id="pageType"/>
	<input type="hidden" value="${finalDate }" id="finalDate">
	<input type="text" id="userTypeName" value="${userTypeName}">
    <div class="originTitle">
		<table>
		
			<div class="CaseNumber">案件编号：<span>${creditCode }</span></div>
			<tr>
				<td>申请时间:</td>
				<td>${createTime }</td>
			</tr>
			<tr>
				<td class="w5">申请产品:</td>
				<td class="w15">${productName }</td>
				<td class="w5">申请金额:</td>
				<td class="w15">${firstMoney }</td>
				<td class="w5">期限:</td>
				<td class="w15">${finalDate }</td>
				<td class="w5">来源应用:</td>
				<td class="w15">${applyName}</td>
				<td class="w5">预警汇总:</td>
				<td class="w15">拒绝<span class="cancel" >${time }</span>次</td>
				<td class="originBtn">
					<button class="button" id="submit">提交</button>
					<button class="button" id="clscBtn">材料上传</button>
				</td>
			</tr>
			<tr>
				<td class="w5">信用评分:</td>
				<td class="w15 creditScore">${cardResult.creditScore }</td>
				<td class="w5">信用违约率:</td>
				<td class="w15 creditRate">${cardResult.creditRate }</td>
				<td class="w5">行为评分:</td>
				<td class="w15 behaviorScore">${cardResult.behaviorScore }</td>
				<td class="w5">行为违约率:</td>
				<td class="w15 behaviorRate">${cardResult.behaviorRate}</td>
			</tr>
		</table>
	</div>
	<div class="ui-tabs-panel ui-corner-bottom ui-helper-clearfix bor-zr" id="div-1" style="margin-left:15px;">
		  <div class="use-file">
		   <nav class="nav-file">
				<ul class="nav-file-zr" id="nav-li-a">
					<li >
						<a data-type="jbxx" id="jbxx">基本信息</a>
					</li>
					<li>
						<a data-type="spls" id="spls">审批历史</a>
					</li>
					<li>
						<a data-type="yxcl" >影像材料</a>
					</li>
					<li>
						<a data-type="zxbg">征信报告</a>
					</li>
				</ul>
				<div class="clear"></div>
		   </nav>
		   <div id="dv-content"></div>
		</div>
	</div>
 
 <div  id="approvalResult" style="display:none;">
   <div class="approvalResult">
	   <div class="firstTrial">初审操作</div>
		<p class="operate"  style="border-bottom: 1px dotted #ccc;padding-bottom:5px;">
            <span>审核状态:</span>

			<a class="point-color check active" href="#examine1"><span class="icon color"></span><input type="radio" class="radio" value="初审通过">初审通过</a>
			<a class="point-color check" href="#examine2"><span class="icon"></span><input type="radio" class="radio" value="初审拒绝">初审拒绝</a>
			<a class="point-color check" href="#examine3"><span class="icon"></span><input type="radio" class="radio" value="初审取消">初审取消</a>
			<a class="point-color check" href="#examine4"><span class="icon"></span><input type="radio" class="radio" value="补件">补件</a>
			<input type='hidden' id='purpose' value='1' />
		</p>
    <div class="dv-table">
		<div class="examine" id="examine1">
		 <form name="first_audit_pass" id="first_audit_pass">  
			<input type='hidden' name='purpose' value='1' />
			<input type="hidden" name="direction" value="next">
			<input type="hidden" id="operType" name="operType" value="100060201">
			<table cellpadding="0" cellspacing="0">
				<tr class="dotted">
					<td style="width:8%;">意向贷款金额：</td>
					<td>
						${apply_credit }元
					</td>
					<td>系统建议金额：</td>
					<td  class="creditMoney">${cardResult.creditMoney }</td>
				</tr>
				<tr class="dotted">
					<td>初审金额：</td>
					<td colspan="3">
						<input id="first_money" name="first_money" loxiaType="number" decimal="2" trim="true" mandatory="true" style="width: 70px;" />元
						（房屋净值：<input name="house_money" id="house_money" loxiaType="number" decimal="2" trim="true" mandatory="true" style="width: 70px;"
									 value="${clientCredit.houseMoney }"/>元，预测年可支配收入：
						<input id="year_exmoney" name="year_exmoney" loxiaType="number" decimal="2" trim="true" mandatory="true" style="width: 70px;"
							   value="${clientCredit.yearExmoney }"/> 元）
					</td>

				</tr>
				<tr class="dotted">
					<td>拟批产品</td>
					<td colspan="3" >
						<input type="hidden" name="intendedProduct" value="${productId}" />
						<select name="intendedProduct2" disabled="true">
							<option value="">请选择</option>
							<c:forEach items="${productMaxList}" var="pro">
								<option value="${pro.id }" <c:if test="${pro.id == productId}"> selected = "selected"  </c:if>> ${pro.productName }</option>
							</c:forEach>	
						</select>				
					</td>
				</tr>

				<tr class="dotted">
					<td>初审意见:</td>
					<td colspan="3">
						<textarea class="text_view" id="operRemark" name="operRemark" style="width:450px;"></textarea>
					</td>
				</tr>
			</table>
		</form>
		</div>
		<div class="examine disNone" id="examine2">
        <form name="first_audit_nopass" id="first_audit_nopass"> 
			<!-- 拒绝-->
			<input type='hidden' name='purpose' value='2' />
			<input type="hidden" name="direction" value="over">
			<input type="hidden" id="operType" name="operType" value="100060202">
			<table cellpadding="0" cellspacing="0">


				<tr class="dotted">
					<td>拒绝原因:</td>
					<td>
						<p>
						<select id="audit_type" name="audit_type" loxiaType="select" mandatory="true" onchange="selectAudit(this)">
							<option value="">请选择</option>
							<c:forEach items="${audits }" var="ite">
								<option value="${ite.typeCode }">${ite.typeName }</option>
							</c:forEach>
						</select>
						<select id="operReason"	name="operReason" loxiaType="select" mandatory="true">
							<option value="">请选择</option>
						</select>
						</p>
						<p>
							<label><input type="checkbox" name="blacklist" id="blacklist" value="1"/>加入黑名单</label>
							<bizoption:bizoption biztypekey="1194" id="blacklistSource"
								name="blacklistSource" isChoose="true"/>
						</p>
					</td>
				</tr>
				<tr class="dotted">
					<td>建议申请产品</td>
					<td>
						<p>
							<select id="first_advise_product" name="adviseProduct_max_id" loxiaType="select" mandatory="true" onchange="proofTest('first')">
								<option value="">暂无产品大类</option>
									<c:forEach items="${productMaxList}" var="pro">
										<option value="${pro.id }" name="${pro.productName }">${pro.productName }</option>
									</c:forEach>
							</select>
						</p>
					</td>
				</tr>
				<tr class="dotted">
					<td>初审意见：</td>
					<td>
						<textarea class="text_view" id="operRemark" name="operRemark"></textarea>
					</td>
				</tr>
			</table>
			</form> 
		</div>
	    <div class="examine disNone" id="examine3">
		 <form name="first_audit_esc" id="first_audit_esc"> 
			<!-- 取消 -->
			<input type='hidden' name='purpose' value='3' />
			<input type="hidden" name="direction" value="esc">
			<input type="hidden" id="operType" name="operType" value="100060202">
			<table cellpadding="0" cellspacing="0">
				<tr class="dotted">
					<td>取消原因:</td>
					<td>
						<p>
						<select class="escReason"	name="escReason" loxiaType="select" mandatory="true">
							<option value="">请选择</option>
						</select>
						</p>
					</td>
				</tr>
				
				<tr class="dotted">
					<td>初审意见：</td>
					<td>
						<textarea class="text_view" id="operRemark" name="operRemark"></textarea>
					</td>
				</tr>
				
			</table>
			</form>
		</div>
	
	<div class="examine disNone" id="examine4">
	<form name="first_audit_bj" id="first_audit_bj">
		<!-- 补件 -->
		<input type='hidden' name='purpose' value='4' />
		<input type="hidden" name="direction" value="rfe">
		<input type="hidden" id="operType" name="operType" value="100060203">
		<table cellpadding="0" cellspacing="0">
			<tr class="dotted">
				<td>
					<span>补件原因：</span><br />
				</td>
				<td>
					<p class="dribbleware-select" style="width:490px;" data-code="init">
						<select id="bj_type" name="bj_type" loxiaType="select" mandatory="true" onchange="selectPatch(this)">
							<option value="">请选择</option>
							<c:forEach items="${patchs }" var="ite">
								<option value="${ite.typeCode }">${ite.typeName }</option>
							</c:forEach>
						</select>
						<select loxiaType="select" id="bj_subtype"
							name="add_material" isChoose="true" mandatory="true" >
							<option value="">请选择</option>
						</select>
						<a class="dribbleware-select-btn" data-type="jia"><img src="../../images/icons/button_add.png" alt="" style="width:15px;height:15px;margin:8px 2px 0;"></a>
					</p>
					
				</td>
			</tr>
			<tr class="dotted">
				<td>生成短信：</td>
				<td>
					<p class="dribbleware-select">
						<select name="smsconfig" id="smsconfig" onchange="changeValue(this,'smsContent')" loxiaType="select">
							<option value="">-选择短信模板-</option>
							<c:forEach items="${smsmaster}" var="sms">
								<option value="${sms.templateContent }">${sms.actionTitle }</option>
							</c:forEach>
						</select>
					</p>
					<textarea class="text_view" id="smsContent" name="smsContent" readonly="readonly"></textarea>
				</td>
			</tr>
			<tr class="dotted">
				<td>备注：</td>
				<td>
					<textarea class="text_view" id="operRemark" name="operRemark"></textarea>
				</td>
			</tr>
		</table>
		</form>
	</div>
     </div>

</div>
 
 </div>
 

 
 
 
 
 
 
<!--  终审拒绝 -->
 <div id="finalApproval" style="display:none;">
   <div class="approvalResult">
       <div class="firstTrial">初审结果</div>
   <table class="process_table" style="border:1px solid #ccc;width:100%;padding:5px;">
	<tbody>
		<tr>
			<td class="font-color">审核状态:</td>
			<td>${tasklast.task_oper_name }</td>
			<td class="font-color">初审金额:</td>
			<td>${tasklast.first_money }元</td>

		</tr>
		<tr>
			<td class="font-color">初审人员:</td>
			<td>${tasklast.user_name }</td>
			<td class="font-color">提交时间:</td>
			<td>${tasklast.audit_date }</td>
		</tr>
		<tr>
			<td class="font-color">拟批产品:</td>
			<td>${tasklast.creditMaxProductName }</td>
			<td class="font-color">初审意见:</td>
			<td>${tasklast.operReasonRemark }</td>
		</tr>
		</tbody>
	</table>
	   <div class="contentDv" style="border:1px solid #ccc;margin-top:20px;padding:5px;">
	   <div class="firstTrial">终审操作</div>
     <p class="operate" style="border-bottom: 1px dotted #ccc;padding-bottom:5px;">
		<span>审核状态:</span>
		 <a class="point-color check active" href="#examine1"><span class="icon color"></span><input type="radio" class="radio" value="终审通过">终审通过</a>
		 <a class="point-color check" href="#examine2"><span class="icon"></span><input type="radio" class="radio" value="终审拒绝">终审拒绝</a>
		 <a class="point-color check" href="#examine3"><span class="icon"></span><input type="radio" class="radio" value="终审取消">终审取消</a>
		 <a class="point-color check" href="#examine4"><span class="icon"></span><input type="radio" class="radio" value="回退初审">回退初审</a>

    </p>
	<div class="dv-table" style="margin-top:20px;">
		 <div class="examine" id="examine1">
		   <form name="last_trial_save" id="last_trial_save">
		   <span style="font-size:18px;"><script src="/js/easydialog/easy_msg.js" type="text/javascript"></script></span>  
		   <input type='hidden' name='purpose' value='1' />
			<input type="hidden" name="direction" value="next">
			<input type="hidden" id="operType" name="operType" value="100060401">
			<table cellpadding="0" cellspacing="0" border="1">


				<tr class="dotted">
					<td>系统建议金额：</td>
					<td class="creditMoney">${cardResult.creditMoney }</td>
					<td></td>
					<td></td>
				</tr>
				<tr class="dotted">
					<td>授信金额：</td>
					<td colspan="3">
						<input id="first_money" name="first_money" loxiaType="number" decimal="2" trim="true" mandatory="true" style="width: 70px;" />元
						（房屋净值：<input name="house_money" id="house_money" loxiaType="number" decimal="2" trim="true" mandatory="true" style="width: 70px;" 
						value="${clientCredit.houseMoney }"/>元，预测年可支配收入：
						<input id="year_exmoney" name="year_exmoney" loxiaType="number" decimal="2" trim="true" mandatory="true" style="width: 70px;" 
						value="${clientCredit.yearExmoney }"/> 元）
					</td>
				</tr>
				<tr class="dotted">
					<td>授信产品：</td>
					<td class="creditProduct">
						<input type="hidden" name="creditMaxProductId" value="${productId}"/>
                        <select name="creditMaxProductId2" style="width:200px;" disabled="true">
							<option value="0">请选择</option>
							<c:forEach items="${productMaxList}" var="pro">
								<option value="${pro.id }" <c:if test="${pro.id == productId}"> selected = "selected"  </c:if>>${pro.productName }</option>
							</c:forEach>
						</select>
					</td>
					<td>授信结束日：</td>
					<td>
						<input type="text" id="final_date" class="Wdate" name="final_date" trim="true" mandatory="true" onfocus="WdatePicker({skin:'default',dateFmt:'yyyy-MM-dd'});" value="${final_date }"/>
					</td>

				</tr>
                <tr class="dotted">
					<td>产品小类：</td>
					<td colspan="4">

						<select name="creditProductSubId" style="width:200px;">
							<option value="0">请选择</option>

						</select>
						<span class="detail" style="color:#0066ff;cursor:pointer;display:none;">详情</span>
					</td>
				</tr>
				<tr class="rate dotted" style="display:none;">
					<td colspan="4" style="border:none;">
						<span id="repaymentWay"></span>; <span style="font-weight: bold;">利率:<span id="productRate" style="font-weight:normal;"></span></span>;<span style="font-weight: bold;">服务费费率:<span id="productService" style="font-weight:normal;"></span></span>;<span style="font-weight: bold;">每期手续费率:<span id="termFee" style="font-weight:normal;"></span></span>;
						<span style="font-weight:bold;">借款期限:<span id="productPeriod" style="font-weight:normal;"></span></span>
					</td>
				</tr>
				<tr style="display:none;border:none;" class="creditRepayment dotted">
					<td style="border:none;">授信还款方式：</td>
					<td colspan="3" class="repaymentWay" style="border:none;">

					</td>
				</tr>
				<tr class="rateSet">
					<td>年化综合费率:</td>
					<td><input type="number" min="0" max="100" value="20.00" class="syndromeRate">%</td>
					<td>设置期限:</td>
					<td>
						<select name="productPeriod" class="periodDate">

						</select>
					</td>
					<td>风险等级:</td>
					<td>
						<select name="level" >
							<option value="A">A</option>
							<option value="AA" >AA</option>
							<option value="AAA" selected>AAA</option>
							<option value="AAAA" >AAAA</option>
							<option value="AAAAA" >AAAAA</option>
						</select>
					</td>
				</tr>
				<tr class="rateSet">
					<td>年化服务费率:</td>
					<td><input type="number" min="0" max="100" name="serviceRate" value="0.00">%</td>
					<td>月/日服务费率:</td>
					<td><span id="serviceRate">0.00</span>%</td>
					<td><a href="javascript:;" id="zs_compute" style="display:inline-block;width:50px;height:25px;line-height:25px;background:#00a5ff;color:#fff;border-radius: 5px;text-align:center;">计算</a></td>
				</tr>
					<tr class="rateSet">
						<td>年化利率:</td>
						<td><input type="number" min="0" max="100" name="interestRate">%</td>
						<td>月/日利率:</td>
						<td><span id="rateProportion"></span>%</td>
						<td>日罚息率:</td>
						<td><input type="number" min="0" max="100" name="overdueRate" id="fineRate" readonly="readonly" style="border:none;width:100px;">%</td>
					</tr>
					<tr class="rateSet">
						<td>年化手续费率:</td>
						<td><input type="number" min="0" max="100" name="termFeeRate">%</td>
						<td>月/日手续费率:</td>
						<td><span id="handChargeRate"></span>%</td>
					</tr>
				<tr class="rateSet">
					<td>修后年化费率:</td>
					<td><span id="updateyearRate"></span>%(参考费率)</td>
				</tr>
				<tr class="fixedPeriod dotted" style="border:none;">
					<td style="border:none;">是否固定期限：</td>
					<td colspan="3" style="border:none;">
						<label><input name="productPeriodStatue" type="radio" value="1"/>是（需设置期限） </label>
						<label><input name="productPeriodStatue" type="radio" value="0" />否（无需设置期限） </label>
					</td>
				</tr>
				<tr class="dotted setPeriod">
					<td>设置期限：</td>
					<td class="setPeriod" colspan="3">
						<span class="noSet" style="display:none;">无需设置</span>
						<select name="productPeriod" style="display:none;" class="periodMonth">

						</select>
					</td>
				</tr>
				<tr class="dotted">
					<td>资金渠道：</td>
					<td>
						<select name="capitalChannel" id="capitalChannel">
							<option value="">请选择资金渠道</option>
							<c:forEach items="${sdList}" var="sd">
								<option value="${sd.channelCode }" name="${sd.relatedProducts } " <c:if test="${sd.channelCode == '210001' }">selected</c:if> >${sd.channelName }&nbsp;&nbsp;&nbsp;<fmt:formatNumber type="number" maxFractionDigits="2" value="${sd.accountBalance}" /></option>
							</c:forEach>
						</select>

					</td>
				</tr>
				<tr class="dotted">
					<td>终审意见:</td>
					<td colspan="3">
						<textarea id="operRemark" name="operRemark" style="width:450px;height: 60px;"></textarea>
					</td>
				</tr>
			</table>
		  </form>
		</div>
	</div>
		 <div class="examine disNone" id="examine2">
		    <form name="last_audit_nopass" id="last_audit_nopass">
		    <input type='hidden' name='purpose' value='2' />
			<input type="hidden" name="direction" value="over">
			<input type="hidden" id="operType" name="operType" value="100060402">
			<table class="news_table" cellpadding="0" cellspacing="0">

				<tr class="dotted">
					<td>拒绝原因:</td>
					<td>
						<p>
							<select id="audit_type" name="audit_type" loxiaType="select" mandatory="true" onchange="selectAudit(this)">
								<option value="">请选择</option>
								<c:forEach items="${audits }" var="ite">
									<option value="${ite.typeCode }">${ite.typeName }</option>
								</c:forEach>
							</select>
							<select id="operReason"	name="operReason" loxiaType="select" mandatory="true">
								<option value="">请选择</option>
							</select>
						</p>
						<p>
							<label><input type="checkbox" name="blacklist" id="blacklist" value="1"/>&nbsp加入黑名单</label>
							<bizoption:bizoption biztypekey="1194" id="blacklistSource"
								name="blacklistSource" isChoose="true"/>
						</p>
					</td>
				</tr>

				<tr class="dotted">
					<td>建议申请产品</td>
					<td>
						<p>
							<select id="last_advise_product" name="adviseProduct_max_id" loxiaType="select" mandatory="true" onchange="proofTest('last')">
								<option value="">暂无产品大类</option>
								<c:forEach items="${productMaxList}" var="pro">
									<option value="${pro.id }"  name="${pro.productName }" >${pro.productName }</option>
								</c:forEach>
							</select>
						</p>
					</td>
				</tr>
				<tr class="dotted">
					<td>终审意见：</td>
					<td>
						<textarea class="text_view" name="operRemark" name="operRemark"></textarea>
					</td>
				</tr>
			</table>
			</form>
		</div> 
		  <div class="examine disNone" id="examine3">
		    <form name="last_audit_esc" id="last_audit_esc">
		    <input type='hidden' name='purpose' value='3' />
			<input type="hidden" name="direction" value="esc">
			<input type="hidden" id="operType" name="operType" value="100060402">
			<table cellpadding="0" cellspacing="0">

				<tr class="dotted">
					<td>取消原因:</td>
					<td>
						<p>
							<select class="escReason"	name="escReason" loxiaType="select" mandatory="true">
								<option value="">请选择</option>
							</select>
						</p>
					</td>
				</tr>
				<tr class="dotted">
					<td>终审意见：</td>
					<td>
						<textarea class="text_view" name="operRemark" name="operRemark"></textarea>
					</td>
				</tr>
			</table>
			</form>
		</div> 
		 <div class="examine disNone" id="examine4">
		  <form name="last_audit_prev" id="last_audit_prev">
		  <input type='hidden' name='purpose' value='4' />
			<input type="hidden" name="direction" value="prev">
			<input type="hidden" id="operType" name="operType" value="100060403">
			<table cellpadding="0" cellspacing="0">
				<tr>
					<td>备注：</td>
					<td>
						<textarea class="text_view" name="operRemark" id="operRemark"></textarea>
					</td>
				</tr>
			</table>
			</form>
		</div> 
		</div>
    </div>
</div>
 </body>
</html>
