<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- 放款查询列表-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.lend.query" bundle="${lang}" /></title>
<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery.form.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/product/product_list.js?v=1.5.6'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
html,body{
	 height: 100%;
 }
.label1 {
	text-align: right;
}
.fangc{
	min-width: 400px;

}
.fangc select{
	width: 32% !important;
}
.timerTd{
	min-width: 290px;
}
.timerTd input{
	width: 112px !important;
}
.colCCC{
	color:#cccccc;
}

.a-color{
	text-decoration: none;
	margin-right: 10px;
}

#tbl-lendlist{
	/* min-height: 500px; */
}

.ui-jqgrid-bdiv{
	border: none !important;
}

#gbox_tbl-lendlist_1_t{margin-left: 100px;}

.ui-subgrid td{border-bottom: 1px solid #ccc; border-right: 1px solid #ccc !important; padding: 5px}

/*新增子产品css*/
.productUpDv{width: 600px;}
.proTable{width: 100%; text-align: left;}
.proTable td{height: 40px;}
.proTable .tdTextRight{text-align: right;}
.proTable input,select{width: 130px; height: 25px; padding: 0 5px;}
.proTable .moneyInp input{width: 50px;}
.prorate{width: 100%; padding: 10px 30px;}
.prorate .rate-tit{border-bottom: 1px solid #000; padding-bottom: 5px; margin-bottom: 10px;}
.prorate .rate-tabel{text-align: center; border: 1px solid #CCCCCC;width:85%;}
.prorate .rate-tabel thead td{background: #eee;}
.prorate .rate-tabel input[type=text]{width: 100px; height: 30px; padding: 0 5px;}
.prorate .rate-tabel td{min-width: 100px; border-bottom: 1px solid #CCCCCC; border-left: 1px solid #CCCCCC; height: 40px;}
.prorate .rate-tabel td:first-child{border-left: none; padding-left: 10px;}
.prorate .rate-tabel tbody tr:last-child td{border-bottom: none;}
.prorate .rate-tabel tbody td:first-child{text-align: left;}
.prorate .rate-foot{margin-top: 20px;}
.prorate .rate-foot input{width: 76px; height: 25px; margin-right: 20px;}
.prorateTbody input:disabled{cursor: not-allowed;}
 /*新增编辑产品css*/
.addProduct{width: 600px;}
.proTable{width:100%;}
.proTable .w85{width:85px;}
.proTable .tdTextRight{text-align: right;}
.proTable input[type="text"],select{width: 130px; height:25px; padding: 0 5px;}
.proTable input[type="checkbox"]{width:25px;height:25px;padding: 0 5px;vertical-align:middle; margin-top:0;}
.proTable input[type="radio"]{width:25px;height:25px;padding: 0 5px;vertical-align:middle; margin-top:0;border-radius:0;}
.proTable .moneyInp input{width: 50px;}
.proTable tbody tr td .w440{width:440px;}
.proTable tbody tr td .w400{width:400px;}
.imageMaterial{width:100%;text-align: center;;}
.imageMaterial tr td{border:1px solid #cccccc;}
.imageMaterial tr td input[type="text"]{width:95%;}
.imageMaterial thead{background:#f2f2f2;}
.authorProject{width:100%;text-align: center;;}
.authorProject tr td{border:1px solid #cccccc;}
.authorProject tr td input[type="text"]{width:95%;}
.authorProject thead{background:#f2f2f2;}
.productTab .disNone{display:none;}
.active{background:#c9c9c9;}
.productTab a{display:inline-block;width:75px;height:30px;line-height: 30px;text-align:center;color:#333;text-decoration: none;border:1px solid #ccc;}
.productTab a{margin-left:-4px;}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div id="imgBox" style="display:none">
	  <img src="" alt="" />
	</div>
	
	<form id="lendListForm" method="post">
		<div class="buttonlist buttonDivWidth">
			<button type="button" id="biaodiFile" loxiaType="button" class="confirm" title="tip" onclick="addPorductMax()"/>
				新增产品
			</button>
		</div>
		<%@include file="/common/paginationInit.jsp"%>
		<table id="tbl-lendlist"></table>
		<div id="pager"></div>
	</form>
	<div id="dialog-chgrole"></div>
	
	<div id="productUpDv" style="display: none;">
		<div class="productUpDv">
			<table class="proTable">
				<tr>
					<td class="tdTextRight">产品类别：</td>
					<td>
						<input type="hidden" name="productMaxId"/>
						<input type="hidden" name="id"/>
						<input id="productName" type="text" value="" disabled="disabled" />
					</td>
					<td class="tdTextRight">是否有效：</td>
					<td>
						<select name="productStatus">
							<option value="0">是</option>
							<option value="1">否</option>
						</select>
					</td>
				</tr>
				<tr>
					<td class="tdTextRight">基础产品名称：</td>
					<td>
						<input class="nuInp" data-msg="基础产品名称" type="text" name="productName" value="" />
					</td>
					<td class="tdTextRight">基础产品代码：</td>
					<td>
						<input type="text" class="nuInp" data-msg="基础产品代码" name="productCode" value="" />
					</td>
				</tr>
				<tr>
					<td class="tdTextRight">借款金额：</td>
					<td class="moneyInp">
						<input type="text" class="nuInp minMoney money" data-msg="借款金额" name="productMinAmount" value="" />
						<span>-</span>
						<input type="text" class="nuInp maxMoney money" data-msg="借款金额" name="productMaxAmount" value="" />
					</td>
					<td class="tdTextRight">产品期限：</td>
					<td>
						<input type="text" class="nuInp" data-msg="产品期限" name="productPeriod" value="" />
					</td>
				</tr>
				<tr>
					<td class="tdTextRight">账单周期：</td>
					<td>
						<input type="text" name="productUnit" disabled="disabled" />
					</td>
					<td class="tdTextRight">标准类型：</td>
					<td class="proType">
						<select name="productType" id="proType" onchange="proDis(this)">
							<option value="0">标准产品</option>
							<option value="1">自定义产品</option>
						</select>
					</td>
				</tr>
			</table>
			<div class="prorate">
				<p class="rate-tit">产品还款方式&费率</p>
				<table class="rate-tabel" cellspacing="0" cellpadding="0">
					<thead>
						<tr>
							<td>还款方式</td>
							<td>利率(%)</td>
							<td>服务费(%)</td>
							<td>每期手续费(%)</td>
						</tr>
					</thead>
					<tbody class="prorateTbody">
						
					</tbody>
				</table>
				<div class="rate-foot">
					<span>罚息%(日)：</span>
					<input class="money" data-msg="罚息%(日)" name="overdueRate" type="text" />
					<span>趸交服务费(%)：</span>
					<input class="nuInp money" data-msg="趸交服务费" name="singleService" type="text" />
					<span>期缴服务费(%)：</span>
					<input readonly="readonly" name="regularService" type="text" />
				</div>
			</div>
		</div>
	</div>
	
	<div id="addProduct" style="display:none;">
	   
	    <div class="addProduct">
	     <div class="proClass">
					<div class="productTab">
						<a href="#tab1" class="active">基本信息</a>
						<a href="#tab2">影像材料</a>
						<a href="#tab3">个人授权项</a>
						<a href="#tab4">企业授权项</a>
						<input type="hidden" id="purpose" value="1"/>
					</div>
		 </div>
			<div class="proHtml">
			    <input type='hidden' name='purpose' value='1' />
			    <input type="hidden" name="id" />
					<table class="proTable tabs-son" id="tab1">
					<tbody>
					<tr>
						<td class="tdTextRight w85">产品名称：</td>
						<td>
							<input type="text" placeholder="爱押贷" name="productName" id="productName" class="pro" data-msg="产品名称" />
						</td>
						<td class="tdTextRight w85">产品代码：</td>
						<td><input type="text"  name="productCode"  class="pro" data-msg="产品代码"/></td>
					</tr>
					<tr>
						<td class="tdTextRight w85">借款金额：</td>
						<td class="moneyInp">
							<input type="text" placeholder="8500" name="productMinAmount" class="pro minMoney money" data-msg="借款金额"/>
							<span>-</span>
							<input type="text" placeholder="20000" name="productMaxAmount" class="pro maxMoney money" data-msg="借款金额"/>
						</td>
						<td class="tdTextRight w85">借款利率%：</td>
						<td class="moneyInp">
							<input type="text" placeholder="1.25" name="productMinRate" class="pro minRate money" data-msg="借款利率"/>
							<span>-</span>
							<input type="text" placeholder="1.67" name="productMaxRate" class="pro maxRate money" data-msg="借款利率"/>
						</td>
					</tr>
					<tr>
						<td class="tdTextRight w85">借款期限：</td>
						<td>
							<input type="text" placeholder="1,3,6,9,12,18" name="productPeriod" class="pro" data-msg="借款期限"/>
						</td>
						<td class="tdTextRight w85">启用状态：</td>
						<td>
							<select name="productStatus">
								<option value="">请选择</option>
								<option value="0"  selected="selected" >是</option>
								<option value="1">否</option>
							</select>
						</td>
					</tr>
					<tr>
						<td class="tdTextRight w85">账单周期：</td>
						<td>
							<select name="productUnit" >
							  
							</select>
						</td>
						<td class="tdTextRight w85">展业形式：</td>
						<td>
		
							<select name="productType">
		
							</select>
						</td>
					</tr>
					<tr>
						<td class="tdTextRight w85">还款方式：</td>
						<td colspan="3" class="modeRepayment">
							
						</td>
					</tr>
					<tr>
						<td class="tdTextRight w85">提现审核：</td>
						<td>
							<select name="autoConfirm">
							</select>
						</td>
						<td class="tdTextRight w85">资金计划账户：</td>
						<td>
							<select name="accountNo" >
		
							</select>
						</td>
					</tr>
					<tr>
						<td class="tdTextRight w85">合同计算类型：</td>
						<td >
							<select name="arrivalType">
		
							 
		
							</select>
						</td>
						<td class="tdTextRight w85">排序：</td>
						<td><input type="number" name="sort" class="pro" data-msg="排序"/></td>
					</tr>
					<tr>
						<td class="tdTextRight w85">放款对象:</td>
						<td>
							<select name="loanObject" onchange="selectMerchant(this)">

							</select>
						</td>

						<td class="tdTextRight w85">授信有效期:</td>
						<td>
							<select name="validityCredit" id="validityCredit">
								<option value="">请选择</option>
								<option value="1"  selected="selected" >1月</option>
								<option value="3">3月</option>
								<option value="6">6月</option>
								<option value="12">12月</option>
							</select>
						</td>

					</tr>
					<tr class="selectAccount">
						<td class="tdTextRight w85">选择商户:</td>
						<td colspan="5" class="merchantList">


						</td>
					</tr>
					<tr>
						<td class="tdTextRight w85">是否精选产品:</td>
						<td >
							<select name="productEssence" id="productEssence">
								<option value="0"  selected="selected" >否</option>
								<option value="1">是</option>
							</select>
						</td>
						<td class="tdTextRight w85">减免天数:</td>
						<td>
							<input type="text" placeholder="0" name="reduceDay" id="reduceDay" class="pro" data-msg="减免天数" />
						</td>
					</tr>

					<tr>
						<td class="tdTextRight w85">用户类型:</td>
						<td class="usertypeName">
							<input type="checkbox" value="213210" name="userType">个人
							<input type="checkbox" value="213220" name="userType">企业
						</td>
					</tr>
					<tr>
						<td class="tdTextRight w85">产品简介：</td>
						<td colspan="3" >
							<input type="text" class="w440" max-length="10" placeholder="产品简介少于20字" name="productIntroduce" class="pro" data-msg="产品简介"/>
						</td>
					</tr>
					<tr>
						<td class="tdTextRight w85">产品背景：</td>
						<td colspan="3" >
							<input type="text" class="w400" name="productImage" id="imageUrl"/>
							<td><button id="hkBtn" type="button" style="margin-left: 30px;">浏览</button></td>
						</td>
					</tr>
					<tr>
						<td class="tdTextRight w85">适应人群：</td>
						<td colspan="3">
							<textarea  cols="30" rows="5" class="w440" name="applyCondition"></textarea>
						</td>
					</tr>
				</tbody>
				</table>
		</div>
		<div class="imgHtml">
		<input type='hidden' name='purpose' value='2' />
		<table class="imageMaterial tabs-son disNone" id="tab2">
			<thead>
				<tr>
					<td>影像类型</td>
					<td>名称</td>
					<td>描述</td>
				</tr>
			</thead>
			<tbody class="imgCollection">
				
			</tbody>
		</table>
		</div>
		<div class="upHtml">
		<input type='hidden' name='purpose' value='3' />
		<table class="authorProject tabs-son disNone" id="tab3">
			<thead>
				<tr>
					<td>授权类型</td>
					<td>名称</td>
					<td>是否校验</td>
					<td>备注</td>
				</tr>
			</thead>
			<tbody class="authCollection">
				
			</tbody>
		</table>
		</div>
		<div class="companyAuthorHtml">
			<input type='hidden' name='purpose' value='4' />
			<table class="authorProject tabs-son disNone" id="tab4">
				<thead>
				<tr>
					<td>授权类型</td>
					<td>名称</td>
					<td>是否校验</td>
					<td>备注</td>
				</tr>
				</thead>
				<tbody class="companyauthCollection">

				</tbody>
			</table>
		</div>
		
	</div>
	
</div>
 <!-- <form action="/base/api/upload.do" id="uploadForm" method="post" enctype="multipart/form-data" style="display:none;">
		<input id="myFile" type="file" name="file" />
	</form> -->
</body>
</html>
