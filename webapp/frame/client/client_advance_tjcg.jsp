<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<!-- 放款查询列表-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.lend.query" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/client_advance_tjcg.js?v=3.5'/>"></script>
<style type="text/css">
.label {
	text-align: right;
}
.client_adv{width:100%;}
.client_adv td{height:30px; line-height:30px; text-align:right;}
.left-tex{width:100%;}
.left-tex  td:last-child{text-align:left;}
.left-tex td select{width:150px;}
.left-tex td textarea{width:350px; height:150px;resize:none}
.timeDv{width:190px;}
.timeDv input{width: 85px;}
.client-find{width:1050px; text-align:center;white-space:normal;}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	
	
	<form id="lendListForm" method="post">
		<table>
			<tr>
				<td class="label">客户：</td>
				<td width="150"><input id="" name="clientName"
					loxiaType="input" trim="true" /></td>
				<td class="label">手机号码：</td>
				<td width="150"><input id="" name="mobilePhone"
					loxiaType="input" trim="true" /></td>
				<td class="label">客户编号：</td>
				<td width="150"><input id="" name="clientCode"
					loxiaType="input" trim="true" /></td>
				<td class="label">推进人：</td>
				<td width="150"><input id="" name="userName"
					loxiaType="input" trim="true" /></td>
			</tr>
			<tr>
				<td class="label">推进方式：</td>
				<td><bizselect:bizselect biztypekey="1900"
						startSort="1" endSort="5" id="advanceWay"
						name="advanceWay" isChoose="true" /></td>
				<td class="label">任务创建时间：</td>
				<td class="timeDv">
					<input  loxiaType="date" trim="true" name="beginCreateTime" />
					-
					<input  loxiaType="date" trim="true" name="endCreateTime" />
				</td>
				<td class="label">最后推进时间：</td>
				<td width="150"><input id="" name="beginAdvanceTime"
					loxiaType="date" trim="true" />到</td>
				<td class="width150">	<input id="" name="endAdvanceTime"
					loxiaType="date" trim="true" />
				</td>
			</tr>
			<tr>
				<td class="label">推进原因：</td>
				<td width="150">
					<select name="adcanceType">
						<option value="0">请选择</option>
						<option value="1">注册未提交授信</option>
						<option value="2">初审退回补件</option>
						<option value="4">授信未提现</option>
					</select>
				</td>
				<td class="label">推进结果：</td>
				 <td width="150">
					 <bizselect:bizselect biztypekey="1245"
						startSort="7" endSort="13" id="advanceResultId"
						name="advanceResult" isChoose="true" />
				</td>
				<td class="label"> 归属地：</td>
				<td width="150"><input id="" name="zone"
					loxiaType="input" trim="true" /></td> 
			</tr>
			<tr>
				<td class="label"> 工作城市：</td>
				<td class="timeDv">
					<input name="wrokProvince" loxiaType="input" trim="true" placeholder="省"/>
					<input name="workCity" loxiaType="input" trim="true" placeholder="市"/>
				</td>
				<td class="label"> 房产所在地：</td>
				<td class="timeDv">
					<input id="" name="housePropertyProvince" loxiaType="input" trim="true"  placeholder="省"/>
					<input id="" name="housePropertyCity" loxiaType="input" trim="true" placeholder="市"/>
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
		<!-- 	<button type="button" loxiaType="button" class="confirm" id="batchAllocation" />
				批量分派推进
			</button> -->
			
			<table>
				<tr>
					<td><input type="button" value="待推进" id="toBePushed"/></td>
					<td><input type="button" value="已推进" id="alreadyAdvance"/></td>
					<td><input class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only ui-state-hover" type="button" value="推进成功" id="promoteSuccess"/></td>
					<td><input type="button" value="推进失败" id="promoteFail"/></td>
				</tr>
			</table>
			<%-- <a  href="<%=request.getContextPath()%>/client/clientAdvance/list.do?url=client_advance" id="" > 
				待推进
			</a>&nbsp;
			<a  href="<%=request.getContextPath()%>/client/clientAdvance/list.do?url=client_advance_ytj" id="" > 
				已推进
			</a>&nbsp;
			
			<a  href="<%=request.getContextPath()%>/client/clientAdvance/list.do?url=client_advance_tjcg" id="" > 
				推进成功
			</a>&nbsp;
			<a  href="<%=request.getContextPath()%>/client/clientAdvance/list.do?url=client_advance_tjsb" id="" > 
				推进失败
			</a> --%>
			
			
		</div>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-lendlist"></table>
		<div id="pager"></div>
	</form>
<div id="dialog-chgrole"></div>
</body>
</html>
