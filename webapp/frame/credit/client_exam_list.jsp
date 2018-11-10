<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/credit/client_exam_list.js'/>"></script>

<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
.selectClass{
float:left;
max-width: 30%;
}
.backCol{
   background-color:#efff78;
}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="collateralListDiv">
		<div class="divBgColor">
			已评级问卷
		</div>
		<form id="collateralAssessListForm">
			<input type="hidden" id="list_clientId" value="${clientId }" />
			<div id="assessListDiv">
				<table class="textalignCenter tabcustom" cellpadding="0" cellspacing="0"
					width="100%">
					<tr class="tabcustomTr">
					<th>问卷类型</th>
                    <th>问卷名称</th>
					<th>客户评级</th>
					<th>问卷得分</th>
					<th>评级人员</th>
					<th>评级时间</th>
					<th>过期时间</th>
					
					<th><fmt:message key="label.assessCar.edit.collateral.operate"
							bundle="${lang}" /></th>
					
				</tr>
					<c:forEach items="${celist}" var="gl" varStatus="loop">
						<tr id="${gl.id }">
							<td><bizoptionname:showname biztypekey="1168"
									value="${gl.examType }" /></td>
							<td>${gl.paperName }</td>
							<td>${gl.gradeLevel }</td>
							<td>${gl.examScore }</td>
							<td>${gl.creatorName }</td>
							<td><fmt:formatDate value="${gl.createTime }" pattern="yyyy-MM-dd"/></td>
							<td><fmt:formatDate value="${gl.expiredDate }" pattern="yyyy-MM-dd"/></td>
							<!--  
							<td>${gl.creator }</td>
							-->
							<td  class="tabBorderRight"><label id="gloadLink"
								style="color: blue; text-decoration: underline;"
								onclick="detailExam(${gl.id })"> <fmt:message
										key="label.collection.but.detail" bundle="${lang}" />
							</label></td>
						</tr>
					</c:forEach>
				</table>
			</div>

		</form>
			<div class="tabbuttonlist buttonDivWidth">
			    <bizoption:bizoption name="examType" id="examType" biztypekey="1168" styleClass="selectClass" ></bizoption:bizoption>&nbsp;&nbsp;
				<button type="button" loxiaType="button" class="confirm" 
					id="addExam">
					开始评级
				</button>
			</div>
	</div>
	<div id="collateralAssessDetailDiv"></div>
</body>

</html>
