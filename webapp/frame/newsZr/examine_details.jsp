<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/newsZr/style_zr.css'/>"/> 
<link rel="stylesheet" type="text/css" href="<c:url value='/scripts/kindeditor/themes/default/default.css'/>"/> 
<link rel="stylesheet" type="text/css" href="<c:url value='/scripts/kindeditor/plugins/code/prettify.css'/>"/> 
<title>客户列表</title>
<style>
	.tabcustomPeo{background-color:#fff;}
	.tabcustomPeo tr th:last-child{border-right:none;}
	.tabcustomPeo tr td:last-child{border-right:none;}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div class="ui-tabs-panel ui-corner-bottom ui-helper-clearfix bor-zr" id="div-1">
		<div class="use-detail-left">
			<div class="refuse-dv" id="refuse_dv">
				<table class="refuse-table">
					<thead>
						<tr>
							<td><label>拒绝时间</label></td>
							<td><label>拒绝原因</label></td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>16-05-23 13:44</td>
							<td>拒绝原因拒绝原因拒绝原因拒绝原因拒绝原因</td>
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
					<tr>
						<td><a class="ssId">C0001010</a></td>
						<td>50000</td>
						<td>0</td>
						<td></td>
						<td></td>
						<td>(2016)sbxd00003</td>
						<td>16-05-23 13:44</td>
						<td>16-05-23 13:44</td>
					</tr>
					<tr>
						<td><a class="ssId">C0001010</a></td>
						<td>50000</td>
						<td>0</td>
						<td></td>
						<td></td>
						<td>(2016)sbxd00003</td>
						<td>16-05-23 13:44</td>
						<td>16-05-23 13:44</td>
					</tr>
				</tbody>
			</table>
			<div class="tit-detail-left">
				基础信息
			</div>
			<table id="essential_dv" class="table-text-left tabcustomPeo left-user-table" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td>
							<span class="td-text">姓名：周锐</span>
							<a class="point-color">百度数据</a>
						</td>
						<td class="w85">已实名</td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">身份证：520324198304030098</span>
							<span class="td-text">姓别：女</span>
							<a class="point-color">百度数据</a>
							<a class="point-color">涉诉查询</a>
						</td>
						<td class="w85">审核通过</td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<span class="td-text">手机号：18117528937</span>
							<span class="td-text">归属地：上海  </span>
							<a class="point-color">电话匹配度1条</a>
						</td>
						<td class="w85"></td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<span class="td-text">获取本机号码：18117523333</span>
							<span class="td-text">归属地：湖南    </span>
							<a class="point-color">电话匹配度1条</a>
						</td>
						<td class="w85 typeTextError">异常</td>
						<td class="w85">备注</td>
					</tr>
					<tr>
						<td>
							<span class="td-text">通讯录数量：239</span>
							<a class="point-color">查看通讯录</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<span class="td-text">短信数量：322</span>
							<a class="point-color">查看短信</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<span class="td-text">通话记录数量：22</span>
							<span class="td-text">来电次数：34</span>
							<span class="td-text">与联系人来电次数：6</span>
							<a class="point-color">查看通话记录</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<span class="td-text">登录次数：74</span>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<span class="td-text">注册时间：2015-03-03 13:33</span>
							<span class="td-text">最后登录时间：2016-03-25 22:30</span>
							<a class="point-color">查看登录记录</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<span class="td-text">IP地址：192.168.9.308</span>
							<span class="td-text">（注册地：上海徐汇  上次登录地：广州   最后登录地：上海徐汇）</span>
							<a class="point-color"> 查看详细IP记录</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<span class="td-text">手机参数：SanSung3387</span>
							<a class="point-color">百度数据</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">房产状况：名下有房</span>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">常住地址：上海浦东新区花木路111号2号楼304</span>
							<a class="point-color">lbs定位地址：距离此地3KM</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">联系人一：父亲 刘辉 18117679879</span>
							<span class="td-text">归属地：浙江</span>
							<a class="point-color">电话匹配度1条</a>
							<span class="td-text">此号在通讯录中，名称为“老刘”</span>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">联系人二：朋友 杨晶晶 18117249879</span>
							<span class="td-text">归属地：广东</span>
							<a class="point-color">电话匹配度0条</a>
							<span class="td-text">此号在通讯录中，名称为“晶晶”</span>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85"></td>
					</tr>
				</tbody>
			</table>
			<div class="tit-detail-left">
				工作信息&nbsp;&nbsp;&nbsp;<a class="point-color"></a>
			</div>
			<table id="work_dv" class="table-text-left tabcustomPeo left-user-table" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">行业：金融行业</span>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">工作岗位：产品经理</span>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">公司名称：上海友谊金融信息有限公司</span>
							<a class="point-color">百度数据</a>
							<a class="point-color">工商查询</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">单位地址：上海浦东新区碧波路222号</span>
							<a class="point-color">百度数据</a>
							<a class="point-color">lbs距离此地1KM内有3次</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">单位座机：021-32448766</span>
							<a class="point-color">电话匹配度1条</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">月均收入：5000元</span>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">公司邮箱：yuxiayuan@fjs.com</span>
						</td>
						<td class="w85 typeText">发送失败</td>
						<td class="w85"></td>
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
						<td class="w85 typeText">已授权</td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">芝麻信用：700分</span>
							<a data-title="央行征信报告" data-type="null" class="point-color detail-lf-a">查看</a>
						</td>
						<td class="w85 typeText">已授权</td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<span class="td-text">算话个人消费特征</span>
							<a href="#" data-title="算话个人消费特征" data-type="shgrxftz" class="point-color detail-lf-a">查看</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<span class="td-text">万象分：500分</span>
							<a href="#" data-title="万象分" data-type="wxf" class="point-color detail-lf-a">查看</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">手机详单</span>
							<a href="#" href="#" data-title="手机详单" data-type="sjxd" class="point-color detail-lf-a">查看</a>
						</td>
						<td class="w85 typeText">已授权</td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">住房公积金</span>
							<a href="#" data-title="公积金" data-type="gjj" class="point-color detail-lf-a">查看</a>
						</td>
						<td class="w85 typeText">已授权</td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">账单信息</span>
							<a data-title="央行征信报告" data-type="null" class="point-color detail-lf-a">查看</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85"></td>
					</tr>
					<tr>
						<td>
							<sup class="sup-color">*</sup>
							<span class="td-text">工资流水</span>
							<a data-title="工资流水" data-type="null" class="point-color detail-lf-a">查看</a>
						</td>
						<td class="w85 typeText"></td>
						<td class="w85"></td>
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
						<td>银行卡号</td>
						<td>预留手机号</td>
						<td>验证状态</td>
						<td>是否绑第三方支付</td>
						<td>是否默认卡</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>招商银行</td>
						<td>633235439053495</td>
						<td>18117528937</td>
						<td>已验证/等待验证</td>
						<td>易联</td>
						<td>是</td>
					</tr>
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
						<a href="#nav-dv-2">催收记录</a>
					</li>
					<li>
						<a href="#nav-dv-3">短信记录</a>
					</li>
					<li>
						<a href="#nav-dv-4">授信记录</a>
					</li>
					<li>
						<a href="#nav-dv-5">用户修改记录</a>
					</li>
				</ul>
			</nav>
			<div id="nav-content-dv">
				<div class="nav-dv" id="nav-dv-1">
					<div class="tab-dv-a" id="detail-ri-tab">
						<a class="point-color" data-type="sczl" data-title="上传资料">上传资料</a>
						<a data-type="yhzxbg" data-title="央行征信报告">央行征信报告</a>
						<a data-type="shgrxftz" data-title="算话个人消费特征">算话个人消费特征</a>
						<a data-type="wxf" data-title="万象分">万象分</a>
						<a data-type="sjxd" data-title="手机详单">手机详单</a>
						<a data-type="gjj" data-title="公积金">公积金</a>
						<a data-type="txl" data-title="通讯录">通讯录</a>
						<a data-type="dxjl" data-title="短信记录">短信记录</a>
						<a data-type="thjl" data-title="通话记录">通话记录</a>
						<a data-type="dlsj_IP" data-title="登录时间及IP">登录时间及IP</a>
						<a data-type="sscx" data-title="涉诉查询">涉诉查询</a>
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
					<p class="tit-1">
						<strong>借款编号：</strong><span>230049999</span>
						<strong>借款时间：</strong><span>2016-05-04</span>
					</p>
					<div class="dv-table">
						<p class="tit-2">
							<strong>M2：</strong><span>林海</span>
							<strong>作业时间：</strong><span>2016-05-06 09:00</span>
						</p>
						<table class="def-table cs-table" cellpadding="0" cellspacing="0">
							<thead>
								<tr class="BgColor">
									<td><strong>电催时间</strong></td>
									<td><strong>电催号码</strong></td>
									<td><strong>约定还款日</strong></td>
									<td class="w33"><strong>电催详情</strong></td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>2016-05-06  12:34</td>
									<td>手机号码<br />18917347663</td>
									<td>2016-10-06</td>
									<td></td>
								</tr>
								<tr>
									<td>2016-05-06  12:34</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>2016-05-06  12:34</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>2016-05-06  12:34</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</tbody>
						</table>
						<p class="tit-2">
							<strong>M1：</strong><span>张三</span>
							<strong>作业时间：</strong><span>2016-05-01 08:00 —— 2014-05-06 09:00</span>
						</p>
						<p class="tit-2">
							<strong>M1：</strong><span>李四</span>
							<strong>作业时间：</strong><span>2016-05-01 08:00 —— 2014-05-06 09:00</span>
						</p>
					</div>
					<p class="tit-1 mrtb10">
						<strong>借款编号：</strong><span>230043399</span>
						<strong>借款时间：</strong><span>2016-03-04</span>
					</p>
				</div>
				<div class="nav-dv" id="nav-dv-3">
					<div class="dv-table">
						<table class="def-table cs-table" cellpadding="0" cellspacing="0">
							<thead>
								<tr class="BgColor">
									<td><strong>发送时间</strong></td>
									<td><strong>发送号码</strong></td>
									<td><strong>操作人</strong></td>
									<td class="w33"><strong>短信内容</strong></td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>2016-05-06  12:34</td>
									<td>手机号码<br />18917347663</td>
									<td>李刚</td>
									<td></td>
								</tr>
								<tr>
									<td>2016-05-06  12:34</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>2016-05-06  12:34</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>2016-05-06  12:34</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</tbody>
						</table>
						<p class="showPage">每页显示最近10条短信</p>
					</div>
				</div>
				<div class="nav-dv" id="nav-dv-4">
					<div class="sxjl-dv">
						<p class="sx-tit">
							<span>审核人：王城</span>
							<span>审核时间：2016-5-23 17:45</span>
						</p>
						<table class="def-table" cellpadding="0" cellspacing="0">
							<thead>
								<tr class="BgColor">
									<td class="w85">审核状态</td>
									<td class="w85">初审金额</td>
									<td>初审意见</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>初审通过</td>
									<td>5000元</td>
									<td>通过</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="sxjl-dv">
						<p class="sx-tit">
							<span>审核人：王城</span>
							<span>审核时间：2016-5-23 17:45</span>
						</p>
						<table class="def-table" cellpadding="0" cellspacing="0">
							<thead>
								<tr class="BgColor">
									<td class="w85">审核状态</td>
									<td class="w33">初审意见</td>
									<td>拒绝原因</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>初审拒绝</td>
									<td>无还款能力</td>
									<td>XXXX</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="sxjl-dv">
						<p class="sx-tit">
							<span>审核人：王城</span>
							<span>审核时间：2016-5-23 17:45</span>
						</p>
						<table class="def-table" cellpadding="0" cellspacing="0">
							<thead>
								<tr class="BgColor">
									<td class="w85">审核状态</td>
									<td class="w33">补件理由</td>
									<td>补件备注</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>补件</td>
									<td>盖章不清晰</td>
									<td>通知补全资料，补件内容为：住宅地址</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="sxjl-dv">
						<p class="sx-tit">
							<span>审核人：王城</span>
							<span>审核时间：2016-5-23 17:45</span>
						</p>
						<table class="def-table" cellpadding="0" cellspacing="0">
							<thead>
								<tr class="BgColor">
									<td class="w85">审核状态</td>
									<td class="w85">补件理由</td>
									<td>补件备注</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>补件</td>
									<td>盖章不清晰</td>
									<td>通知补全资料，补件资料内容为：住宅地址</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="nav-dv" id="nav-dv-5">
					<div class="dv-table">
						<div class="seach-dv">
							<span>字段名称：</span>
							<select class="text_sketch" id="u1705_input">
				                <option value="所有字段" selected="">所有字段</option>
				                <option value="行业">行业</option>
				                <option value="工作岗位">工作岗位</option>
				                <option value="公司名称">公司名称</option>
				                <option value="单位地址">单位地址</option>
				                <option value="单位座机">单位座机</option>
				                <option value="月均收入">月均收入</option>
				                <option value="公司邮箱">公司邮箱</option>
				                <option value="房产状况">房产状况</option>
				                <option value="常住地址">常住地址</option>
				                <option value="联系人一">联系人一</option>
				                <option value="联系人二">联系人二</option>
				                <option value="产调信息">产调信息</option>
				                <option value="账单信息">账单信息</option>
				            </select>
				            <span>修改日期：</span>
							<input type="text" />
							——
							<input type="text" />
							<a href="javascript:;">查询</a>
						</div>
						<table class="tabcustomPeo" cellpadding="0" cellspacing="0">
							<thead>
								<tr class="BgColor">
									<td class="w120">字段名称</td>
									<td class="w120">修改时间</td>
									<td>修改内容</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>行业</td>
									<td>2016-5-4 23:34</td>
									<td>金融</td>
								</tr>
								<tr>
									<td>单位座机</td>
									<td>2016-5-4 23:34</td>
									<td>021-93334444</td>
								</tr>
								<tr>
									<td>房产信息</td>
									<td>2016-5-4 23:34</td>
									<td>
										<a class="point-color" href="javascript:;">查看图片</a>
									</td>
								</tr>
								<tr>
									<td>行业</td>
									<td>2016-5-4 23:34</td>
									<td>金融</td>
								</tr>
								<tr>
									<td>单位座机</td>
									<td>2016-5-4 23:34</td>
									<td>021-93334444</td>
								</tr>
								<tr>
									<td>房产信息</td>
									<td>2016-5-4 23:34</td>
									<td>
										<a class="point-color" href="javascript:;">查看图片</a>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/scripts/newsZr/dialog.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/scripts/newsZr/htmlLoad.js?v=1.0.1'/>"></script>
	<script type="text/javascript" src="<c:url value='/scripts/kindeditor/kindeditor.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/scripts/kindeditor/lang/zh-CN.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/scripts/kindeditor/plugins/code/prettify.js'/>"></script>
</body>
</html>