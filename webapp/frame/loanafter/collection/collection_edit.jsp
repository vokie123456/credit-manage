<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.collection.title"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/collection/collection_edit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}

.divB {
	border-color: #50667C;
}
</style>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<!-- 这里是页面内容区 -->
	<div class="ui-tabs ui-widget ui-widget-content ui-corner-all"
		id="div_out">
		<ul
			class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li
				class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active"><a
				href="#div-1">催收信息</a></li>
		</ul>
		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="div-1">
			<div class="divBgColor">基本信息</div>
			<form id="basicInfoForm">
				<table width="100%" border="1" append="1" bordercolor="#EFEFEF">
					<tr>
						<!-- 合同编号-->
						<td class="label"><fmt:message
								key="label.collection.agreementCode" bundle="${lang}" /></td>
						<td width="150">${bInfo.contractCode }</td>
						<!-- 项目编号-->
						<td class="label"><fmt:message
								key="label.apply.clientproject.project_code" bundle="${lang}" /></td>
						<td width="150">${bInfo.projectCode }</td>
						<!-- 客户姓名 -->
						<td class="label"><fmt:message
								key="label.apply.clientproject.client_name" bundle="${lang}" /></td>
						<td width="150">${bInfo.clientName }</td>

					</tr>
					<tr>
						<!-- 催收状态-->
						<td class="label"><fmt:message key="label.collection.status"
								bundle="${lang}" /></td>
						<td width="150"><bizoptionname:showname biztypekey="1040"
								value="${bInfo.isCollection }" /></td>
						<input type="hidden" id="collectionStatus"
							value="${bInfo.isCollection }" />
						<!-- 产品名称-->
						<td class="label"><fmt:message
								key="label.collection.productName" bundle="${lang}" /></td>
						<td width="150">${bInfo.productName }</td>
						<!-- 身份证号-->
						<td class="label"><fmt:message
								key="label.apply.clientproject.card_no" bundle="${lang}" /></td>
						<td width="150">${bInfo.cardNo }</td>
					</tr>
				</table>
			</form>
			<br />
			<form id="billRecordForm">
				<div class="divBgColor">
					<fmt:message key="label.collection.billTitle" bundle="${lang}" />
				</div>

				<div class="buttonlist buttonDivWidth">
					<%@ include
						file="/frame/loanafter/accountbill/business_bill_detail_body.jsp"%>

				</div>

			</form>
			<br />


			<form id="collectionDesForm">
				<div class="title btnDiv">
					<fmt:message key="label.collection.collectionTitle"
						bundle="${lang}" />
					<c:if test="${dt.dunStatus ne 104002}">
						<input class="confirm" loxiaType="button" type="button"
							value="添加催收记录" id="addCollectRecord"
							style="float: right; font-size: 12px;" />
					</c:if>

					<input type="hidden" name="recordSize" id="recordSize"
						value="${recordSize }" /> <input type="hidden" id="taskId"
						value="${taskId }" /> <input type="hidden" name="dunId"
						id="dunId" value="${dunId }" /> <input type="hidden"
						id="projectId" name="projectId" value="${proId }" /> <input
						type="hidden" id="dunWho" value="${dt.dunWho }" />
				</div>

				<c:if test="${dtNum eq 0 }">
					<div id="collectRecord0">

						<div>
							催收记录
							<c:if test="${dt.dunStatus ne 104002}">
								<input type="button" value="删除催收记录" loxiaType="button"
									onclick="delCollectRecord(0)" />
							</c:if>
						</div>


						<table border="1" append="1" bordercolor="#EFEFEF" width="100%">
							<tr>

								<!-- 催收概述 -->
								<td class="label" style="text-align: center;"><fmt:message
										key="label.collection.collectionDes" bundle="${lang}" /></td>
								<td width="150" colspan="3"><textarea id="dunComments"
										name="dunComments" loxiaType="input" trim="true">${dk.dunComments }</textarea></td>
							</tr>
							<tr>
								<!-- 催收方式-->
								<td class="label" style="text-align: center;"><fmt:message
										key="label.collection.collectionType" bundle="${lang}" /></td>
								<td width="150" colspan="3"><checkBox:checkBox
										biztypekey="1041" name="dunManner" checked="${dk.dunManner }" /></td>
							</tr>
							<tr>
								<!-- 催收人 -->
								<td class="label" style="text-align: center;"><fmt:message
										key="label.collection.collector" bundle="${lang}" /></td>
								<td width="150"><showusername:showusername
										value="${dt.dunWho }" />

									<td class="label" style="text-align: center;"><fmt:message
											key="label.collection.collectionDate" bundle="${lang}" /></td>
									<td width="150"><input name="dunTime" loxiaType="date"
										mandatory="true" trim="true" value="${dk.dunTime }"
										readonly="readonly" /><label class="del_mandatory">&nbsp;*</label></td>
							</tr>
						</table>
					</div>
				</c:if>

				<c:forEach items="${dtList }" var="dk" varStatus="loop">
					<div id="collectRecord${loop.index}">

						<div>
							催收记录
							<c:if test="${dt.dunStatus ne 104002}">
								<input type="button" value="删除催收记录" loxiaType="button"
									onclick="delCollectRecord(${loop.index})" />
							</c:if>
						</div>

						<table border="1" append="1" bordercolor="#EFEFEF" width="100%">
							<tr>

								<!-- 催收概述 -->
								<td class="label" style="text-align: center;"><fmt:message
										key="label.collection.collectionDes" bundle="${lang}" /></td>
								<td width="150" colspan="3"><textarea id="dunComments"
										name="dunComments" loxiaType="input" trim="true">${dk.dunComments }</textarea></td>
							</tr>
							<tr>
								<!-- 催收方式-->
								<td class="label" style="text-align: center;"><fmt:message
										key="label.collection.collectionType" bundle="${lang}" /></td>
								<td width="150" colspan="3"><checkBox:checkBox
										biztypekey="1041" name="dunManner" checked="${dk.dunManner }" /></td>
							</tr>
							<tr>
								<!-- 催收人 -->
								<td class="label" style="text-align: center;"><fmt:message
										key="label.collection.collector" bundle="${lang}" /></td>
								<td width="150"><showusername:showusername
										value="${dt.dunWho }" />

									<td class="label" style="text-align: center;"><fmt:message
											key="label.collection.collectionDate" bundle="${lang}" /></td>
									<td width="150"><input name="dunTime" loxiaType="date"
										mandatory="true" trim="true" value="${dk.dunTime }"
										readonly="readonly" /><label class="del_mandatory">&nbsp;*</label></td>
							</tr>
						</table>
					</div>
				</c:forEach>

			</form>

			<c:if test="${dt.dunStatus ne 104002}">
				<div class="buttonlist buttonDivWidth" id="butDiv"
					style="text-align: center;">
					<button type="button" loxiaType="button" class="confirm"
						id="saveOn">保存催收</button>
					<button type="button" loxiaType="button" class="confirm"
						title="tip：<fmt:message key="label.collection.finishCollectionh" bundle="${lang}"/>"
						id="finishColl">
						<fmt:message key="label.collection.finishCollection"
							bundle="${lang}" />
					</button>

				</div>
			</c:if>
		</div>
	</div>
</body>
</html>
