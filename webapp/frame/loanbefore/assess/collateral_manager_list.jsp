<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/assess/collateral_manager_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<title></title>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>


<body contextpath="<%=request.getContextPath()%>">
	<div id="collateralManagerDiv">
		<form id="collateralManagerForm" method="post">
			<table>
				<tr>
					<!-- 他证号-->
					<td class="label">它证号：</td>
					<td width="150"><input id="itCardNo" name="itCardNo"
						loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 押品号-->
					<td class="label"><fmt:message
							key="label.collateral.manager.code" bundle="${lang}" /></td>
					<td width="150"><input id="collateralCode"
						name="collateralCode" loxiaType="input" trim="true" /></td>

					<!-- 项目号-->
					<td class="label"><fmt:message
							key="label.collateral.manager.projectCode" bundle="${lang}" /></td>
					<td width="150"><input id="projectCode" name="projectCode"
						loxiaType="input" trim="true" /></td>

					<!-- 押品类型-->
					<td class="label"><fmt:message
							key="label.collateral.manager.type" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1097"
							id="collateralType" name="collateralType" isChoose="true" /></td>

				</tr>
				<tr>
					<!-- 押品名称-->
					<td class="label"><fmt:message
							key="label.collateral.manager.name" bundle="${lang}" /></td>
					<td width="150"><input id="collateralName"
						name="collateralName" loxiaType="input" trim="true" /></td>

					<!-- 押品估价 -->
					<td class="label"><fmt:message
							key="label.collateral.manager.price" bundle="${lang}" /></td>
					<td width="150"><input id="collateralPrice"
						name="collateralPrice" loxiaType="input" trim="true" /></td>

					<!-- 押品状态 -->
					<td class="label"><fmt:message
							key="label.collateral.manager.status" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1081"
							id="collateralStatus" name="collateralStatus" isChoose="true" /></td>

				</tr>
				<tr>
					<!-- 抵押日期 -->
					<td class="label"><fmt:message
							key="label.collateral.manager.date" bundle="${lang}" /></td>
					<td width="150"><input id="collateralDate"
						name="collateralDate" loxiaType="date" trim="true" /></td>

					<!-- 基础抵押日期 -->
					<td class="label"><fmt:message
							key="label.collateral.manager.overDate" bundle="${lang }" /></td>
					<td><input id="overDate" loxiaType="date" name="overDate"
						trim="true" /></td>

					<!-- 数据权限 -->
					<td class="label"><fmt:message
							key="label.apply.clientproject.dataRole" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="rolelevel"
							id="roleLevel" name="roleLevel" /></td>
				</tr>
			</table>

			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
					id="reload">
					<fmt:message key="button.query" bundle="${lang}" />
				</button>
				<button type="reset" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="tip.sys.apply.reset" bundle="${lang}"/>"
					id="resets">
					<fmt:message key="button.reset" bundle="${lang}" />
				</button>
				<button type="button" loxiaType="button" class="confirm"
					title="tip：添加押品" id="addCollateral">添加押品</button>
			</div>
		</form>

		<%@include file="/common/paginationInit.jsp"%>
		<table id="tbl-collateralManager"></table>
		<div id="pager"></div>

	</div>
</body>

</html>
