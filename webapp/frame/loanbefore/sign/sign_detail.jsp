<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 个人签约流程单-->
<head>
<%@include file="/common/metaload.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.person.sign.process"
		bundle="${lang}" /></title>
<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>
<body>
	<div class="divBgColor">
		<fmt:message key="label.person.sign.base" bundle="${lang}" />
	</div>
	<table class="col3">
		<tr>
			<td class="label"><fmt:message
					key="label.person.sign.clientName" bundle="${lang}" /></td>
			<td class="content">${signDetailVo.clientName}</td>
			<td class="label"><fmt:message key="label.person.sign.cardNo"
					bundle="${lang}" /></td>
			<td class="content">${signDetailVo.cardNo}</td>
		</tr>
		<tr>
			<td class="label"><fmt:message
					key="label.person.sign.mobilePhone" bundle="${lang}" /></td>
			<td class="content">${signDetailVo.mobilePhone}</td>
			<td class="label"><fmt:message
					key="label.person.sign.telephone1" bundle="${lang}" /></td>
			<td class="content">${signDetailVo.telephone1}</td>
		</tr>
		<tr>
			<td class="label"><fmt:message key="label.person.sign.workUnit"
					bundle="${lang}" /></td>
			<td class="content">${signDetailVo.workUnit}</td>
			<td class="label"><fmt:message
					key="label.person.sign.telephone2" bundle="${lang}" /></td>
			<td class="content">${signDetailVo.telephone2}</td>
		</tr>
		<tr>
			<td class="label"><fmt:message key="label.person.sign.address1"
					bundle="${lang}" /></td>
			<td colspan="3">
				<table class="col3">
					<tr>
						<td class="content"><linkageshow:show type="province"
								name="signDetailVo" property="province1" /></td>
						<td class="content"><linkageshow:show type="city"
								name="signDetailVo" property="city1" /></td>
						<td class="content"><linkageshow:show type="district"
								name="signDetailVo" property="district1" /></td>
						<td class="content">${signDetailVo.town1}
							${signDetailVo.road1} ${signDetailVo.no1}</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td class="label"><fmt:message key="label.person.sign.address2"
					bundle="${lang}" /></td>
			<td colspan="3">
				<table class="col3">
					<td class="content"><linkageshow:show type="province"
							name="signDetailVo" property="province2" /></td>
					<td class="content"><linkageshow:show type="city"
							name="signDetailVo" property="city2" /></td>
					<td class="content"><linkageshow:show type="district"
							name="signDetailVo" property="district2" /></td>
					<td class="content">${signDetailVo.town2}
						${signDetailVo.road2} ${signDetailVo.no2}</td>
				</table>

			</td>
		</tr>
		<%-- 		<tr>
			<td class="label"><fmt:message
					key="label.person.sign.creditDate" bundle="${lang}" /></td>
			<td class="content">${signDetailVo.creditDate}</td>
			<td class="label"><fmt:message
					key="label.person.sign.creditType" bundle="${lang}" /></td>
			<td class="content">${signDetailVo.creditType}</td>
		</tr> --%>
	</table>
	<div class="divBgColor">
		<fmt:message key="label.person.sign.check" bundle="${lang}" />
	</div>
	<table class="col3">
		<tr>
			<td class="label"><fmt:message
					key="label.person.sign.checkerName1" bundle="${lang}" /></td>
			<td class="content">${signDetailVo.checkerName1}</td>
			<td class="label"><fmt:message
					key="label.person.sign.checkerName2" bundle="${lang}" /></td>
			<td class="content">${signDetailVo.checkerName2}</td>
			<%-- 			<td class="label"><fmt:message
					key="label.person.sign.checkStatus" bundle="${lang}" /></td>
			<td class="content"><bizoptionname:showname
					biztypekey="1034" value="${signDetailVo.checkStatus}" /></td> --%>

		</tr>
		<%-- 		<tr>
			<td class="label"><fmt:message key="label.person.sign.prodName"
					bundle="${lang}" /></td>
			<td class="content">${signDetailVo.prodName}</td>

			<td class="label"><fmt:message
					key="label.person.sign.loanPurpose" bundle="${lang}" /></td>
			<td class="content"><bizoptionname:showname
					biztypekey="1023" value="${signDetailVo.loanPurpose}" /></td>


		</tr> --%>
		<tr>
			<td class="label"><fmt:message
					key="label.person.sign.checkMoney" bundle="${lang}" /></td>
			<td class="content">${signDetailVo.checkMoney}</td>
			<td class="label"><fmt:message
					key="label.person.sign.checkPeriod" bundle="${lang}" /></td>
			<td class="content">${signDetailVo.checkPeriod}</td>
		<tr>
			<td class="label"><fmt:message key="label.person.sign.signCard"
					bundle="${lang}" /></td>
			<td colspan="3" class="content"><checkBox:checkBox biztypekey="1051"
					id="signCard" name="signDetailVo.signCard"
					checked="${signDetailVo.signCard}" disabled="true" /></td>
		</tr>
		<tr>
			<td class="label"><fmt:message
					key="label.person.sign.signcardRemark" bundle="${lang}" /></td>
			<td colspan="3" class="content">${signDetailVo.signcardRemark}</td>
		</tr>
	</table>
</body>
</html>
