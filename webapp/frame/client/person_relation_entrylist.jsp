<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/person_relation_entryList.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
   <div id="listDiv">
		<div class="divBgColor">关系人信息</div>
		<form id="listForm">
			<div id="commonListDiv">
				<table class="textalignCenter tabcustom" cellpadding="0"
					cellspacing="0" width="100%">
					<tr class="tabcustomTr">
						<th>关系人姓名</th>
						<th>关系人类型</th>
						<th>证件类型</th>
						<th>证件号码</th>
						 <c:if test="${flag==true }">
							<th>编辑</th>
						    <th class="tabBorderRight">删除</th>
						</c:if>
					</tr>
					<input type="hidden" id="clientId" value="${clientId}" />
					<c:forEach items="${relationList}" var="relation" varStatus="loop">
						<tr>
							<td class="tdCenter">${relation.relationobjName}</td>
							<td class="tdCenter">
								<bizoptionname:showname
									biztypekey="1020" value="${relation.relationType}" />
						    </td>
							<td class="tdCenter">
							    <bizoptionname:showname
									biztypekey="1007" value="${relation.cardType}" />
							</td>
							<c:if test="${flag==true }">
								<td class="tdCenter">${relation.cardCode}</td>
										<td class="tdCenter">
										   <label id="loadLink" class="fileList"
											onclick="editRelationPerson(${relation.relationId})"> <fmt:message
													key="label.collection.but.edit" bundle="${lang}" />
										     </label>
										</td>
								<td class="tabBorderRight"><label class="fileList"
											onclick="deleteRelationPerson(${relation.relationId})"> <fmt:message
													key="button.delete" bundle="${lang}" />
								</label></td>
							</c:if>
						</tr>
					</c:forEach>
				</table>
			</div>   
		</form>
		   <c:if test="${flag==true }">
				<div class="tabbuttonlist buttonDivWidth">
					<button type="button" loxiaType="button" class="confirm"
						id="addRelationPerson">添加关系人</button>
				</div>
			</c:if>
	</div>
	<div id="detailDiv"></div>
</body>