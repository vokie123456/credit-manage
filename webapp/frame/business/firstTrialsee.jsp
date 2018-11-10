<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/newsZr/style_zr.css'/>"/> 
<link rel="stylesheet" type="text/css" href="<c:url value='/scripts/kindeditor/themes/default/default.css'/>"/> 
<link rel="stylesheet" type="text/css" href="<c:url value='/scripts/kindeditor/plugins/code/prettify.css'/>"/> 
<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/my-jquery-ajax.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/newsZr/dialog.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/newsZr/htmlLoadsee.js?v=2.1.0'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery.form.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/kindeditor/kindeditor.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/kindeditor/lang/zh-CN.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/kindeditor/plugins/code/prettify.js'/>"></script>
<title>初审详情</title>
<style>
	.tabcustomPeo{background-color:#fff;}
	.tabcustomPeo tr th:last-child{border-right:none;}
	.tabcustomPeo tr td:last-child{border-right:none;}
	.runcode{background:url(../../images/newsZr/iconDate.gif) center right no-repeat #f7f7f7;cursor:pointer;}
	@media screen and (max-width:1440px){
		.bor-zr{width:1100px;}
		.use-detail-left{
			width:50%;
		}
		.use-file-right{
			width:48%;
		}
		#detail-ri-content{width:55%;}
		.tit-detail-right{width:98%;}
	}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<input type="hidden" name="project_id" id="project_id" value="${project_id }">
	<input type="hidden" name="client_id" id="client_id" value="${client_id }">
	<input type="hidden" name="taskid" id="taskid" value="${taskid }">
	<input type="hidden" name="user_id" id="user_id" value="${user_id }">
	<input type="hidden" name="creditId" id="creditId" value="${creditId }">
	<input type="hidden" name="auditor_name" id="auditor_name" />
	<input type="hidden" name="edit_status" id="edit_status" value="${edit_status == null?1:edit_status }">
	<div class="ui-tabs-panel ui-corner-bottom ui-helper-clearfix bor-zr" id="div-1">
		<div class="use-detail-left">
			<div class="refuse-dv" id="refuse_dv">
				<table class="refuse-table">
					<thead>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="tit-detail-left">
				历史贷款记录
			</div>
			<table id="history_dv" class="tabcustomPeo" cellpadding="0" cellspacing="0">
				<thead>
					<th>授信编号</th>

					<th>贷款编号</th>
					<th>申请金额</th>
					<th>授信金额</th>
					
					<th>提现金额</th>
					
					<th>房屋净值</th>
					<th>预测年可支配收入</th>
					<th>合同编号</th>
					<th>申请授信时间</th>
					<th>审核完成时间</th>

					<th>放款时间</th>
					<th>是否逾期</th>
				</thead>
				<tbody>
					
				</tbody>
			</table>
			<div class="tit-detail-left">
				基础信息
			</div>
			<table id="essential_dv" class="table-text-left tabcustomPeo left-user-table" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td>
							<span class="td-text">姓名：<span id="userContent0"></span></span>
							<a class="point-color" id="userContent0_1">百度数据</a>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>产品:<span id="productMaxName"></span></span>&nbsp;&nbsp;&nbsp;&nbsp;<span>期限:<span id="applicationProductPeriod"></span><span id="productUnitName"></span></span>&nbsp;&nbsp;&nbsp;&nbsp;
							<span class="td-text">意向贷款金额：<span id="userContent100"></span></span>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</td>
						<td class="w85" id="realName_status">未认证</td>
						<td class="w85">
							<a class="essential-add-a" data-code="0">备注</a>
						</td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">身份证：<span id="userContent1"></span></span>
							<span class="td-text">姓别：<span id="userContent2"></span></span>
							<a class="point-color" id="userContent1_1">360数据</a>
							<a id="userContent1_2"></a>
						</td>
						<td class="w85" id="examine_status"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="1">备注</a>
						</td>
					</tr>
					<tr>
						<td>
							<span class="td-text">注册手机号：<span id="userContent3"></span></span>
							<span class="td-text">归属地：<span id="userContent4"></span></span>
							<a class="point-color">此号码在<span id="userContent5">0</span>台手机上使用过</a>
							<span class="td-text">手机服务密码：<span id="userContent101"></span></span>
						</td>
						<td class="w85"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="2">备注</a>
						</td>
					</tr>
					<tr>
						<td>
							<span class="td-text">获取本机号码：<span id="userContent6"></span></span>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<span class="td-text"><span id="userContent102"></span></span>
						</td>
						<td class="w85 typeTextError" id="myPhone_status"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="3">备注</a>
						</td>
					</tr>
					<tr>
						<td>
							<span class="td-text">通讯录数量：<span id="userContent7">0</span></span>
							<a class="point-color detail-lf-a" data-title="通讯录" data-type="txl">查看通讯录</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="4">备注</a>
						</td>
					</tr>
					
					<tr>
						<td>
							<span class="td-text">客户来源：<span id="userContent200" style="font-weight:bold;"></span></span><span id="userContent500"></span>
							<span  id = "userContent501"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 渠道：<span id = "userContent502" style="font-weight:bold;"> </span>
						<td class="w85 typeText"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="4">备注</a>
						</td>
					</tr>
					
					<tr>
						<td>
							<span class="td-text">短信数量：<span id="userContent8">0</span></span>
							<a class="point-color detail-lf-a" data-title="短信记录" data-type="dxjl">查看短信</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="5">备注</a>
						</td>
					</tr>
					<tr>
						<td>
							<span class="td-text">通话记录数量：<span id="userContent9">0</span></span>
							<span class="td-text">来电次数：<span id="userContent10">0</span></span>
							<span class="td-text">与联系人来电次数：<span id="userContent11">0</span></span>
							<a class="point-color detail-lf-a" data-title="通话记录" data-type="thjl">查看通话记录</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="6">备注</a>
						</td>
					</tr>
					<tr>
						<td>
							<span class="td-text">登录次数：<span id="userContent12">0</span></span>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="7">备注</a>
						</td>
					</tr>
					<tr>
						<td>
							<span class="td-text">注册时间：<span id="userContent13"></span></span>
							<span class="td-text">最后登录时间：<span id="userContent14"></span></span>
							<a class="point-color detail-lf-a" data-title="登录记录" data-type="dlsj_IP">查看登录记录</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="8">备注</a>
						</td>
					</tr>
					<tr>
						<td>
							<span class="td-text">IP地址：<span id="userContent15"></span></span>
							<span class="td-text">（注册地：<span id="userContent16"></span>  上次登录地：<span id="userContent17"></span>   最后登录地：<span id="userContent18"></span>）</span>
							<a class="point-color detail-lf-a" data-title="登录记录" data-type="dlsj_IP"> 查看详细IP记录</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="9">备注</a>
						</td>
					</tr>
					<tr>
						<td>
							<span class="td-text">手机参数：<span id="userContent19"></span></span>
							<a class="point-color" id="userContent19_1">百度数据</a>
							<a class="point-color">此设备有<span id="userContent19_2">0</span>个用户登录过</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="10">备注</a>
						</td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">房产状况：<span id="userContent20"></span></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<span class="td-text">房产数：<span id="userContent20_num"></span></span>
						</td>
						<td class="jp_btn">
							<a class="point-color detail-lf-a" href="#fczl_dv">查看房产照片</a>
						</td>
						<td class="w85">
							<a class="essential-add-a" data-code="11">备注</a>
						</td>
					</tr>
					<tr>
						<td id="userContent20_hose"></td>
						<td class="jp_btn">
							<!-- <a class="point-color detail-lf-a" href="#fczl_dv">查看房产照片</a> -->
						</td>
						<td></td>
					</tr>
					<tr>
						<td id="userContent20_accou"></td>
						<td class="jp_btn"><!-- <a class="point-color detail-lf-a" href="#zdxx_dv">查看账单</a> --></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">常住地址：<span id="userContent21"></span></span>
							</a>
						</td>
						<td class="w85 typeText"><a class="point-color detail-lf-a" data-type="dlsj_IP" data-title="登录时间及IP">登陆时间及IP</a></td>
						<td class="w85">
							<a class="essential-add-a" data-code="12">备注</a>
						</td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">联系人一：<span id="userContent23"></span>	<span id="userContent24"></span> <span id="userContent25"></span></span>
							<span class="td-text">此号在通讯录中，名称为“<span id="userContent26"></span>”</span>
							<span class="td-text">与借款人通话总次数<span id="userContent26t"></span>次</span>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="13">备注</a>
						</td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">联系人二：<span id="userContent27"></span> <span id="userContent28"></span> <span id="userContent29"></span></span>
							<span class="td-text">此号在通讯录中，名称为“<span id="userContent30"></span>”</span>
							<span class="td-text">与借款人通话总次数<span id="userContent30t"></span>次</span>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="14">备注</a>
						</td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">联系人三：<span id="userContent104"></span> <span id="userContent105"></span> <span id="userContent106"></span></span>
							<span class="td-text">此号在通讯录中，名称为“<span id="userContent107"></span>”</span>
							<span class="td-text">与借款人通话总次数<span id="userContent107t"></span>次</span>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="15">备注</a>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="tit-detail-left">
				工作信息&nbsp;&nbsp;&nbsp;<a class="point-color"><label id="work_edit_num"></label></a>
			</div>
			<table id="work_dv" class="table-text-left tabcustomPeo left-user-table" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">行业：<span id="information1"></span></span>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="15">备注</a>
						</td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">工作岗位：<span id="information2"></span></span>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<span class="td-text">工作状态：<span id="information22"></span></span>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="16">备注</a>
						</td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">公司名称：<span id="information3"></span></span>
							<a class="point-color" id="information3_1">百度数据</a>
							<a class="point-color" id="information3_2">工商查询</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="17">备注</a>
						</td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">单位地址：<span id="information4"></span></span>
							<a class="point-color" id="information4_1">百度数据</a></a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="18">备注</a>
						</td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">单位座机：<span id="information6"></span></span>
							<a class="point-color"><span id="information7"></span></a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="19">备注</a>
						</td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">月均收入：<span id="information8">0</span>元</span>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="20">备注</a>
						</td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">公司邮箱：<span id="information9"></span></span>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="21">备注</a>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="tit-detail-left">
				其它信息
			</div>
			<table class="table-text-left tabcustomPeo left-user-table" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">央行征信报告</span>
							<a href="#" data-title="央行征信报告" data-type="yhzxbg" class="point-color detail-lf-a">查看</a>
						</td>
						<td class="w85 typeText" id="yhzx_status">已授权</td>
						<td class="w85">
							<a class="essential-add-a" data-code="22">备注</a>
						</td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">芝麻信用：<label id="client_other_zm_score">0</label>分</span>
						</td>
						<td class="w85 typeText" id="zmsq_status">已授权</td>
						<td class="w85">
							<a class="essential-add-a" data-code="23">备注</a>
						</td>
					</tr>
					<!-- <tr>
						<td>
							<span class="td-text">个人消费特征</span>
							<a href="#" data-title="个人消费特征" data-type="shgrxftz" class="point-color detail-lf-a">查看</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="24">备注</a>
						</td>
					</tr> -->
					<!-- <tr>
						<td>
							<span class="td-text">万象分：<label id="client_other_wxf_score">0</label>分</span>
							<a href="#" data-title="万象分" data-type="wxf" class="point-color detail-lf-a">查看</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="25">备注</a>
						</td>
					</tr> -->
			<!-- 		<tr>
						<td>
							<sup class="sup-color"></sup>
							<span class="td-text">住房公积金</span>
							<a href="#" data-title="公积金" data-type="gjj" class="point-color detail-lf-a">查看</a>
						</td>
						<td class="w85 typeText" id="gjj_status">已授权</td>
						<td class="w85">
							<a class="essential-add-a" data-code="26">备注</a>
						</td>
					</tr> -->
					<!-- <tr>
						<td>
							<span class="td-text">淘宝帐号：</span>
							<span id="userName_tb"></span>
							<span style="margin-left:40px;">淘宝密码：</span>
							<span id="passWard_tb"></span>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="27">备注</a>
						</td>
					</tr>
					<tr>
						<td>
							<span class="td-text">京东帐号：</span>
							<span id="userName_jd"></span>
							<span style="margin-left:40px;">京东密码：</span>
							<span id="passWard_jd"></span>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="28">备注</a>
						</td>
					</tr> -->
					<tr>
						<td>
							<!-- <sup class="sup-color">*</sup> -->
							<span class="td-text">账单信息</span>
							<a href="#" data-title="账单信息" data-type="sczl" class="point-color detail-lf-a">查看</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="29">备注</a>
						</td>
					</tr>
					<!-- <tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">工资流水</span>
							<a href="#" data-title="工资流水" data-type="sczl" class="point-color detail-lf-a">查看</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85">
							<a class="essential-add-a" data-code="30">备注</a>
						</td>
					</tr> -->
					<tr>
						<td>
							<span class="td-text">黑名单(惠誉)</span>
							<c:if test="${edit == true }"><a id="hyrStatusBtn" style="color: #009900; margin-right: 20px; text-decoration: none;" href="javascript:;">点击获取</a></c:if>
							<label id="hyrStatus"></label>
						</td>
						<td class="w85 typeText" id="hmd_status">已授权</td>
						<td class="w85">
							<a class="essential-add-a" data-code="1024">备注</a>
						</td>
					</tr>
					<tr>
					   <td>
							<span class="td-text">蜜罐数据</span>
						    <c:if test="${edit == true }"><a id="mGBtn" style="color: #009900; margin-right: 20px; text-decoration: none;" href="javascript:;">点击获取</a></c:if>
						</td>
						<td class="w85 typeText" id="mG_status"></td>
						<td class="w85">
						   <a class="essential-add-a" data-code="1024">备注</a>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="tit-detail-left">
				银行卡信息
			</div>
			<table id="bank_dv" class="table-text-left tabcustomPeo" cellpadding="0" cellspacing="0">
				<thead>
					<tr>
						<td>银行名称</td>
						<td>卡类型</td>
						<td>银行卡号</td>
						<td>预留手机号</td>
						<td>验证状态</td>
					<!-- 	<td>是否绑第三方支付</td> -->
						<td>是否默认卡</td>
						<td>绑卡合同编号</td>
					</tr>
				</thead>
				<tbody>
					
				</tbody>
			</table>
		</div>
		<div class="use-file-right">
			<nav>
				<ul class="nav-file-zr" id="nav-li-a">
					<li class="active">
						<a href="#nav-dv-1">资料查看</a>
					</li>
					<li>
						<a href="#nav-dv-2">电话核查</a>
					</li>
					<li>
						<a href="#nav-dv-4">审核记录</a>
					</li>
					<!-- <li>
						<a data-code="5" href="#nav-dv-5">修改记录</a>
					</li>  -->
				</ul>
			</nav>
			<div id="nav-content-dv">
				<div class="nav-dv" id="nav-dv-1">
					<div class="tab-dv-a" id="detail-ri-tab">
						<a class="point-color" data-type="sczl" data-title="上传资料">上传资料</a>
						<a data-type="yhzxbg" data-title="央行征信报告">央行征信报告</a>
						<a data-type="yhzxbgnew" data-title="新央行征信报告">新央行征信报告</a>
					<!-- 	<a data-type="shgrxftz" data-title="个人消费特征">个人消费特征</a> -->
						<!-- <a data-type="wxf" data-title="万象分">万象分</a> -->
						<!-- <a data-type="sjxd" data-title="手机详单">手机详单</a> -->
						<!-- <a data-type="gjj" data-title="公积金">公积金</a> -->
						<a data-type="txl" data-title="通讯录">通讯录</a>
						<a data-type="dxjl" data-title="短信记录">短信记录</a>
						<a data-type="thjl" data-title="通话记录">通话记录</a>
						<a data-type="dlsj_IP" data-title="登录时间及IP">登录时间及IP</a>
						<!-- <a data-type="sscx" data-title="涉诉查询">涉诉查询</a> -->
						<a data-type="sjthbg" data-title="客户通话报告">手机通话报告</a>
						<a data-type="hmdbg" data-title="黑名单报告(惠誉)">黑名单报告</a>
						<a data-type="fqzbg" data-title="反欺诈报告">反欺诈报告</a>
						<a data-type="hysjhz" data-title="行业数据汇总">行业数据汇总</a>
					</div>
					<div class="content-zr ui-helper-clearfix">
						<div class="tit-detail-right">
							
						</div>
						<div id="detail-ri-content" class="ui-helper-clearfix">
							
						</div>
					</div>
					<div class="dialog-remarks">
						<!--<div class="panel-dv">
							<div class="panel-title">
								<strong>房产信息</strong>
								<a class="panel-close">x</a>
							</div>
							<div class="panel-content">
								
							</div>
							<div class="panel-foot">
								<button class="btn-ok">确认</button>
							</div>
						</div>-->
					</div>
				</div>
				<div class="nav-dv" id="nav-dv-2">
					<div class="dv-table">
						<p style="color:#000;">
							<strong>电调记录列表：</strong>
						</p>
						<table id="telephone_survey_list" class="def-table cs-table" cellpadding="0" cellspacing="0" style="width:630px;">
							<thead>
								<tr class="BgColor">
									<td><strong>审核人</strong></td>
									<td><strong>审核时间</strong></td>
									<td><strong>电话号码</strong></td>
									<td style="width:40%;"><strong>备注</strong></td>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
				</div>
				<div class="nav-dv" id="nav-dv-4" style="padding-right: 5px;">
					<style>
						#nav-dv-4 .sx-tit{padding: 10px 0; width: 100%; padding-left: 10px; box-sizing: border-box; border: 1px solid rgba(188, 188, 188, 1); zoom: 1;}
						#nav-dv-4 .sx-tit:after{
							content: "";
							display: block;
							height: 0;
							line-height: 0;
							font-size: 0;
							visibility: hidden;
							clear: both;
						}
						#nav-dv-4 .bgco{background: rgba(228, 228, 228, 1);}
						#nav-dv-4 .sx-tit span:first-child{float: left;}
						#nav-dv-4 .sx-tit span:last-child{float: right; margin-right: 30px;}
						#nav-dv-4 .w150{width: 150px;}
					</style>
					<c:set var="dd" value=""/>
					<c:forEach items="${tasks }" var="ite">
					<c:if test="${ite.creditCode != dd}">
						<p class="sx-tit bgco">
							<span>授信编号：${ite.creditCode}</span>
							<span>授信时间：${ite.createDate}</span>
						</p>
						<c:set var="dd" value="${ite.creditCode}" ></c:set>
					</c:if>
					<div class="sxjl-dv" style="width: 100%;">
						<p class="sx-tit" style="border-top: none; border-bottom: none;">
							<span>审核人1：${ite.user_name }</span>
							<span>审核时间：${ite.audit_date }</span>
						</p>
						<c:choose>
							<c:when test="${ite.taskOperCode == '100060201'}">
								<table class="def-table" cellpadding="0" cellspacing="0">
									<thead>
										<tr class="BgColor">
											<td class="w150">任务节点</td>
											<td class="w150">审核状态</td>
											<td class="w85">初审金额</td>
											<td>初审意见</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>${ite.task_name }&nbsp;</td>
											<td>${ite.task_oper_name }&nbsp;</td>
											<td>${ite.first_money }&nbsp;</td>
											<td>${ite.operReasonRemark }&nbsp;</td>
										</tr>
									</tbody>
								</table>
							</c:when>
							<c:when test="${ite.taskOperCode == '100060202'}">
								<table class="def-table" cellpadding="0" cellspacing="0">
									<thead>
										<tr class="BgColor">
											<td class="w150">任务节点</td>
											<td class="w150">审核状态</td>
											<td>初审意见</td>
											<td>拒绝原因</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>${ite.task_name }&nbsp;</td>
											<td>${ite.task_oper_name }&nbsp;</td>
											<td>${ite.operReasonRemark }&nbsp;</td>
											<td>${ite.oper_reason_name }&nbsp;</td>
										</tr>
									</tbody>
								</table>
							</c:when>
							<c:when test="${ite.taskOperCode == '100060203'}">
								<table class="def-table" cellpadding="0" cellspacing="0">
									<thead>
										<tr class="BgColor">
											<td class="w150">任务节点</td>
											<td class="w150">审核状态</td>
											<td>补件理由</td>
											<td>补件备注</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>${ite.task_name }&nbsp;</td>
											<td>${ite.task_oper_name }&nbsp;</td>
											<td>${ite.addMaterial }&nbsp;</td>
											<td>${ite.operReasonRemark }&nbsp;</td>
										</tr>
									</tbody>
								</table>
							</c:when>
							<c:when test="${ite.taskOperCode == '100060403'}">
								<table class="def-table" cellpadding="0" cellspacing="0">
									<thead>
										<tr class="BgColor">
											<td class="w150">任务节点</td>
											<td class="w150">审核状态</td>
											<td>退回原因</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>${ite.task_name }&nbsp;</td>
											<td>${ite.task_oper_name }&nbsp;</td>
											<td>${ite.operReasonRemark }&nbsp;</td>
										</tr>
									</tbody>
								</table>
							</c:when>
							<c:when test="${ite.taskOperCode == '100060401'}">
								<table class="def-table" cellpadding="0" cellspacing="0">
									<thead>
										<tr class="BgColor">
											<td class="w150">任务节点</td>
											<td class="w150">审核状态</td>
											<td class="w85">终审金额</td>
											<td class="w150">授信结束日</td>
											<td>终审意见</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>${ite.task_name }&nbsp;</td>
											<td>${ite.task_oper_name }&nbsp;</td>
											<td>${ite.final_money }&nbsp;</td>
											<td>${ite.finalTime }&nbsp;</td>
											<td>${ite.operReasonRemark }&nbsp;</td>
										</tr>
									</tbody>
								</table>
							</c:when>
							<c:when test="${ite.taskOperCode == '100060402'}">
								<table class="def-table" cellpadding="0" cellspacing="0">
									<thead>
										<tr class="BgColor">
											<td class="w150">任务节点</td>
											<td class="w150">审核状态</td>
											<td>终审意见</td>
											<td>拒绝原因</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>${ite.task_name }&nbsp;</td>
											<td>${ite.task_oper_name }&nbsp;</td>
											<td>${ite.operReasonRemark }&nbsp;</td>
											<td>${ite.oper_reason_name }&nbsp;</td>
										</tr>
									</tbody>
								</table>
							</c:when>
							<c:otherwise>
								<table class="def-table" cellpadding="0" cellspacing="0">
									<thead>
										<tr class="BgColor">
											<td class="w150">任务节点</td>
											<td class="w150">审核状态</td>
											<td>审核意见</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>${ite.task_name }&nbsp;</td>
											<td>${ite.task_oper_name }&nbsp;</td>
											<td>${ite.operReasonRemark }&nbsp;</td>
										</tr>
									</tbody>
								</table>
							</c:otherwise>
						</c:choose>
					</div>
					</c:forEach>
				</div>
			
			
				<div class="nav-dv" id="nav-dv-5">
					<div class="dv-table">
					 	<form id="xgjl_query">
							<div class="seach-dv">
								<input type="hidden" name="pageIndex" id="pageIndex_xgjl" />
								<input type="hidden" id="pageTotal_xgjl" />
								<input type="hidden" name="clientId" value="${client_id }">
								<span>字段名称</span>
								<input  type="text" name="fieldName"    />
								<!-- <input type="hidden" value="239" id="user_id1" name="userId"> -->
								<span>日期：</span>
								<input type="text" name="startDate" class="buyDate runcode" id="inp_xgjl_st">
								&mdash;&mdash;
								<input type="text" name="endDate" class="buyDate runcode" id="inp_xgjl_en">
								<script>
									$(function(){
										J('#inp_xgjl_st').calendar({ maxDate:'#inp_xgjl_en' });
										J('#inp_xgjl_en').calendar({ minDate:'#inp_xgjl_st' });
									})
								</script>
								<a href="javascript:;" id="xgjl_btn">查询</a>
							</div>
						</form>
						<table id="modify_list" class="def-table cs-table" cellpadding="0" cellspacing="0" style="width:630px;">
							<thead>
								<tr class="BgColor">
									<td><strong>字段名称</strong></td>
									<td><strong>修改人</strong></td>
									<td><strong>修改时间</strong></td>
									<td><strong>原内容</strong></td>
									<td><strong>修改内容</strong></td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>行业</td>
									<td>客户本人</td>
									<td>2016-05-06  12:34</td>
									<td>互联网</td>
									<td>金融</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="5" class="page-tdList">
										<a href="javascript:;" data-type="first">首页</a>
										<a href="javascript:;" data-type="prev">上一页</a>
										<a href="javascript:;" data-type="next">下一页</a>
										<a href="javascript:;" data-type="last">末页</a>
										
										<font id="dangqianye_xgjl"></font>  /  <font id="zongye_xgjl"></font>
									</td>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			
			</div>
		</div>
	</div>
</body>
</html>