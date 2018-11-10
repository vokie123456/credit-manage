<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 放款列表-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.lend.query" bundle="${lang}" /></title>
<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
<script type="text/javascript"
			src="<c:url value='/scripts/my-jquery-ajax.js?v=2.0.0'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loaning/present_audits.js?v=1.5.10'/>"></script>
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
.active{background: #c9c9c9 none repeat scroll 0 0;}
.easyDialog_text {
    text-align: left;
}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div id="imgBox" style="display:none">
	  <img src="" alt="" />
	</div>
	<div class="tabSlide">
		<ul class="control clearfix">
			<li><a href="javascript:;" id="noReply2" >提现待确认</a></li>
			<li class="border"><a href="javascript:;" id="alreadyReply2">提现已确认</a></li>
		</ul>
		<div class="content"></div>
	</div>
	<form id="lendListForm" method="post">
		<table>
			<tr>
				<td class="label1">客户：</td>
				<td width="150">
					<input name="clientName" loxiaType="input" trim="true" />
				</td>
				<td class="label1">还款方式：</td>
				<td width="150">
					<bizselect:bizselect biztypekey="1091" startSort="1" endSort="3" id="repayMode" name="repayMode" isChoose="true" />
				</td>
				<td class="label1">产品大类：</td>
				<td width="150">
					<select id="productMaxId" name="productMaxId"  onchange="selectProductMin(this,'productSubId')">
						<option value="">请选择</option>
					</select>
				</td>
				<td class="label1">产品小类：</td>
				<td width="150">
					<select id="productSubId" name="productSubId">
						<option value="">请选择</option>
					</select>
				</td>
			</tr>
			<tr>
				<td class="label1">放款状态：</td>
				<td width="150">
					<%--<bizselect:bizselect biztypekey="1188" startSort="1" endSort="4" id="lendMoneyStatus" name="lendMoneyStatus" isChoose="true" />--%>
                    <select  id="lendMoneyStatus" name="lendMoneyStatus">
                    	<option value="">请选择</option>
                        <option value="118801" selected="selected">待放款</option>
                        <option value="118802">放款中</option>
                        <option value="118803">放款成功</option>
                        <option value="118804">放款失败</option>
                        <option value="118808">提现成功</option>
                        <option value="118800">计划生成</option>
                    </select>
				</td>
				<td class="label1">提现申请时间：</td>
				<td class="timerTd">
					<input id="loginTimeFrom" loxiaType="date" name="startDate" checkmaster="setMinDate" readonly="readonly"/>
					<span>到</span>
					<input id="loginTimeTo" loxiaType="date" name="endDate" checkmaster="setMaxDate" readonly="readonly"/>
				</td>
				<td class="label1">募集状态:</td>
				<td>
					<bizselect:bizselect biztypekey="1249" startSort="1" endSort="4" id="recruitmentStatus" name="recruitmentStatus" isChoose="true" />
				</td>
				<td class="label1">资金渠道:</td>
				<td width="250">
					<select id="channelCode" name="channelCode">
						<option value="">请选择</option>
					</select>
				</td>
			</tr>
			
		</table>
		<div class="buttonlist buttonDivWidth">
		 	<button type="button" loxiaType="button" class="confirm" title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>" id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="reset" loxiaType="button" class="confirm" title="tip:<fmt:message key="button.reset" bundle="${lang}" />"/>
				<fmt:message key="button.reset" bundle="${lang}" />
			</button>
			<button type="button" id="biaodiFile" loxiaType="button" class="confirm" title="tip:导出"/>
				导出
			</button>
			<%--<button type="button" id="biaodiPush" loxiaType="button" class="confirm" title="tip:<fmt:message key="tip.sys.audit.pushrecruiment" bundle="${lang}"/>"/>--%>
				<%--标的推送--%>
			<%--</button>--%>
			
		</div>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-lendlist"></table>
		<div id="pager"></div>
	</form>
<div id="dialog-chgrole"></div>


</body>
</html>
