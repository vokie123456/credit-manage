<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 企业签约详细信息-->
<head>
<%@include file="/common/metaload.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.enterprise.sign.process"
		bundle="${lang}" /></title>
</head>

<body>
	<div class="divBgColor">
		<fmt:message key="label.person.sign.base" bundle="${lang}" />
	</div>
	<table class="col3">
		<tr>
			<td class="label"><fmt:message
					key="label.person.sign.clientName" bundle="${lang}" /></td>
			<td class="content">${signEnterpriseDetailVo.clientName}</td>
			<td class="label"><fmt:message
					key="label.person.sign.organizationCode" bundle="${lang}" /></td>
			<td class="content">${signEnterpriseDetailVo.organizationCode}</td>
		</tr>
		<%-- 			<tr>
				<td class="label"><fmt:message key="label.person.sign.mobilePhone"
		bundle="${lang}" /></td>
				<td class="content">${signEnterpriseDetailVo.mobilePhone}</td>
				<td class="label"><fmt:message key="label.enterprise.sign.telephone1"
		bundle="${lang}" /></td>
				<td class="content">${signEnterpriseDetailVo.telephone1}</td>
			</tr> --%>
		<tr>
			<td class="label"><fmt:message
					key="label.enterprise.sign.address1" bundle="${lang}" /></td>
			<td colspan="3">
				<table class="col3">
					<tr>
						<td class="content"><linkageshow:show type="province"
								name="signEnterpriseDetailVo" property="province1" /></td>
						<td class="content"><linkageshow:show type="city"
								name="signEnterpriseDetailVo" property="city1" /></td>
						<td class="content"><linkageshow:show type="district"
								name="signEnterpriseDetailVo" property="district1" /></td>
						<td class="content">${signEnterpriseDetailVo.town1}
							${signEnterpriseDetailVo.road1} ${signEnterpriseDetailVo.no1}</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<table>
		<%-- 			<tr>
				
				<td class="label"><fmt:message key="label.person.sign.workUnit"
		bundle="${lang}" /></td>
				<td class="content">${signEnterpriseDetailVo.workUnit}</td>
				<td class="label"><fmt:message key="label.person.sign.telephone2"
		bundle="${lang}" /></td>
				<td class="content">${signEnterpriseDetailVo.telephone2}</td>
				<td class="label"><fmt:message key="label.enterprise.sign.address2"
		bundle="${lang}" /></td>
				   <td><linkageshow:show type="province" name="signEnterpriseDetailVo" property="province2" /> 
					<linkageshow:show type="city" name="signEnterpriseDetailVo" property="city2" /> 
					<linkageshow:show type="district" name="signEnterpriseDetailVo" property="district2" />
					${signEnterpriseDetailVo.town2} ${signEnterpriseDetailVo.road2} ${signEnterpriseDetailVo.no2}
				</td>
			</tr> --%>
		<%-- 			<tr>
				<td class="label"><fmt:message key="label.person.sign.creditDate"
		bundle="${lang}" /></td>
				<td class="content">${signEnterpriseDetailVo.creditDate}</td>
				<td class="label"><fmt:message key="label.person.sign.creditType"
		bundle="${lang}" /></td>
				<td class="content">${signEnterpriseDetailVo.creditType}</td>
			</tr> --%>
	</table>
	<div class="divBgColor">
		<fmt:message key="label.person.sign.check" bundle="${lang}" />
	</div>
	<table class="col3">
		<tr>
			<td class="label"><fmt:message
					key="label.person.sign.checkerName1" bundle="${lang}" /></td>
			<td class="content">${signEnterpriseDetailVo.checkerName1}</td>
			<td class="label"><fmt:message
					key="label.person.sign.checkerName2" bundle="${lang}" /></td>
			<td class="content">${signEnterpriseDetailVo.checkerName2}</td>
			<%-- 				<td class="label"><fmt:message key="label.person.sign.checkStatus"
		bundle="${lang}" /></td>
				  <td class="content"><bizoptionname:showname
						biztypekey="1034" value="${signEnterpriseDetailVo.checkStatus}"  /></td> --%>

		</tr>
		<%-- 			<tr>
				<td class="label"><fmt:message key="label.person.sign.prodName"
		bundle="${lang}" /></td>
				<td class="content">${signEnterpriseDetailVo.prodName}</td>
				
				<td class="label"><fmt:message key="label.person.sign.loanPurpose"
		bundle="${lang}" /></td>
				<td class="content"><bizoptionname:showname
						biztypekey="1023" value="${signEnterpriseDetailVo.loanPurpose}"/></td>
			</tr> --%>
		<tr>
			<td class="label"><fmt:message
					key="label.person.sign.checkMoney" bundle="${lang}" /></td>
			<td class="content">${signEnterpriseDetailVo.checkMoney}</td>
			<td class="label"><fmt:message
					key="label.person.sign.checkPeriod" bundle="${lang}" /></td>
			<td class="content">${signEnterpriseDetailVo.checkPeriod}</td>
		</tr>
		<tr>
			<td class="label"><fmt:message key="label.person.sign.signCard"
					bundle="${lang}" /></td>
			<td colspan="3"><checkBox:checkBox biztypekey="1105"
					id="signCard" name="signEnterpriseDetailVo.signCard"
					checked="${signEnterpriseDetailVo.signCard}" disabled="true" /></td>
		</tr>
		<tr>
			<td class="label"><fmt:message
					key="label.person.sign.signcardRemark" bundle="${lang}" /></td>
			<td align="left">${signEnterpriseDetailVo.signcardRemark}</td>
		</tr>
	</table>
</body>
</html>
