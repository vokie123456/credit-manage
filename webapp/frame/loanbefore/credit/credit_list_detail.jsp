<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<!-- 这里是页面内容区 -->

	<div class="divBgColor">
		<fmt:message key="label.credit.list.detail.title" bundle="${lang}" />
	</div>
	<form>
		<table>
		  <tr>
		        <!-- 项目编号-->
				<td class="label"><fmt:message
						key="label.apply.clientproject.project_code" bundle="${lang}" /></td>
				<td width="150">${vo.projectCode }</td>
				
				<!-- 客户姓名 client.client_basic  -->
				<td class="label"><fmt:message
						key="label.apply.clientproject.client_name" bundle="${lang}" /></td>
				<td width="150">${vo.clientName }</td>
				
		  </tr>
		  <tr>
		  <!-- 客户类型  -->
			<td class="label"><fmt:message
						key="label.company.list.clientType" bundle="${lang}" /></td>
			<td width="150"><bizoptionname:showname biztypekey="1003" value="${vo.clientType }" /></td>
		 
		  <!-- 信用模型  -->
				<td class="label"><fmt:message
						key="label.company.list.credit.model" bundle="${lang}" /></td>
				<td width="150">${vo.modelName }</td>
		  </tr>
		</table>
	</form>

	</br>
	<div class="divBgColor">
		<fmt:message key="label.credit.list.detail.credit" bundle="${lang}" />
	</div>
	<form id="creditAssessmentForm" method="post">
		<table border="1" cellpadding="0" cellspacing="0" width="100%">
			<tr>
				<th><fmt:message key="label.credit.th.indexName"
						bundle="${lang}" /></th>
				<th><fmt:message key="label.credit.th.indexHigh"
						bundle="${lang}" /></th>
				<!-- 
				<c:if test="${vo.clientType ==100311 }">
					<th><fmt:message key="label.credit.th.indexWay"
							bundle="${lang}" /></th>
				</c:if>
                -->
				<th><fmt:message key="label.credit.th.indexCon"
						bundle="${lang}" /></th>
				<th><fmt:message key="label.credit.th.indexSco"
						bundle="${lang}" /></th>
			</tr>
			<tbody id="creditAssessment"></tbody>
            <c:forEach items="${creditDetail}" var="dis" varStatus="loop">
                 <tr>
                   <td>${dis.indexName }</td>
                   <td>${dis.indexHigh }</td>
                   <!--  
                   <c:if test="${vo.clientType ==100311 }">
                   <td>${dis.indexStatus }</td>
                   </c:if>
                   -->
                   <td>${dis.indexCondition }</td>
                   <td>${dis.indexStore }</td>
                 </tr>
				 
		    </c:forEach>
		</table>

	</form>

	<br />
	<form id="creditRiskForm">
		<div class="divBgColor">
			<fmt:message key="label.credit.list.detail.result" bundle="${lang}" />
		</div>
		<table border="1" cellpadding="0" cellspacing="0" width="100%">
			<tr>
				<th><fmt:message key="label.credit.th.riskGra" bundle="${lang}" /></th>
				<th><fmt:message key="label.credit.th.riskRat" bundle="${lang}" /></th>
				<th><fmt:message key="label.credit.th.creditM" bundle="${lang}" /></th>
				<th><fmt:message key="label.credit.th.creditD" bundle="${lang}" /></th>
				<th><fmt:message key="label.credit.th.creditA" bundle="${lang}" /></th>
			</tr>
			<tr>
				<!-- 年化利率 -->
				<td>${riskInfo.riskGrade }</td>
				<td>${riskInfo.riskRate }</td>
				<td>${riskInfo.creditMoney }</td>
				<td>${riskInfo.periodDate }</td>
				<td>${riskInfo.creditScoreAll }</td>
			</tr>
		</table>
	</form>
	<div class="divBgColor">
		<fmt:message key="label.memo.title" bundle="${lang}" />
	</div>
	<table>
	<tr>
			<td class="label"><fmt:message
					key="label.memo.oper.type" bundle="${lang}" /></td>
			<td align="left" width="150">${tlVo.operType}</td>
			<td class="label"><fmt:message
					key="label.memo.oper.reason" bundle="${lang}" /></td>
			<td align="left" width="150">${tlVo.operReason}</td>
			<td class="label"><fmt:message
					key="label.memo.oper.remark" bundle="${lang}" /></td>
			<td align="left" width="150">${tlVo.operReasonRemark}</td>

		</tr>
	</table>
</body>
</html>

