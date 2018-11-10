<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<!-- 放款查询列表-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.lend.query" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/operating/app_feedbacks.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: right;
}
.reply{margin-bottom:10px;width:205px;}
.reply a{width:100px;height:30px;color:#333;line-height:30px;text-align:center;display:inline-block;border:1px solid #ccc;text-decoration:none;}
.reply a:last-child{margin-left:-4px;}
.active{background: #c9c9c9 none repeat scroll 0 0;}
</style>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="imgBox" style="display:none">
	  <img src="" alt="" />
	</div>
	<div class="reply">
	   <a href="javascript:;" id="noReply">待反馈</a>
	   <a href="javascript:;" id="alreadyReply" class="active">已反馈</a>
	</div>
	<form id="lendListForm" method="post">
		<table>
			<tr>
				<td class="label">姓名：</td>
				<td width="150"><input id="" name="clientName"
					loxiaType="input" trim="true" /></td>
				<td class="label">手机号码：</td>
				<td width="150"><input id="" name="mobilePhone"
					loxiaType="input" trim="true" /></td>
				<td class="label">客户编号：</td>
				<td width="150"><input id="" name="clientCode"
					loxiaType="input" trim="true" /></td>
					<td class="label">回复人：</td>
				<td width="150"><input id="" name="replyToPeople"
					loxiaType="input" trim="true" /></td>		
			</tr>
			<tr>
			    <td class="label">提问时间：</td>
				<td width="200">
					<input id="" name="beginCreateTime" loxiaType="date" trim="true" style="width:43%;"/>到
					<input id="" name="endCreateTime" loxiaType="date" trim="true" style="width:43%;"/>
				</td>
				
				<td class="label">回复时间：</td>
				<td width="200">
					<input id="" name="beginRecoveryTime" loxiaType="date" trim="true" style="width:43%;"/>到
					<input id="" name="endRecoveryTime" loxiaType="date" trim="true" style="width:43%;"/>
				</td>
				<td class="label">来源应用：</td>
				<td width="150">
					<select name="applyCode" loxiaType="select">
						<option value="">请选择</option>
						<c:forEach items ="${amList}" var="mapOne">
							<option value=${ mapOne.applyCode} > ${mapOne.applyName}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
		</table>
		<div class="buttonlist buttonDivWidth">
		 	<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
				id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="reset" loxiaType="button" class="confirm"
				title="tip" id="reset"/>
				<fmt:message key="button.reset" bundle="${lang}" />
			</button>
			<!-- <table>
				<tr>
					<td><input type="button" value="未回复" id="noReply"/></td>
					<td><input class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only ui-state-hover" type="button" value="已回复" id="alreadyReply"/></td>
				</tr>
			</table> -->
		<%-- 	<a href="<%=request.getContextPath()%>/frame/operating/app_feedback.jsp" id="alreadyReply" > 
				未回复
			</a>
			<a  href="<%=request.getContextPath()%>/frame/operating/app_feedbacks.jsp" id="alreadyReply" > 
				已回复
			</a> --%>
		</div>
		
	
		
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-lendlist"></table>
		<div id="pager"></div>
	</form>
<div id="dialog-chgrole"></div>
</body>
</html>
