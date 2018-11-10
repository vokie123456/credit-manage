<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<%@include file="/common/editor.jsp"%>
<script type="text/javascript"  src="<c:url value='/scripts/frame/before/common/operateOrder.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/frame/loanafter/examine/examine_detail.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/frame/loanafter/examine/examine_risk_control_edit.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/prev_opinion.js'/>"></script>
<div id="examineReportDetail"></div>
<form id="examineRiskControl">
<input id="examineId"  type="hidden" value="${examineId}"/>
<input id="examineStatus"  name="examineStatus"  type="hidden"/>
<div id="examineReportDetail"></div>
<!-- 	上一节点操作意见 -->
	<div id="prevOpinionDiv"></div>
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
	<!-- 	上一节点操作意见 -->
	<div id="prevOpinionDiv"></div>
<div id ="operateOrder" class="buttonlist buttonDivWidth">
</div>
</form>
