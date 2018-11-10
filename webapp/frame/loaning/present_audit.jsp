
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 放款查询列表-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.lend.query" bundle="${lang}" /></title>
<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
	<script type="text/javascript"
			src="<c:url value='/scripts/my-jquery-ajax.js?v=2.0.0'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loaning/present_audit.js?v=3.9.4'/><c:out value='${now.getTime()}'/>"></script>
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
	<div class="tabSlide">
		<ul class="control clearfix">
			<li class="border"> <a href="javascript:;" id="noReply" >提现待确认</a></li>
			<li><a href="javascript:;" id="alreadyReply">提现已确认</a></li>
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
					<bizselect:bizselect biztypekey="1091" startSort="1" endSort="5" name="repayMode" id="repayMode" isChoose="true" />
					<!--  <select class="ui-loxia-default ui-corner-all" name="repayMode">
						<option value="">请选择</option>
						<option value="109101">先息后本</option>
						<option value="109102">等本等息</option>
					</select>-->
				</td>
				<!-- <td class="label1">期限：</td>
				<td width="150">
					<select name="loanPeriod" class="ui-loxia-default ui-corner-all">
						<option value="">请选择</option>
						<option value="1">1</option>
						<option value="3">3</option>
						<option value="6">6</option>
						<option value="9">9</option>
						<option value="12">12</option>
		        	</select>
				</td> -->
				<td class="label1">房产城市：</td>
				<td class="fangc">
					<linkage:select type="province" name="houseProvinceId" pid="pr2" cid="c2" did="d2" />
					<linkage:select type="city" name="houseCityId" cid="c2" did="d2" />
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
					<!--  <select name="recruitmentStatus" class="ui-loxia-default ui-corner-all">
			          <option value="">请选择</option>
			          <option value="124901">待发标</option>
			          <option value="124902">募集中</option>
			          <option value="124903">募集成功</option>
			          <option value="124904">募集失败</option>
			          <option value="124905">无需募集</option>
			        </select>-->
				</td>
				<td class="label1">审核状态：</td>
				<td width="150">
					<bizselect:bizselect biztypekey="1250" startSort="1" endSort="6" name="checkStatus" id="id_checkStatus" isChoose="true" />
					<!--  <select id="id_checkStatus" name="checkStatus" class="ui-loxia-default ui-corner-all">
						<option value="">请选择</option>
						<option value="125001">待审核</option>
						<option value="125002">审核通过</option>
						<option value="125003">审核拒绝</option>
						<option value="125004">审核取消</option>
		        	</select>-->
				</td>
				<td class="label1">提现申请时间：</td>
				<td class="timerTd">
					<input id="loginTimeFrom" loxiaType="date" name="startDate" checkmaster="setMinDate" readonly="readonly"/>
					<span>到</span>
					<input id="loginTimeTo" loxiaType="date" name="endDate" checkmaster="setMaxDate" readonly="readonly"/>
				</td>
				
				
			</tr>
			<tr>
				<td class="label1"></td>
				<td width="150">

				</td>
				<td class="label1"></td>
				<td width="150">

				</td>
				<td class="label1"></td>
				<td width="150">

				</td><td class="label1"></td>
				<td width="150">

				</td><td class="label1"></td>
				<td width="150">

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
			<button type="button" id="biaodiFile" loxiaType="button" class="confirm" title="tip:<fmt:message key="tip.sys.audit.output" bundle="${lang}"/>">
				导出标的
			</button>
			<button type="button" id="mujiError" loxiaType="button" class="confirm" title="tip:<fmt:message key="tip.sys.audit.recruitfail" bundle="${lang}"/>">
				募集失败
			</button>
			<button type="button" id="caseRefuse" loxiaType="button" class="confirm" title="tip:<fmt:message key="tip.sys.audit.caserecue" bundle="${lang}"/>">
				案件拒绝
			</button>
			<button type="button" id="caseCancel" loxiaType="button" class="confirm" title="tip:<fmt:message key="tip.sys.audit.casecancel" bundle="${lang}"/>">
				案件取消
			</button>
			<button type="button" id="changeChannel" loxiaType="button" class="confirm" title="tip:<fmt:message key="tip.sys.audit.casecancel" bundle="${lang}"/>">
			更换资金渠道
			</button>
		</div>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-lendlist"></table>
		<div id="pager"></div>
	</form>
<div id="dialog-chgrole"></div>
<div id="anjianRefuse" style="display:none;">
<div class="anjian" >
		<table cellpadding="0" cellspacing="0">
			<tr>
				<td class="label">拒绝原因</td>
				<td>
					<p>
						<select id="resue_slt1" name="reasonCode"  onchange="selectAudit(this,'resue_operReason')">
							<option value="">请选择</option>
							<%--<c:forEach items="${audits }" var="ite">--%>
								<%--<option value="${ite.typeCode }">${ite.typeName }</option>--%>
							<%--</c:forEach>--%>
						</select>
						<select id="resue_operReason" name="subReasonCode">
							<option value="">请选择</option>
						</select>
					</p>
				</td>
			</tr>
			<tr>
				<td class="label">拒绝意见</td>
				<td >
					<textarea name="checkInfo" id="resue_season" cols="60" rows="10" ></textarea>
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<input  id ="resue_isInbackbox" name="inBlackList" type="checkbox" />
					<label for="resue_isInbackbox">加入黑名单</label>
					<bizselect:bizselect biztypekey="1194" startSort="1" endSort="8" id="resue_backboxCode" name="blacklistSource" isChoose="true" />
				</td>
			</tr>
		</table>
</div>
</div>
<div id="anjianCancel" style="display:none;">
  <div class="anjian">
		<table cellpadding="0" cellspacing="0">
			<tr>
				<td class="label">取消原因</td>
				<td>
					<p>
						<select id="cancel_slt1" name="subReasonCode" >
							<option value="">请选择</option>
							<%--<c:forEach items="${cancelReasons }" var="ite">--%>
								<%--<option value="${ite.sutypeCode }">${ite.sutypeName }</option>--%>
							<%--</c:forEach>--%>
						</select>
					</p>
				</td>
			</tr>
			<tr>
				<td class="label">备注</td>
				<td >
					<textarea name="checkInfo" id="cancel_info" cols="60" rows="10" ></textarea>
				</td>
			</tr>
		</table>
	</div>
</div>

</html>
