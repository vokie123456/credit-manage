<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<%@include file="/common/editor.jsp"%>
<script type="text/javascript"  src="<c:url value='/scripts/frame/before/common/operateOrder.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/frame/loanafter/examine/examine_detail.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/frame/loanafter/examine/examine_manager_review_edit.js'/>"></script>
<div id="examineReportDetail"></div>
<form id="examineManagerReview">
<input id="examineId"  type="hidden" value="${examineId}"/>
<input id="examineStatus"  name="examineStatus"  type="hidden"/>
 <div class="divBgColor">操作信息</div>
		<table class="col3">
			<tr>
				<td class="label"></td>
				<td class="content"></td>
				<td class="label"></td>
				<td class="content"></td>
		</tr>
		<tr>
			<td  colspan="4"  style="padding-left: 10%">
			<textarea class="cleditor" id="operRemark" name="operRemark" rows="4" >${ucx:unCleanXSS(taskList.operReasonRemark) }</textarea>
			</td>
		</tr>
		</table>
<div id ="operateOrder" class="buttonlist buttonDivWidth">
</div>
</form>
