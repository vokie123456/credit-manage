<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/product_detail.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/check/check_opinion_detail.js'/>"></script>
<body contextpath="<%=request.getContextPath()%>"  >
<input type="hidden" id="projectId"  value="${projectId }"/>
<input type="hidden" id="taskId"  value="${taskId }"/>
<div class="divBgColor">审核信息</div>
 <table class="col3" >
	<tr>
		<td class="label">审核类型：</td>
		<td class="content"><bizoptionname:showname biztypekey="1002"
					value="${checkBasic.checkType }"  /></td>
		<td class="label"><fmt:message
					key="label.audit.taskdetail.money_check" bundle="${lang}" /></td>
		<td class="content">${checkBasic.checkMoney }</td>
	</tr>
		<tr>
		<td class="label">客户名称：</td>
		<td class="content">${clientBasic.clientName}</td>
		<td class="label">客户经理：</td>
		<td class="content"><showusername:showusername value="${clientProject.saleraCode}"></showusername:showusername></td>
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
</table>
<!-- 产品配置信息 -->
<div id="productConfigDetailDiv"></div>
<!-- 	审核意见列表 -->
<div id="checkOpinionTypeDivDetail" ></div>
<div class="divBgColor">贷款意见</div>
 <table class="col6">
 <tr>
					<td  class="label"  ></td>
					<td class="content" ></td>
		</tr>
	 <c:forEach items="${coList}"  var="co"  varStatus="i">
	 	<tr>
					<td colspan="2" >
						<table style="width:100%;border:1px solid #dcdcdc; " class="col6">
								<tr>
							<td  class="label" >${co.checkUser}</td>
									<td style="font-size: 14px; width:80%;border-left: 1px solid #dcdcdc;padding-left:10px;">${ucx:unCleanXSS(co.opinionDetail) }</td>
								</tr>
						</table>
				</td>
		</tr>
	 </c:forEach>
	 </table>
	 	<div class="divBgColor">操作信息</div>
	 		<table class="col3">
		<tr>
				<td class="label">操作类型：</td>
				<td class="content">${taskList.operType}</td>
					<td class="label">操作时间：</td>
					<td class="content"><fmt:formatDate  value="${taskList.submitTime}"  pattern="yyyy-MM-dd  HH:mm:ss"/></td>
			</tr>
			<tr>
				<td class="label">经办人：</td>
			    <td class="content"><showusername:showusername value="${taskList.taskAgent}"></showusername:showusername></td>
			</tr>
		</table>
</body>