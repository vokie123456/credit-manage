<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<%@include file="/common/meta.jsp"%>
		<title>催收列表</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/newsZr/style_zr.css'/>"/> 
		<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
		<script>
			window.lendApplyId = '<%=request.getParameter("lendApplyId")%>';
		</script>
		<script type="text/javascript" src="<c:url value='/scripts/frame/loaning/collection_deatils.js'/>"></script>
		<style>
			.tab-con-dv{width:100% !important;}
			.tdh30 td{min-height: 30px; line-height: 30px; text-align: center; padding: 0;}
			.a-btn{cursor: pointer; color: #169bd5;}
			.table-tit{margin-bottom: 5px; font-weight: bold;}
			.coll-detail-table{border-top: 1px solid #000; border-left:1px solid #000; width:800px;}
			.coll-detail-table td{border-right:1px solid #000; padding:10px 5px; border-bottom: 1px solid #000; text-align: left; height: 20px; line-height: 40px;}
			.coll-detail-table td.tit{text-align: right; background: #e5e5e5; width: 100px;}
			.coll-detail-table .w100{width: 100px;}
			.tf-btn{text-align: right !important;}
			.tf-btn a{display: inline-block; text-decoration:none; margin-right:10px; height:30px; line-height:30px; cursor:pointer; padding: 0 20px; color:#000; border:1px solid #000; border-radius:5px;}
			.tf-btn a:hover{background-color: #e5e5e5;}
			.more-mobile-dv{width: 100%; height: 100%; display:none; background: rgba(0,0,0,.5); position: fixed; left: 0; top: 0;}
			.mobile-content{width: 800px; overflow:auto; height: 500px; background: #FFFFFF; margin: 50px auto 0; border-radius: 5px; padding: 20px;}
			.mobile-table{width: 100%; border-top: 1px solid #000000; border-left: 1px solid #000000; margin-top: 10px; text-align: center;}
			.mobile-table td{border-bottom: 1px solid #000000; border-right: 1px solid #000000; padding: 5px 10px;}
			.mobile-table td.titTd{width: 100px; background: #e5e5e5; text-align: right;}
			.add-mob{text-align: left; margin-top: 50px;}
			.add-mob .bor{border: 1px solid #000; padding: 5px 10px; box-sizing: border-box;}
		</style>
	</head>
	<body contextpath="<%=request.getContextPath()%>" style="background:none;">
		<div style="padding:20px 10px;">
			<div class="tab-btn-dv clearFix" style="width: 252px; float: left;">
				<a class="active" href="javascript:;">催收记录</a>
				<a onclick="pageJump(this)" data-type='firstTrialsee' href="javascript:;">授信详情</a>
			</div>
			<a href="javascript:;" id="more_btn" style="display: inline-block;  margin-top: 6px; margin-left:30px;">更多手机号</a>
			<div class="tab-con-dv" style="margin-bottom:30px;">
				<div class="tabCon" id="tabCon1">
					<p class="table-tit">逾期情况</p>
					<table id="overdueTable" class="dai-table tdh30" style="width: 70%" cellpadding="0" cellspacing="0">
						<thead>
							<tr>
								<td width="16%" style="font-weight: bolder;">逾期账单期数</td>
								<td width="12%" style="font-weight: bolder;">本金</td>
								<td width="12%" style="font-weight: bolder;">利息</td>
								<td width="12%" style="font-weight: bolder;">罚息</td>
								<td width="12%" style="font-weight: bolder;">应收每期手续费</td>
								<td width="12%" style="font-weight: bolder;">应收金额</td>
								<td width="12%" style="font-weight: bolder;">实收金额</td>
								<td width="12%" style="font-weight: bolder;">未收金额</td>
							</tr>
						</thead>
						<tbody>
							
						</tbody>
					</table>
					<p class="table-tit">催收记录</p>
					<table id="collectuionTable" class="dai-table tdh30" cellpadding="0" cellspacing="0">
						<thead>
							<tr>
								<td width="7%" style="font-weight: bolder;">催收方式</td>
								<td width="8%" style="font-weight: bolder;">催收对象</td>
								<td width="11%" style="font-weight: bolder;">电话</td>
								<td width="8%" style="font-weight: bolder;">还款对象</td>
								<td width="8%" style="font-weight: bolder;">联络结果</td>
								<td width="8%" style="font-weight: bolder;">承诺金额</td>
								<td width="8%" style="font-weight: bolder;">承诺日期</td>
								<td width="15%" style="font-weight: bolder;">催收备注</td>
								<td width="10%" style="font-weight: bolder;">添加日期</td>
								<td width="8%" style="font-weight: bolder;">催收人员</td>
								<td width="9	%" style="font-weight: bolder;">标记</td>
							</tr>
						</thead>
						<tbody>
							
						</tbody>
					</table>
					<p class="table-tit">催收详情</p>
					<form id="OperateFrm">
						<table id="collectionOperate" class="coll-detail-table" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td class="tit">催收形式:</td>
									<td>
										<input name="lendApplyId" id="lendApplyId" type="hidden" />
										<select name="collectType" class="w100">
								          <option value="124601">电话</option>
								          <option value="124602">短信</option>
								          <option value="124603">网络</option>
								        </select>
									</td>
									<td class="tit">催收对象:</td>
									<td>
										<select name="collectTarget" id="collectTarget" class="w100">
								          <option value="5">单位电话</option>
								          <option value="0">本人</option>
								          <option value="1">联系人1</option>
								          <option value="2">联系人2</option>
								          <option value="3">联系人3</option>
								          <option value="4">其他</option>
								        </select>
									</td>
									<td class="tit">电话:</td>
									<td>
										<input id="collectTargetMobile" name="collectTargetMobile" class="w100" type="text" />
									</td>
								</tr>
								<tr>
									<td class="tit">还款对象:</td>
									<td>
										<select name="collectRepayTarget" class="w100">
								       		<option value="0">本人</option>
									        <option value="1">联系人1</option>
									        <option value="2">联系人2</option>
									        <option value="3">联系人3</option>
									        <option value="4">其他</option>
								        </select>
									</td>
									<td class="tit">联络结果:</td>
									<td>
										<select name="collectContactResult" class="w100">
								        	<option value="124701">另设日联系</option>
											<option value="124702">无人接听</option>
											<option value="124703">拒接</option>
											<option value="124704">关机</option>
											<option value="124705">空号</option>
											<option value="124706">非本人接听</option>
											<option value="124707">承诺还款</option>
								        </select>
									</td>
									<td class="tit">拉入黑名单:</td>
									<td>
										<select id="isBlackListSelect" name="isBlackList" class="w100">
											<option value="0">否</option>
								        	<option value="1">是</option>
								        </select>
									</td>
								</tr>
								<tr>
									<td class="tit">承诺还款金额:</td>
									<td>
										<input name="promiseRepayMoney" class="w100" type="text" />
									</td>
									<td class="tit">承诺还款日期:</td>
									<td colspan="3">
											<input id="" class="inpWidth" name="promiseRepayDate"
										loxiaType="date" trim="true"   class="w100" style="width: 120px;"/>
									</td>
								</tr>
								<tr>
									<td class="tit">是否失联:</td>
									<td>
										<select name="isOutContact" class="w100">
											<option value="0">否</option>
								        	<option value="1">是</option>
								        </select>
									</td>
									<td class="tit">是否放弃:</td>
									<td colspan="3">
										<select name="isGiveUp" class="w100">
											<option value="0">否</option>
								        	<option value="1">是</option>
								        </select>
									</td>
								</tr>
								<tr>
									<td class="tit">催收备注:</td>
									<td colspan="5">
										<textarea name="memo" style="width: 100%; height: 200px; resize:none; padding: 5px; box-sizing:border-box;"  maxlength="150"></textarea>
									</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td class="tf-btn" colspan="6">
										<!-- <a href="javascirpt:;" id="historyBtn">返回催收列表</a> -->
										<a href="javascript:;" id="addCollection">保存</a>
										<!-- <a>取消</a> -->
									</td>
								</tr>
							</tfoot>
						</table>
					</form>
					
					<div style=""><span class="table-tit">催收总结</span><input style="margin-left:20px;" type="button" value="添加" id="addCollectionSummary"  /> </div>
					<style>
						.collection-dv{margin-bottom: 20px;}
						.collection-dv ul{height:25px; border-left:1px solid #000;}
						.collection-ul li{list-style: none; float:left; height:25px; line-height:25px; border-top:1px solid #000; border-right:1px solid #000; padding: 0 20px;}
						.collection-ul li input[type=button]{margin-bottom: 3px; margin-right: 15px;}
					</style>
					<div id="collecLists" >
					
					</div>
				</div>
			</div>
		</div>
		<div class="more-mobile-dv" id="more_mobile">
			<div class="mobile-content">
				<h4>更多手机号</h3>
				<table id="mobile_table" class="mobile-table" cellpadding="0" cellspacing="0">
					<thead>
						<tr>
							<td width="20%" style="font-weight: bolder;">添加时间</td>
							<td width="16%" style="font-weight: bolder;">添加人员</td>
							<td width="16%" style="font-weight: bolder;">手机号码</td>
							<td width="48%" style="font-weight: bolder;">备注</td>
						</tr>
					</thead>
					<tbody>
						
					</tbody>
				</table>
				<form id="addMobileFrm">
					<table class="mobile-table add-mob" cellpadding="0" cellspacing="0">
						<tbody>
							<tr>
								<td class="titTd">手机号码:</td>
								<td>
									<input name="mobile" class="bor" type="text" />
									<input type="hidden" name="lendApplyId" id="addFrmInp" />
								</td>
							</tr>
							<tr>
								<td class="titTd">备注:</td>
								<td>
									<textarea class="bor" id="memoText" name="memo" style="width: 100%; height: 50px; resize: none;"></textarea>
								</td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td class="tf-btn" colspan="2">
									<a href="javascript:;" id="addMobile">保存</a>
									<a href="javascript:;" id="close_more">关闭</a>
								</td>
							</tr>
						</tfoot>
					</table>
				</form>
			</div>
		</div>
	</body>
</html>
