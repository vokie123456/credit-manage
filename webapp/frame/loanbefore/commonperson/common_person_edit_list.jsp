<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/commonperson/common_person_edit_list.js'/>"></script>

<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>

<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">

	<div id="listDiv">
		<div class="divBgColor">共同借款人信息</div>
		<form id="listForm">
			<input type="hidden" id="list_projectId" value="${projectId }" />
			<div id="commonListDiv">
				<table class="textalignCenter tabcustom" cellpadding="0"
					cellspacing="0" width="100%">
					<tr class="tabcustomTr">
						<th>共同借款人姓名</th>
						<th>证件类型</th>
						<th>证件号</th>

						<th>编辑</th>
						<c:if test="${flag==true }">
							<th class="tabBorderRight">删除</th>
						</c:if>
					</tr>
					<c:forEach items="${celist}" var="cp" varStatus="loop">
						<tr>
							<td class="tdCenter">${cp.commonName }</td>
							<td class="tdCenter"><bizoptionname:showname
									biztypekey="1007" value="${cp.cardType }" /></td>
							<td class="tdCenter">${cp.cardCode }</td>
							<c:choose>
								<c:when test="${flag==true }">
									<td class="tdCenter"><label id="loadLink" class="fileList"
										onclick="editCommonPerson(${cp.commonId })"> <fmt:message
												key="label.collection.but.edit" bundle="${lang}" />
									</label></td>

									<td class="tabBorderRight"><label class="fileList"
										onclick="deleteCommonPerson(${cp.commonId })"> <fmt:message
												key="button.delete" bundle="${lang}" />
									</label></td>
								</c:when>
								<c:otherwise>
									<td class="tabBorderRight"><label id="loadLink"
										class="fileList" onclick="detailCommonPerson(${cp.commonId })">
											<fmt:message key="label.collection.but.detail"
												bundle="${lang}" />
									</label></td>
								</c:otherwise>
							</c:choose>

						</tr>
					</c:forEach>
				</table>
			</div>   

		</form>
		<c:if test="${flag==true }">
			<div class="tabbuttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					id="addCommonPerson">添加共同借款人</button>
			</div>
		</c:if>
	</div>
	<div id="detailDiv"></div>
</body>

</html>
