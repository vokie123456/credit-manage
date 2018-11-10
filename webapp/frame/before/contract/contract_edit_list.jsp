<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/contract/contract_edit_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
</head>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<body contextpath="<%=request.getContextPath()%>">
	<div id="contractListDiv">
		<!-- 合同信息 -->
		<div class="divBgColor">合同信息</div>
		<form id="contractListForm">
			<input type="hidden" id="list_projectId" value="${projectId }" />

			<div id="assessListDiv">
				<table class="textalignCenter tabcustom" cellpadding="0"
					cellspacing="0" width="100%">
					<tr class="tabcustomTr">
						<th><fmt:message key="label.contract.edit.code"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.contract.edit.name"
								bundle="${lang}" /></th>
						<th>合同模板类型</th>
						<th><fmt:message key="label.contract.edit.begin"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.contract.edit.end"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.contract.edit.inputTime"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.contract.edit.inputUser"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.contract.edit.operate"
								bundle="${lang}" /></th>
						<c:if test="${flag==true }">
							<th><fmt:message key="label.contract.edit.operate"
									bundle="${lang}" /></th>
						</c:if>
					<c:if test="${flag==true }">
						<th class="tabBorderRight"><fmt:message
								key="label.contract.edit.operate" bundle="${lang}" /></th>
					</c:if>
					</tr>
					<c:forEach items="${contractList}" var="contract" varStatus="loop">
						<tr>
							<td style="text-align: left;">${contract.contractCode }</td>
							<td>${contract.contractName }</td>
							<td>${contract.contractTypeName }</td>
							<td><fmt:formatDate value='${contract.contractBegin }'
									pattern='yyyy-MM-dd' /></td>
							<td><fmt:formatDate value='${contract.contractEnd }'
									pattern='yyyy-MM-dd' /></td>
							<td>${contract.contractInputTime}</td>
							<td>${contract.userName}</td>
							<td><c:if
									test="${flag!=true }">
									<label id="loadLink" class="fileList"
										onclick="detailContract(${contract.contractId })"> <fmt:message
											key="label.assessCar.edit.collateral.detail" bundle="${lang}" />
									</label></td>
							</c:if>
							<c:if test="${flag==true }">
								<label id="loadLink" class="fileList"
									onclick="editContract(${contract.contractId })"> <fmt:message
										key="label.collection.but.edit" bundle="${lang}" />
								</label>
								
							</c:if>
							</td>
							<c:if
									test="${flag==true }">
							<td>
									<label class="fileList"
										onclick="deleteContract(${contract.contractId })"> <fmt:message
											key="button.delete" bundle="${lang}" />
									</label>
								</td></c:if>
								<c:if test="${flag==true}">
							<td class="tabBorderRight">
								<label class="fileList" onclick="contractPrint('${contract.contractType}' , ${projectId})"> 合同打印 </label>
								</td>
								</c:if>
						</tr>
					</c:forEach>
				</table>
			</div>
		</form>  
		<c:if
			test="${flag==true }">
			<div class="tabbuttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					id="btnAddContract">
					<fmt:message key="label.contract.edit.btn.add" bundle="${lang}" />
				</button>
			</div>
		</c:if>

	</div>
	<div id="contractDetailDiv"></div>
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
</body>

</html>
