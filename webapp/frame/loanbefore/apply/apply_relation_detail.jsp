<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 申请贷款客户信息 -->
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div class="divBgColor">
		<fmt:message key="label.apply.relation" bundle="${lang}" />
	</div>
	<!-- 关系人不为空 -->
	<form id="personRelationForm">

		<c:forEach items="${relationMap}" var="m">
			<c:if test="${m.key.relationType!='102011'}">
				<table class="col3">
					<tr>
						<td class="label"><fmt:message
								key="label.applyDetail.relationType" bundle="${lang}" /></td>
						<td class="content"><bizoptionname:showname biztypekey="1020"
								value="${m.key.relationType}" /></td>
						<td class="label"><fmt:message
								key="label.applyDetail.relationobjName" bundle="${lang}" /></td>
						<td class="content">${m.key.relationobjName}</td>
					</tr>
					<tr>
						<td class="label"><fmt:message
								key="label.applyDetail.cardCode" bundle="${lang}" /></td>
						<td class="content">${m.key.cardCode}</td>
						<td class="label"><fmt:message
								key="label.applyDetail.mobilePhone" bundle="${lang}" /></td>
						<td class="content">${m.key.mobilePhone}</td>
					</tr>
					<tr>
						<td class="label"><fmt:message
								key="label.applyDetail.workUnit" bundle="${lang}" /></td>
						<td class="content">${m.key.workUnit}</td>

						<td class="label"><fmt:message
								key="label.applyDetail.position" bundle="${lang}" /></td>
						<td class="content">${m.key.position}</td>

					</tr>
					<tr>
						<td class="label"><fmt:message key="label.applyDetail.email"
								bundle="${lang}" /></td>
						<td class="content">${m.key.email}</td>

						<td class="label"><fmt:message key="label.applyDetail.im"
								bundle="${lang}" /></td>
						<td class="content">${m.key.im}</td>


					</tr>

					<c:forEach items="${m.value}" var="address">
						<c:if test="${address.addrType=='102111'}">
							<!-- 地址信息循环 -->
							<tr>
								<td class="label"><fmt:message
										key="label.applyDetail.address1" bundle="${lang}" /></td>
								<td colspan="5">
									<table class="col3">
										<tr>
											<td class="content"><linkageshow:show type="province"
													name="address" property="province" /></td>
											<td class="content"><linkageshow:show type="city"
													name="address" property="city" /></td>
											<td class="content"><linkageshow:show type="district"
													name="address" property="district" /></td>
											<td class="content">${address.town}${address.road}${address.no}${address.detail}</td>
											<td class="label">户籍电话：</td>
											<td class="content">${address.telephone}</td>
										</tr>
									</table>
								</td>
							</tr>
						</c:if>
					</c:forEach>

					<c:forEach items="${m.value}" var="address">
						<c:if test="${address.addrType=='102113'}">
							<tr>
								<td class="label"><fmt:message
										key="label.applyDetail.address3" bundle="${lang}" /></td>
								<td colspan="3">
									<table class="col3">
										<tr>
											<td class="content"><linkageshow:show type="province"
													name="address" property="province" /></td>
											<td class="content"><linkageshow:show type="city"
													name="address" property="city" /></td>
											<td class="content"><linkageshow:show type="district"
													name="address" property="district" /></td>
											<td class="content">${address.town}${address.road}${address.no}${address.detail}</td>
										</tr>
									</table>
								</td>
							</tr>
						</c:if>
					</c:forEach>

					<c:forEach items="${m.value}" var="address">
						<c:if test="${address.addrType=='102112'}">
							<tr>
								<td class="label"><fmt:message
										key="label.applyDetail.address2" bundle="${lang}" /></td>
								<td colspan="3">
									<table class="col3">
										<tr>
											<td class="content"><linkageshow:show type="province"
													name="address" property="province" /></td>
											<td class="content"><linkageshow:show type="city"
													name="address" property="city" /></td>
											<td class="content"><linkageshow:show type="district"
													name="address" property="district" /></td>
											<td class="content">${address.town}${address.road}${address.no}${address.detail}</td>
										</tr>
									</table>
								</td>
							</tr>
						</c:if>
					</c:forEach>
				</table>
				</br>
				</br>
			</c:if>
		</c:forEach>
		<!--  
	    <div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="submitPersonRelation">保存</button>
				
		</div>
		-->
	</form>

</body>