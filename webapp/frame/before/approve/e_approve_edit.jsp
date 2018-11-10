<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<%@include file="/common/editor.jsp"%>
<script type="text/javascript" 
src="<c:url value='/scripts/frame/before/common/operateOrder.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/frame/before/approve/e_approve_edit.js'/>"></script>
	<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/prev_opinion.js'/>"></script>
<form id="eApproveForm" method="post">
<input type="hidden" id="projectStauts" name="projectStatus"/>
<input type="hidden" id="clientType" name="clientType" value="100312" />
<div class="divBgColor">流程信息</div>
<table class="col3">
			<tr>
				<!-- 工作流程  -->
			<td class="label"><fmt:message key="label.applyDetail.wf_code"
					bundle="${lang}" /></td>
			<td class="content">${project.wfName}</td>
			<td class="label"></td>
			<td class="content"></td>
			</tr>
</table>
<!-- 贷款信息-->
	<div class="divBgColor">
		<fmt:message key="label.apply.loan" bundle="${lang}" />
	</div>
	
<table class="col3">
	<tr>
		<!-- 希望贷款金额 applyBasic.loanHopeMoney  -->
		<td class="label">申请金额(万元)：</td>
		<td class="content">${applyBasic.loanHopeMoney}</td>
			<!-- 产品名称  -->
		<td class="label"><fmt:message key="label.loan.product.loan.name"
				bundle="${lang}" /></td>
		<td class="content">${project.prodName}</td>
	</tr>
	<tr>
		<!-- 贷款用途 applyBasic.loanPurpose 键值对数据 -->
		<td class="label"><fmt:message
				key="label.applyDetail.loanPurpose" bundle="${lang}" /></td>
		<td class="content">${applyBasic.loanPurpose }</td>
	</tr>
	<tr>
		<td class="label">还款来源：</td>
		<td class="content" colspan="3">${applyBasic.repaySourse }</td>
	</tr>
	<tr>
		<!-- 信息来源  applyBasic.infoFrom -->
		<td class="label">贷款引进人：</td>
		<td class="content"><showusername:showusername
				value="${applyBasic.infoFrom}" ></showusername:showusername></td>
	</tr>
	<tr>
		<!-- 客户来源 applyBasic.clientFrom 键值对数据 -->
		<td class="label"><fmt:message key="label.applyDetail.clientFrom"
				bundle="${lang}" /></td>
		<td class="content"><bizoptionname:showname biztypekey="1004"
				value="${applyBasic.clientFrom}" /></td>
		<c:if test="${applyBasic.clientFrom==100412}">
			<td class="label">中介信息：</td>
			<td class="content">${applyBasic.clientFromAgency}</td>
		</c:if>
	</tr>
</table>
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
		<textarea class="cleditor" id="operRemark" name="operRemark" rows="4" >${ucx:unCleanXSS(taskList.operReasonRemark) }</textarea></td>
			</tr>
		</table>
	<div id ="operateOrder" class="buttonlist buttonDivWidth">
		<input type="button" class="confirm" id="tempSave"  value="暂存"  loxiaType="button" />
	</div>
</form>
