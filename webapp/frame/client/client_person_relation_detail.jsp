<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
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

	<div class="divBgColor">
		<fmt:message key="label.apply.relation" bundle="${lang}" />
	</div>
	
	<form>
		<c:forEach items="${relationList}" var="m">
			<c:if test="${m.relationType!='102011'}">
				<table>
					<tr>
						<td class="label"><fmt:message
								key="label.applyDetail.relationType" bundle="${lang}" /></td>
						<td align="left"><bizoptionname:showname biztypekey="1020"
								value="${m.relationType}" /></td>
						<td class="label"><fmt:message
								key="label.applyDetail.relationobjName" bundle="${lang}" /></td>
						<td align="left" width="150">${m.relationobjName}</td>
						<td class="label"><fmt:message
								key="label.applyDetail.cardCode" bundle="${lang}" /></td>
						<td align="left" width="150">${m.cardCode}</td>
					</tr>
					<tr>
						<td class="label"><fmt:message
								key="label.applyDetail.mobilePhone" bundle="${lang}" /></td>
						<td align="left" width="150">${m.mobilePhone}</td>

						<td class="label"><fmt:message
								key="label.applyDetail.workUnit" bundle="${lang}" /></td>
						<td align="left" width="150">${m.workUnit}</td>

						<td class="label"><fmt:message
								key="label.applyDetail.position" bundle="${lang}" /></td>
						<td align="left" width="150">${m.position}</td>

					</tr>
					<tr>
						<td class="label"><fmt:message key="label.applyDetail.email"
								bundle="${lang}" /></td>
						<td align="left" width="150">${m.email}</td>

						<td class="label"><fmt:message key="label.applyDetail.im"
								bundle="${lang}" /></td>
						<td align="left" width="150">${m.im}</td>


					</tr>
					<!-- 地址信息循环 -->
					<tr>
						<td class="label"><fmt:message
								key="label.applyDetail.address1" bundle="${lang}" /></td>
						<td><c:if test="${m.addrType1=='102111'}">
								<linkageshow:show type="province" name="province1"
									property="province" />
								<linkageshow:show type="city" name="city1" property="city" />
								<linkageshow:show type="district" name="district1"
									property="district" />
									${m.detail1 }
								</c:if></td>
						<td class="label">户籍电话：</td>
						<td align="left">${m.telephone1}</td>
					</tr>


					<tr>
						<td class="label"><fmt:message
								key="label.applyDetail.address3" bundle="${lang}" /></td>
						<td><c:if test="${m.addrType3=='102113'}">
								<linkageshow:show type="province" name="province3"
									property="province" />
								<linkageshow:show type="city" name="city3" property="city" />
								<linkageshow:show type="district" name="district3"
									property="district" />
									${m.detail3 }
						       </c:if></td>
					</tr>
					<tr>
						<td class="label"><fmt:message
								key="label.applyDetail.address2" bundle="${lang}" /></td>
						<c:if test="${address.addrType=='102112'}">
							<td><linkageshow:show type="province" name="province2"
									property="province" /> <linkageshow:show type="city"
									name="city2" property="city" /> <linkageshow:show
									type="district" name="district2" property="district" />
								${m.detail2 }</td>
						</c:if>
					</tr>
				</table>
				</br>
				</br>
			</c:if>
		</c:forEach>
	</form>

</body>
</html>