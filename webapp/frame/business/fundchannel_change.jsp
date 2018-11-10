
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 放款查询列表-->
<head>
	<%@include file="/common/meta.jsp"%>
	<fmt:setBundle basename="messages" var="lang" />
	<title><fmt:message key="label.lend.query" bundle="${lang}" /> 推标管理</title>
	<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
	<script type="text/javascript"
			src="<c:url value='/scripts/my-jquery-ajax.js?v=2.0.0'/>"></script>
	<script type="text/javascript"
			src="<c:url value='/scripts/frame/loaning/fundchannel_change.js?v=1.6'/><c:out value='${now.getTime()}'/>"></script>
	<script type="text/javascript"
			src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
	<style type="text/css">
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
			min-width: 300px;
		}
		.timerTd input{
			width: 115px !important;
		}
		.colCCC{
			color:#cccccc;
		}
		.left-tex{width:100%;}
		/*提现审核*/
		.present-dv{
			width: 640px;
			border: 1px solid #111111;
			padding-bottom: 20px;
		}
		.tabs-btn{zoom: 1; height: 40px; border-bottom: 1px solid #111111;}
		.tabs-btn:after{
			content: "";
			display: block;
			height: 0px;
			font-size: 0px;
			line-height: 0px;
			visibility: hidden;
			clear: both;
		}
		.tabs-btn a{
			display: block;
			float: left;
			height: 40px;
			line-height: 40px;
			padding: 0px 20px;
			border-right: 1px solid #111111;
			text-decoration: none;
			color: #000000;
		}
		.tabs-btn a:hover{
			background-color: #CCCCCC;
		}
		.tabs-btn a.active{
			background-color: #CCCCCC;
		}
		.tabs-content{padding: 20px 40px;}
		.tabs-son{font-size: 14px;}
		.tabs-son input,select,textarea{border: 1px solid #CCCCCC;}
		.marL30{margin-left: 30px;}
		.textareaDv{margin-top: 20px;}
		.textareaLab{float: left;}
		.textareaDv textarea{width: 472px; height: 200px; resize: none;}
		.disNone{display: none;}
		.easyDialog_text{text-align: center;}
		select[name="productSubId"].ui-loxia-default{width:32%;}
		.anjian{width:600px;}
		.anjian table{width:100%;}
		.anjian table tr td{border:1px solid #ccc;}
		.anjian table tr td select{width:200px;}
		.anjian table tr td select,textarea{margin:5px;margin-left:15px;}
		#easyDialogTitle{background:#169bd5;color:#fff;}
		#easyDialogTitle a{color:#fff;}
	</style>
	<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
<div id="imgBox" style="display:none">
	<img src="" alt="" />
</div>
<form id="changeChannelForm" method="post">
	<table>
		<tr>
			<td class="label1">客户：</td>
			<td width="150">
				<input name="clientName" loxiaType="input" trim="true" />
			</td>
			<td class="label1">还款方式：</td>
			<td width="150">
				<bizselect:bizselect biztypekey="1091" startSort="1" endSort="5" name="repayMode" id="repayMode" isChoose="true" />
			</td>
			<td class="label1">期限：</td>
			<td width="150">
				<input name="loanPeriod" loxiaType="input" trim="true" />
			</td>
			<td class="label1">产品小类：</td>
			<td width="150">
				<select id="productSubId" name="productSubId">
					<option value="">请选择</option>
				</select>
			</td>
		</tr>
		<tr>
			<td class="label1">募集状态：</td>
			<td width="150">
				<bizselect:bizselect biztypekey="1249" startSort="1" endSort="5" name="recruitmentStatus" id="recruitmentStatus" isChoose="true" />
			</td>
			<td class="label1">申请状态：</td>
			<td width="150">
				<%--<bizselect:bizselect biztypekey="2140" startSort="1" endSort="5" name="applyChangeChannelStatus" id="applyChangeChannelStatus" isChoose="true" />--%>
				<select name="applyChangeChannelStatus" id="applyChangeChannelStatus">
					<option value="">请选择</option>
					<option value="214002">待更换</option>
					<option value="214005">申请结束</option>
				</select>
			</td>
			<td class="label1">提现申请时间：</td>
			<td class="timerTd">
				<input id="loginTimeFrom" loxiaType="date" name="startDate" checkmaster="setMinDate" readonly="readonly"/>
				<span>到</span>
				<input id="loginTimeTo" loxiaType="date" name="endDate" checkmaster="setMaxDate" readonly="readonly"/>
			</td>
			<td class="label1">资金渠道：</td>
			<td width="150">
				<select name="channelCode">
					<option value="">请选择</option>
					<c:forEach items="${fundList}" var="item">
						<option value="${item.channelCode}">${item.channelName}</option>
					</c:forEach>
				</select>
			</td>
		</tr>
	</table>
	<div class="buttonlist buttonDivWidth">
		<button type="button" loxiaType="button" class="confirm" title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>" id="reload">
			<fmt:message key="button.query" bundle="${lang}" />
		</button>
		<button type="reset" loxiaType="button" class="confirm" title="tip:<fmt:message key="tip.sys.audit.reset" bundle="${lang}"/>">
			<fmt:message key="button.reset" bundle="${lang}" />
		</button>
		<button type="button" id="changeChannel" loxiaType="button" class="confirm" title="tip:<fmt:message key="tip.sys.audit.casecancel" bundle="${lang}"/>">
			更换资金渠道
		</button>
	</div>
	<%@include file="/common/paginationInit.jsp" %>
	<table id="tbl-lendlist"></table>
	<div id="pager"></div>
</form>
</body>
</html>
