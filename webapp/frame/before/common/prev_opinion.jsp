<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/meta.jsp"%>
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<fmt:setBundle basename="messages" var="lang" />
<c:if test="${not empty taskList }">
<br/>
<div class="divBgColor">退回意见</div>
<table class="col3">
	<tr>
		<td class="label">操作类型：</td>
		<td class="content">${taskList.operType}</td>
		<td class="label">操作时间：</td>
		<td class="content"><fmt:formatDate
				value="${taskList.submitTime}" pattern="yyyy-MM-dd  HH:mm:ss" /></td>
	</tr>
	<tr>
		<td class="label">经办人：</td>
		<td class="content"><showusername:showusername
				value="${taskList.taskAgent}"></showusername:showusername></td>
	</tr>
	<tr>
		<td class="label">操作意见：</td>
		<td  colspan="3" style="font-size: 14px; width:80%;border: 1px solid #dcdcdc;padding-left:10px;" valign="top">${ucx:unCleanXSS(taskList.operReasonRemark) }</td>
	</tr>
	<c:if test="${not empty taskList.chairmanOpinion }">
	<tr>
		<td class="label">董事长意见：</td>
		<td class="content"  style="font-size: 14px; width:80%;border: 1px solid #dcdcdc;padding-left:10px;" colspan="3" valign="top">${ucx:unCleanXSS(taskList.chairmanOpinion) }</td>
	</tr>
	</c:if>
</table>
</c:if>
