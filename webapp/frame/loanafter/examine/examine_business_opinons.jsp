<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/meta.jsp"%>
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<fmt:setBundle basename="messages" var="lang" />
<div class="divBgColor">操作信息</div>
<c:forEach var="taskList" items="${tasklistVoList }">
<table class="col3" style='border-bottom:1px solid #ccc;'>
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
	<tr >
		<td class="label">操作意见：</td>
			<td  colspan="3" style="font-size: 14px; width:80%;border: 1px solid #dcdcdc;padding-left:10px;" valign="top">${ucx:unCleanXSS(taskList.operReasonRemark) }</td>
	</tr>
</table>
</c:forEach>
</form>
</body>