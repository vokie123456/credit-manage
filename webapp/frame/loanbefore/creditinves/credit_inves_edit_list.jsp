<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/creditinves/credit_inves_edit_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/main/uploadify/jquery.uploadify.js'/>"></script>
<link href="<c:url value='/scripts/main/uploadify/css/uploadify.css'/>"
	rel="stylesheet" type="text/css" />

<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<input id="sessionId" type="hidden"
		value="<%=request.getSession().getId()%>" />
	<div>
		<!-- 征信编辑列表 -->
		<div class="divBgColor">
			<fmt:message key="label.credit.inves.title" bundle="${lang}" />
		</div>
		<input type="hidden" id="list_flag" value="${flag }" />
		<input type="hidden" id="list_projectId" value="${projectId }" />
		<input type="hidden" id="list_clientId" value="${clientId }" />
		
		<div>
			<table class="textalignCenter tabcustom0" cellpadding="0" cellspacing="0" width="100%">
			<tr class="custr tabcustomTr">
				<th><fmt:message key="label.collateral.manager.guarantee.name"
						bundle="${lang}" /></th>
				<th><fmt:message key="label.credit.inves.relationType"
						bundle="${lang}" /></th>
				<th><fmt:message key="label.person.sign.card_type"
						bundle="${lang}" /></th>
				<th><fmt:message key="label.person.sign.card_no"
						bundle="${lang}" /></th>
				<th><fmt:message key="label.credit.inves.comp.info.status"
						bundle="${lang}" /></th>
				<th><fmt:message key="label.credit.result.status"
						bundle="${lang}" /></th>
				
				<!--  
				<c:if test="${flag==true }">
					<th><fmt:message key="label.credit.result.generate"
							bundle="${lang}" /></th>
				
				</c:if>
				-->
				
				<th class="tabBorderRight0">管理</th>
</tr>
				<c:forEach items="${celist}" var="cl" varStatus="loop">
					<tr class="custr">
						<td  id="clientName${loop.index}">${cl.clientName }</td>
						<td >${cl.relationTypeName }</td>
						<td ><bizoptionname:showname
								biztypekey="1007,1102" value="${cl.cardType }" /> <input
							type="hidden" id="cardType${loop.index}" value="${cl.cardType }" /></td>
						<td id="cardNo${loop.index}" >${cl.cardNo }</td>
						<td ><bizoptionname:showname biztypekey="1096"
								value="${cl.status }" /> <input type="hidden"
							id="status${loop.index}" value="${cl.status }" /></td>
						<td >${cl.resultStatus }</td>
						<!-- 
						<c:if test="${flag==true }">
							<td ><label id="geneCredit${loop.index}"
								style="color: blue; text-decoration: underline;"
								onclick="generateCredit(${loop.index})"><fmt:message
										key="label.credit.result.generateCredit" bundle="${lang}" /></label></td>
						</c:if>
						 -->     
						<td  class="tabBorderRight0"><label id="manager${loop.index}"
							class="fileList"
							onclick="displayTr(${loop.index})">管理</label></td>
					</tr>
					<tr id="managerTr${loop.index}"  class="disNone"  >
						<td colspan="8" class="bordertop">
							<table style="width: 100%;">
								<tr >
									<td align="left" class="width200">${flag==true?"添加文件：":"" }</td>
									<td align="left">
										<table style="width: 600px;">
											<tr>
												<td><form id="upLoadCreditForm${loop.index}"
														action="<%=request.getContextPath()%>/loanbefore/credit/uploadCreditFile.do"
														method="post" enctype="multipart/form-data"
														target="temp${loop.index}">
														<!-- 用来作为参数传递 -->
														<input type="hidden" id="projectId" name="projectId"
															value="${projectId }" /> <input type="hidden"
															id="cardType" name="cardType" value="${cl.cardType }" />
														<input type="hidden" id="cardNo" name="cardNo"
															value="${cl.cardNo }" /> <input type="hidden"
															id="clientName" name="clientName"
															value="${cl.clientName }" />
														<c:if test="${flag==true }">
															<input type="file" name="myfiles" multiple="multiple"
																onchange="uploadCredit(${loop.index})"
																style="display: none;" />
														</c:if>
													</form></td>
												<td><iframe id="temp${loop.index}"
														name="temp${loop.index}" style="display: none;"></iframe></td>
											</tr>
											<tr>
												<td colspan="2"><c:if test="${flag==true }">
														<input type="file" name="uploadify${loop.index}"
															id="uploadify${loop.index}" />
													</c:if></td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
								</tr>
							</table>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<!--  
		<c:if test="${flag==true }">
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					id="exportPart">
					<fmt:message key="label.export.credit.part" bundle="${lang}" />
				</button>
			</div>
		</c:if>
		-->
	</div>
	<div id="fileQueue" style="display: none1;"></div>
	<div id="imgDialog" style="display: none;"></div>
</body>
</html>
