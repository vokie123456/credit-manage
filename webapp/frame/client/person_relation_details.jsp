<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<!-- 申请贷款客户信息 -->
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<c:forEach items="${relationList}" var="personRelation"
		varStatus="loop">
		<div id="applyRelation${loop.index}">
			<div class="divBgColor">
				<table>
					<tr>
						<td width="150"><fmt:message key="label.apply.relation"
								bundle="${lang}" /></td>
					</tr>
				</table>
			</div>
			<table class="textalignCenter tabcustomPeo"  cellpadding="0"
					cellspacing="0">
				<tr>
					<td class="label BgColor"><fmt:message
							key="label.applyDetail.relationType" bundle="${lang}" /></td>
					<td colspan="3" class="content tabBorderRight"><bizoptionname:showname biztypekey="1020"
							value="${personRelation.relationType}" /></td>
				</tr>
				<tr>
					<td class="label BgColor"><fmt:message
							key="label.applyDetail.relationobjName" bundle="${lang}" /></td>
					<td class="content">${personRelation.relationobjName}</td>
					<td class="label BgColor"><fmt:message
							key="label.applyDetail.workUnit" bundle="${lang}" /></td>
					<td class="content tabBorderRight">${personRelation.workUnit}</td>
				</tr>
				<tr>
					<td class="label BgColor" >证件类型：</td>
					<td class="content"><bizoptionname:showname biztypekey="1007"
							value="${personRelation.cardType }" /></td>
					<td class="label BgColor"><fmt:message
							key="label.applyDetail.cardCode" bundle="${lang}" /></td>
					<td class="content tabBorderRight">${personRelation.cardCode}</td>
				</tr>
				<tr>
					<td class="label BgColor"><fmt:message
							key="label.applyDetail.mobilePhone" bundle="${lang}" /></td>
					<td class="content">${personRelation.mobilePhone}</td>
					<td class="label BgColor"><fmt:message
							key="label.applyDetail.position" bundle="${lang}" /></td>
					<td class="content tabBorderRight">${personRelation.position}</td>
				</tr>
				<tr>
					<td class="label BgColor"><fmt:message key="label.applyDetail.email"
							bundle="${lang}" /></td>
					<td class="content">${personRelation.email}</td>
					<td class="label BgColor"><fmt:message key="label.applyDetail.im"
							bundle="${lang}" /></td>
					<td class="content tabBorderRight">${personRelation.im}</td>
				</tr>
				<tr>
					<td class="label BgColor">户籍电话：</td>
					<td class="content">${personRelation.telephone1}</td>
					<td class="label BgColor">单位电话：</td>
					<td class="content tabBorderRight">${personRelation.telephone3}</td>
				</tr>
				<tr>
					<td class="label BgColor">工资收入：</td>
					<td colspan="3" class="content tabBorderRight">${personRelation.incomeWorkunit}</td>
				</tr>
				<tr>
					<td class="label BgColor">单位地址：</td>
					<td colspan="3" class="tabBorderRight">
						<table class="col3">
							<tr>
								<td class="content borBottom borRight"><linkageshow:show type="province"
										name="personRelation" property="province3" /><linkageshow:show type="city"
										name="personRelation" property="city3" /><linkageshow:show type="district"
										name="personRelation" property="district3" />${personRelation.detail3}</td>
							</tr>
						</table>  
					</td>
				</tr>
				<tr>
					<td class="label BgColor">居住地址：</td>
					<td colspan="3" class="tabBorderRight">
						<table class="col3">
							<tr>
								<td class="content borBottom borRight"><linkageshow:show type="province"
										name="personRelation" property="province2" /><linkageshow:show type="city"
										name="personRelation" property="city2" /><linkageshow:show type="district"
										name="personRelation" property="district2" />${personRelation.detail2}</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td class="label BgColor"><fmt:message
							key="label.applyDetail.address1" bundle="${lang}" /></td>
					<td colspan="3" class="tabBorderRight">
						<table class="col3">
							<tr>
								<td class="content borBottom borRight"><linkageshow:show type="province"
										name="personRelation" property="province1" /><linkageshow:show type="city"
										name="personRelation" property="city1" /><linkageshow:show type="district"
										name="personRelation" property="district1" />${personRelation.detail1}</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
		<br/>
	</c:forEach>
</body>