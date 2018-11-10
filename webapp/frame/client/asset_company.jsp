<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<table class="col3">
		<tr>
			<!-- 企业名称 -->
			<td class="label"><fmt:message key="label.assessComp.name"
					bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicCompany.companyName"
				value="${assetBasicComp.companyName}" loxiaType="input" trim="true" /></td>

			<!-- 占股比例 -->
			<td class="label"><fmt:message key="label.assessComp.shareStock"
					bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicCompany.shareStock"
				value="${assetBasicComp.shareStock}" loxiaType="number" decimal="2" trim="true" /></td>
		</tr>
		<tr>
			<!-- 注册日期 -->
			<td class="label"><fmt:message key="label.assessComp.reg.date"
					bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicCompany.registeredDate"
				value="<fmt:formatDate value="${assetBasicComp.registeredDate}" pattern="yyyy-MM-dd"/>" loxiaType="date"
				trim="true" /></td>

			<!-- 注册资本  -->
			<td class="label"><fmt:message
					key="label.assessComp.releaseAssets" bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicCompany.registeredAssets"
				value="${assetBasicComp.registeredAssets}" loxiaType="money" /></td>
		</tr>
		<tr>
			<td class="label">办公地址：</td>
			<td colspan="3">
				<table class="col3">
					<tr>
						<td class="content"><linkage:select type="province"
								name="assetBasicCompany.provinceOffice" pid="pi1" cid="ci1"
								did="di1" seledProvince="${assetBasicComp.provinceOffice}" /></td>
						<td class="content"><linkage:select type="city"
								name="assetBasicCompany.cityOffice" cid="ci1" did="di1"
								seledCity="${assetBasicComp.cityOffice}" /></td>
						<td class="content"><linkage:select type="district"
								name="assetBasicCompany.districtOffice" did="di1"
								seledDistrict="${assetBasicComp.districtOffice}" /></td>
						<td class="content"><input id="town2"
							name="assetBasicCompany.detailOffice" loxiaType="input" trim="true"
							value="${assetBasicComp.detailOffice}" /></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td class="label">注册地址：</td>
			<td colspan="3">
				<table class="col3">
					<tr>
						<td class="content"><linkage:select type="province"
								name="assetBasicCompany.provinceRegistered" pid="pi0" cid="ci0"
								did="di0" seledProvince="${assetBasicComp.provinceRegistered}" /></td>
						<td class="content"><linkage:select type="city"
								name="assetBasicCompany.cityRegistered" cid="ci0" did="di0"
								seledCity="${assetBasicComp.cityRegistered}" /></td>
						<td class="content"><linkage:select type="district"
								name="assetBasicCompany.districtRegistered" did="di0"
								seledDistrict="${assetBasicComp.districtRegistered}" /></td>
						<td class="content"><input id="town"
							name="assetBasicCompany.detailRegistered" loxiaType="input"
							trim="true" value="${assetBasicComp.detailRegistered}" /></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<!-- 备注 -->
			<td class="label">备注：</td>
			<td colspan="4"><textarea rows="6" name="assetBasicCompany.remark"
					style="width: 94%" loxiaType="input">${assetBasicComp.remark}</textarea></td>
		</tr>
	</table>
</body>