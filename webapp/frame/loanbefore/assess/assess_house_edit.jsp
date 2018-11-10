<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 房屋评估页面  key表示国际化  配置在messages_zh_CN.properties文件中-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.assessHouse.edit.title"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/assess/assess_house_edit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="formdetail">
		<div class="divBgColor">
			<fmt:message key="label.assessHouse.edit.title" bundle="${lang}" />
		</div>
		<form id="assessHouseEditForm" method="post">
			<input type="hidden" id="edit" value="${edit}" /> <input
				type="hidden" id="projectId" value="${projectId}" /> <input
				type="hidden" name="assessHouseId"
				value="${assessHousePerson.assessHouseId}" /> <input type="hidden"
				name="assessStatus" value="${assessHousePerson.assessStatus}" /> <input
				type="hidden" id="flag" value="${flag}" />
			<table>
				<tr>
					<!-- 土地证号-->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.no_land" bundle="${lang}" /></td>
					<td width="150"><input name="no_land"
						value="${assessHousePerson.no_land}" loxiaType="input" trim="true" />
					</td>

					<!-- 地号/档案保管号 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.no_archive" bundle="${lang}" /></td>
					<td width="150"><input name="no_archive"
						value="${assessHousePerson.no_archive}" loxiaType="input"
						trim="true" /></td>

					<!-- 房产证号 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.no_house" bundle="${lang}" /></td>
					<td width="150"><input name="no_house"
						value="${assessHousePerson.no_house}" loxiaType="input"
						trim="true" /></td>
				</tr>
				<tr>
					<!-- 房屋坐落  -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.houseAddress" bundle="${lang}" /></td>
					<td width="150"><input name="houseAddress"
						value="${assessHousePerson.houseAddress}" loxiaType="input"
						trim="true" /></td>

					</td>
					<!-- 房屋结构 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.houseStructure" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1074"
							name="houseStructure" isChoose="false"
							selected="${assessHousePerson.houseStructure}" /></td>

					<!-- 使用面积  -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.areaUse" bundle="${lang}" /></td>
					<td width="150"><input name="areaUse"
						value="${assessHousePerson.areaUse}" loxiaType="number"
						decimal="2" trim="true" /></td>
				</tr>
				<tr>
					<!-- 建筑面积-->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.areaBuilding" bundle="${lang}" /></td>
					<td width="150"><input name="areaBuilding"
						value="${assessHousePerson.areaBuilding}" loxiaType="number"
						decimal="2" trim="true" /></td>

					<!-- 公摊面积 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.areaShare" bundle="${lang}" /></td>
					<td width="150"><input name="areaShare"
						value="${assessHousePerson.areaShare}" loxiaType="number"
						decimal="2" trim="true" /></td>

					<!-- 总楼层 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.floorTotal" bundle="${lang}" /></td>
					<td width="150"><input name="floorTotal"
						value="${assessHousePerson.floorTotal}" loxiaType="number"
						trim="true" /></td>
				</tr>
				<tr>
					<!-- 所在楼层  -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.floorLoacl" bundle="${lang}" /></td>
					<td width="150"><input name="floorLoacl"
						value="${assessHousePerson.floorLoacl}" loxiaType="number"
						trim="true" /></td>

					</td>
					<!-- 设计/规划用途 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.housePlan" bundle="${lang}" /></td>
					<td width="150"><input name="housePlan"
						value="${assessHousePerson.housePlan}" loxiaType="input"
						trim="true" /></td>

					<!-- 取得方式  -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.houseGetway" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1075"
							name="houseGetway" isChoose="false"
							selected="${assessHousePerson.houseGetway}" /></td>
				</tr>
				<tr>
					<!-- 房产类型  -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.houseType" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1076"
							name="houseType" isChoose="false"
							selected="${assessHousePerson.houseType}" /></td>

					</td>
					<!-- 房产所有权人 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.houseOwner" bundle="${lang}" /></td>
					<td width="150"><input name="houseOwner"
						value="${assessHousePerson.houseOwner}" loxiaType="input"
						trim="true" /></td>

					<!-- 抵押权利人  -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.collateralRighthold" bundle="${lang}" /></td>
					<td width="150"><input name="collateralRighthold"
						value="${assessHousePerson.collateralRighthold}" loxiaType="input"
						trim="true" /></td>
				</tr>
				<tr>
					<!-- 前顺位抵押金额  -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.primarycolAmount" bundle="${lang}" /></td>
					<td width="150"><input name="primarycolAmount"
						value="${assessHousePerson.primarycolAmount}" loxiaType="number"
						decimal="2" trim="true" /></td>

					</td>
					<!-- 前顺位抵押权 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.primarycolRight" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1077"
							name="primarycolRight" isChoose="false"
							selected="${assessHousePerson.primarycolRight}" /></td>

					<!-- 前贷余额 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.primarycolBalance" bundle="${lang}" /></td>
					<td width="150"><input name="primarycolBalance"
						value="${assessHousePerson.primarycolBalance}" loxiaType="number"
						decimal="2" trim="true" /></td>
				</tr>
				<tr>
					<!-- 房产现状 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.houseStatus" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1078"
							name="houseStatus" isChoose="false"
							selected="${assessHousePerson.houseStatus}" /></td>

					</td>
					<!-- 房产现状说明 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.houseStatusdesc" bundle="${lang}" /></td>
					<td width="150"><input name="houseStatusdesc"
						value="${assessHousePerson.houseStatusdesc}" loxiaType="input"
						trim="true" /></td>
				</tr>
				<tr>
					<!-- 家有老幼拜访情况 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.youngOld" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1080"
							name="youngOld" isChoose="false"
							selected="${assessHousePerson.youngOld}" /></td>

					</td>
					<!-- 家访租约情况 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.houseLease" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1080"
							name="houseLease" isChoose="false"
							selected="${assessHousePerson.houseLease}" /></td>

					<!-- 是否有产权纠纷 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.ifPropertydisputes" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1080"
							name="ifPropertydisputes" isChoose="false"
							selected="${assessHousePerson.ifPropertydisputes}" /></td>
				</tr>
				<tr>
					<!-- 资产状态 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.collateralStatus" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1081"
							name="collateralStatus" isChoose="false"
							selected="${assessHousePerson.collateralStatus}" /></td>

					</td>
					<!-- 抵押/过户时间 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.collateralTime" bundle="${lang}" /></td>
					<td width="150"><input name="collateralTime"
						value="${assessHousePerson.collateralTime}" loxiaType="date" /></td>

					<!-- 备注 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.remark" bundle="${lang}" /></td>
					<td width="150"><input name="remark"
						value="${assessHousePerson.remark}" loxiaType="input" trim="true" />
					</td>
				</tr>
				<tr>
					<!-- 评估人员 -->
					<td class="label">评估人员</td>
					<td width="150"><input name="appraiserName"
						value="${assessHousePerson.appraiserName}" loxiaType="input"
						trim="true" /></td>

					<!-- 评估时间 -->
					<td class="label">评估时间</td>
					<td width="150"><input name="assessTime"
						value="${assessHousePerson.assessTime}" loxiaType="date" /></td>
				</tr>
				<tr>
					<!-- 评估单价 -->
					<td class="label">评估单价</td>
					<td width="150"><input name="assessUnitprice"
						value="${assessHousePerson.assessUnitprice}" loxiaType="number"
						decimal="2" trim="true" /></td>

					<!-- 评估总价 -->
					<td class="label">评估总价</td>
					<td width="150"><input name="assessTotalprice"
						value="${assessHousePerson.assessTotalprice}" loxiaType="number"
						decimal="2" trim="true" /></td>
				</tr>
				<tr>
					<!-- 信息来源 -->
					<td class="label">信息来源</td>
					<td width="150"><input name="infoSource"
						value="${assessHousePerson.infoSource}" loxiaType="input"
						trim="true" /></td>
				</tr>
			</table>

			<div class="buttonlist buttonDivWidth">
				<button id="temp" type="submit" loxiaType="button" class="confirm">
					<fmt:message key="label.assessHouse.edit.temp" bundle="${lang}" />
				</button>

				<button id="save" type="submit" loxiaType="button" class="confirm">
					<fmt:message key="label.assessHouse.edit.save" bundle="${lang}" />
				</button>
			</div>
		</form>

	</div>
</body>
</html>
