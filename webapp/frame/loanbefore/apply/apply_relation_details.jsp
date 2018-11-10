<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 申请贷款客户信息 -->
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<c:forEach items="${relationList}" var="personRelation"
		varStatus="loop">
		<div id="applyRelation${loop.index}">
			<br /> 
			<div class="divBgColor">
				<table>
					<tr>
						<td width="150"><fmt:message key="label.apply.relation"
								bundle="${lang}" /></td>
					</tr>
				</table>
			</div>
			<table class="col3">
				<tr>
					<td class="label"><fmt:message
							key="label.applyDetail.relationType" bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1020"
							value="${personRelation.relationType}" /></td>
					<td class="label"><fmt:message
							key="label.applyDetail.relationobjName" bundle="${lang}" /></td>
					<td class="content">${personRelation.relationobjName}</td>
				</tr>
				<tr>
					<td class="label"><fmt:message
							key="label.applyDetail.cardCode" bundle="${lang}" /></td>
					<td class="content">${personRelation.cardCode}</td>
					<td class="label"><fmt:message
							key="label.applyDetail.mobilePhone" bundle="${lang}" /></td>
					<td class="content">${personRelation.mobilePhone}</td>
				</tr>
				<tr>
					<td class="label"><fmt:message
							key="label.applyDetail.workUnit" bundle="${lang}" /></td>
					<td class="content">${personRelation.workUnit}</td>
					<td class="label">单位电话：</td>
					<td class="content">${personRelation.telephone3}</td>
				</tr>
				<tr>
					<td class="label"><fmt:message
							key="label.applyDetail.position" bundle="${lang}" /></td>
					<td class="content">${personRelation.position}</td>
					<td class="label">工资收入：</td>
					<td align="left">${personRelation.incomeWorkunit}</td>
				</tr>
				<tr>
					<td class="label">单位地址：</td>
					<td colspan="3">
						<table class="col3">
							<tr>
								<td class="content">${personRelation.province3}</td>
								<td class="content">${personRelation.city3}</td>
								<td class="content">${personRelation.district3}</td>
								<td class="content">${personRelation.detail3}</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td class="label">居住地址：</td>
					<td colspan="3">
						<table class="col3">
							<tr>
								<td class="content">${personRelation.province2}</td>
								<td class="content">${personRelation.city2}</td>
								<td class="content">${personRelation.district2}</td>
								<td class="content">${personRelation.detail2}</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td class="label"><fmt:message
							key="label.applyDetail.address1" bundle="${lang}" /></td>
					<td colspan="3">
						<table class="col3">
							<tr>
								<td class="content">${personRelation.province1}</td>
								<td class="content">${personRelation.city1}</td>
								<td class="content">${personRelation.district1}</td>
								<td class="content">${personRelation.detail1}</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td class="label">户籍电话：</td>
					<td class="content">${personRelation.telephone1}</td>
					<td class="label"><fmt:message key="label.applyDetail.email"
							bundle="${lang}" /></td>
					<td class="content">${personRelation.email}</td>
				</tr>
				<tr>
					<td class="label"><fmt:message key="label.applyDetail.im"
							bundle="${lang}" /></td>
					<td class="content">${personRelation.im}</td>
				</tr>
			</table>
		</div>
	</c:forEach>
</body>