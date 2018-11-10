<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/newsZr/style_zr.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/newsZr/photoGallery.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/scripts/kindeditor/themes/default/default.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/scripts/kindeditor/plugins/code/prettify.css'/>" />
<script type="text/javascript"
	src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/my-jquery-ajax.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/newsZr/WdatePicker/WdatePicker.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/newsZr/dialog.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/newsZr/jquery.photo.gallery.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/newsZr/lib/jquery.form.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/kindeditor/kindeditor.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/kindeditor/plugins/code/prettify.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/case_manage_detail.js'/>"></script>
<title>案件管理详情页</title>
<linkage:define />
<style>
#contentDv {padding-left: 5px;}
.originTitle {width: 100%;margin-left: 8px;background: #e4e4e4;}
.originTitle p {width: 260px;height: 20px;background: #008000;color: #fff;padding: 3px;margin-top: 5px;}
.originTitle .originBtn {width: 70%;text-align: right;}
.originTitle tr .w15 {width: 15%;}
.originTitle tr .w5 {width: 5%;font-weight: bold;}
.color_red {color: red;}
.w200 {width: 200px;}
.text_right {text-align: right;}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
<input id="contractCode" type="hidden" value="${creditInfo.creditCode}">
<input id="userType" type="hidden" value="${basicInfo.clientId}">
<input id="clientId" type="hidden" value="${creditInfo.userType}">
	<div id="contentDv">
		<div class="originTitle">
			<table>
				<p>
					案件编号：<span>${creditInfo.creditCode}</span>
				</p>
				<tr>
					<td class="w5">申请时间:</td>
					<td><fmt:formatDate value="${creditInfo.applyTime}"
							pattern="yyyy-MM-dd HH:mm:ss" /></td>
				</tr>
				<tr>
					<td class="w5">申请产品:</td>
					<td class="w15">${creditInfo.applyProductName}</td>
					<td class="w5">申请金额:</td>
					<td class="w15"><fmt:formatNumber type="number"
							value="${creditInfo.applyCredit}" pattern="#,#00.00#" /></td>
					<td class="w5">期限:</td>
					<td class="w15">${creditInfo.applyProductPeriod}</td>
					<td class="w5">当前状态:</td>
					<td class="w15">${creditInfo.stat}</td>
				</tr>
				<tr>
					<td class="w5">授信产品:</td>
					<td class="w15">${creditInfo.creditProductName}</td>
					<td class="w5">授信金额:</td>
					<td class="w15"><fmt:formatNumber type="number"
							value="${creditInfo.finalMoney}" pattern="#,#00.00#" /></td>
					<td class="w5">授信时间:</td>
					<td class="w15"><fmt:formatDate
							value="${creditInfo.finalTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
					<td class="w5">来源应用:</td>
					<td class="w15">${creditInfo.applyName}</td>
				</tr>
				<tr>
					<td class="w5">提现金额:</td>
					<td class="w15"><fmt:formatNumber type="number"
							value="${creditInfo.withdrawAmt}" pattern="#,#00.00#" /></td>
					<td class="w5">借款期限:</td>
					<td class="w15">${creditInfo.loanPeriod}</td>
					<td class="w5">提现日期:</td>
					<td class="w15"><fmt:formatDate
							value="${creditInfo.lendBeginTime}" pattern="yyyy-MM-dd" /></td>
					<td class="w5">放款日期:</td>
					<td class="w15"><fmt:formatDate
							value="${creditInfo.lendingTime}" pattern="yyyy-MM-dd" /></td>
					<td class="originBtn">
						<button class="button" id="registerPush">登记跟进</button>
					</td>
				</tr>
			</table>
		</div>
		<div class="case_detail_tit">
			<h4>客户基本信息</h4>
		</div>
		<table class="table-text-left tabcustomPeo" cellpadding="0"
			cellspacing="0">
			<tbody>
				<tr>
					<td><span class="td-text">姓名：<span id="userContent0">${basicInfo.clientName}</span></span><span class="color_red">(${creditInfo.userType == "213210"?"个人用户":"企业用户"})</span>
					</td>
				</tr>
				<tr>
					<td><span class="td-text">身份证：<span>${basicInfo.cardNo}</span></span>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span
						class="td-text">性别：<span id="userContent2">${basicInfo.sex}</span></span></td>
				</tr>
				<tr>
					<td><span class="td-text">手机号：<span>${basicInfo.mobilePhone}</span></span>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span
						class="td-text">归属地：<span id="userContent4">${basicInfo.zone}</span></span></td>
				</tr>
				<tr>
					<td><span class="td-text">注册时间：<span><fmt:formatDate
									value="${basicInfo.createTime}" pattern="yyyy-MM-dd HH:mm:ss" /></span></span>
					</td>
				</tr>
				<tr>
					<td><span class="td-text">上次登录时间：<span
							id="userContent3"><fmt:formatDate
									value="${basicInfo.loginTime}" pattern="yyyy-MM-dd HH:mm:ss" /></span></span>
					</td>
				</tr>
				<tr>
					<td><span class="td-text">常住地址：<span id="userContent5"
							style="font-weight: bold;">${basicInfo.address}</span></span></td>

				</tr>
			</tbody>
		</table>
		<div class="case_detail_tit">
			<h4>企业信息</h4>
		</div>
		<table class="table-text-left tabcustomPeo" cellpadding="0"
			   cellspacing="0">
			<tbody>
			<tr>
				<td class="w200 text_right">企业名称:</td><td>${enterpriseBasic.enterpriseName}</td>
			</tr>
			<tr>
				<td class="">统一社会信用代码:</td><td>${enterpriseBasic.organizationCode}</td>
			</tr>
			</tbody>
		</table>
		<c:if test="${userThirdPlatform!= null and userThirdPlatform.status=='212002'}">
			<div class="case_detail_tit">
				<h4>账户信息</h4>
			</div>
			<table class="table-text-left" cellpadding="0" cellspacing="0">
				<tbody>
				<tr>
					<td class="w200 text_right">户名:${bank.name}</td>
					<td>账号:${bank.bankNo}</td>
					<td class="w200 text_right">绑卡状态:${bank.isBinding}</td>
					<td>自动代扣:${ClientContractVo.opreateResult == "1"?"已授权":"未授权"}</td>
				</tr>
				<tr>
					<td><input id="getBalance" type="button" value="获取余额" style="background:#008cff;color:#fff;border-radius:5px;"></td>
					<td class="balance" style="display:none;">账户余额:<span id="accountBalance"></span></td>
					<td class="balance" style="display:none;">冻结金额:<span id="freezMoney"></span></td>
					<td></td>
				</tr>
				</tbody>
			</table>
		</c:if>

		<div class="case_detail_tit">
			<h4>申请&审批历史</h4>
		</div>
		<table class="table-text-center tabcustomPeo mark" cellpadding="0"
			cellspacing="0" style="width: 50%;">
			<thead
				style="background: #dde4ea; font-size: 15px; color: #333; font-weight: bolder;">
				<tr>
					<td>操作节点</td>
					<td>状态</td>
					<td>操作时间</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${taskInfo}" var="taskInfo">
					<tr>
						<td>${taskInfo.taskName}</td>
						<td>${taskInfo.taskStatus}</td>
						<td><fmt:formatDate value="${taskInfo.taskTime}"
								pattern="yyyy-MM-dd HH:mm:ss" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="case_detail_tit">
			<h4>历史跟进记录</h4>
		</div>
		<table class="table-text-center tabcustomPeo mark" cellpadding="0"
			cellspacing="0">
			<thead style="background: #dde4ea; font-size: 15px; color: #333; font-weight: bolder;">
				<tr>
					<td>跟进时间</td>
					<td>跟进人</td>
					<td>节点</td>
					<td>推进方式</td>
					<td>跟进结果</td>
					<td>跟进描述</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${followUpInfo}" var="followUpInfo">
					<tr>
						<td><fmt:formatDate value="${followUpInfo.followupTime}"
								pattern="yyyy-MM-dd HH:mm:ss" /></td>
						<td>${followUpInfo.followupPeopleName}</td>
						<td>${followUpInfo.followupNode}</td>
						<td>${followUpInfo.followupWayName}</td>
						<td>${followUpInfo.followupResultName}</td>
						<td>${followUpInfo.followupCause}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="case_detail_tit">
			<h4>还款记录</h4>
		</div>
		<form method="post" id="caseManagerDetail">
			<table>
				<tr>
					<td class="label"><input type="hidden" name="loanId"
						value="${creditInfo.creditId}" />还款类型：</td>
					<td width="150"><select name="transType" id="transType">
							<option value="">请选择</option>
							<option value="120705">自动代扣</option>
							<option value="120701">主动还款</option>
					</select></td>
					<td class="label">还款结果：</td>
					<td width="150"><bizselect:bizselect biztypekey="1204"
							id="transStatus" name="transStatus" isChoose="true" /></td>
					<td class="label">还款时间：</td>
					<td width="150"><input name="startDate" loxiaType="date"
						trim="true" />&nbsp;<span>到</span>
					<td>
					<td class="width150"><input name="endDate"
						loxiaType="date" trim="true" /></td>
				</tr>

			</table>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
					id="reload">
					<fmt:message key="button.query" bundle="${lang}" />
				</button>
				<button type="reset" loxiaType="button" class="confirm" title="tip"
					id="reset" />
				<fmt:message key="button.reset" bundle="${lang}" />
				</button>
			</div>
			<%@include file="/common/paginationInit.jsp"%>
			<table id="tbl-lendlist"></table>
			<div id="pager"></div>
		</form>
	</div>
	<%--登记推进弹框--%>
	<div id="loginPush" style="display: none;">
		<div class="loginPush">
			<table>
				<!-- /client/case/saveFollowupLog.do -->
				<input type="hidden" value="${creditInfo.creditId}" name="creditId">
				<input type="hidden" value="${basicInfo.zone}" name="zone">
				<input type="hidden"
					value="${taskInfo[fn:length(taskInfo)-1].taskName}"
					name="followupNode">
				<tr>
					<td><span class="td-text">申请节点：</span></td>
					<td><span>${taskInfo[fn:length(taskInfo)-1].taskName}</span></td>
				</tr>
				<tr>
					<td><span class="td-text">客户来源：</span></td>
					<td><span>${basicInfo.source}</span></td>
				</tr>
				<tr>
					<td><span class="td-text">手机号码：</span></td>
					<td><span>${basicInfo.mobilePhone}</span></td>
				</tr>
				<tr>
					<td><span class="td-text">客户姓名：</span></td>
					<td><span>${basicInfo.clientName}</span></td>
				</tr>
				<tr>
					<td style="width: 80px;"><span style='color: red'>*</span>推进方式:</td>
					<td><bizselect:bizselect biztypekey="1900" id="advanceWay_zr"
							name="advanceWay" isChoose="true" checkmaster="2"  selected="190002"/></td>
				</tr>
				<tr>
					<td><span style='color: red'>*</span>推进结果:</td>
					<td><bizselect:bizselect biztypekey="1245" id="advanceResult"
							name="advanceResult" isChoose="true" /></td>
				</tr>
				<tr>
					<td>所在城市:</td>
					<td>${basicInfo.zone}</td>
				</tr>
				<tr>
					<td style="width: 80px;"><span style='color: red'>*</span>推进描述:</td>
					<td><textarea name='adcanceCause' cols="60" rows="5"
							id="adcanceCause"></textarea></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>
