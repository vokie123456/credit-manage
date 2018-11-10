<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/meta.jsp"%>
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/product_detail.js'/>"></script>
<body contextpath="<%=request.getContextPath()%>"  >
<input type="hidden" id="projectId"  value="${projectId }"/>
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
		<tr>
		<!-- 信息来源  applyBasic.infoFrom -->
		<td class="label">贷款引进人：</td>
		<td class="content"><showusername:showusername
				value="${applyBasic.infoFrom}" ></showusername:showusername></td>
	</tr>
</table>
<!-- 产品配置信息 -->
<div id="productConfigDetailDiv"></div>
<br/>
<div class="divBgColor">
	<fmt:message key="label.apply.basic" bundle="${lang}" />
</div>
<table class="col3">
	<tr>
		<tr>
			<!-- 客户姓名  applyBasic.clientName -->
			<td class="label"><fmt:message key="label.applyDetail.clientName"
					bundle="${lang}" /></td>
			<td class="content">${applyBasic.clientName}</td>
		</tr>
		<!-- 证件类型  applyBasic.cardType-->
		<td class="label"><fmt:message key="label.applyDetail.cardType"
				bundle="${lang}" /></td>
		<td class="content"><bizoptionname:showname biztypekey="1007"
				value="${ applyBasic.cardType}" /></td>

		<!-- 证件号码  applyBasic.cardNo-->
		<td class="label"><fmt:message key="label.applyDetail.cardNo"
				bundle="${lang}" /></td>
		<td class="content">${applyBasic.cardNo}</td>
	</tr>
</table>

<div class="divBgColor">业务人员信息</div>
<table class="col3">
	<tr>
		<td class="label">营业所 ：</td>
		<td class="content">${project.salerOrg }</td>
	</tr>
		<tr>
		<td class="label">主办客户经理：</td>
		<td class="content">${project.salerAName }</td>
		<td class="label">协办客户经理：</td>
		<td class="content">${project.salerBName }</td>
	</tr>
</table>
<div class="divBgColor">操作信息</div>
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
</table>
</form>
</body>