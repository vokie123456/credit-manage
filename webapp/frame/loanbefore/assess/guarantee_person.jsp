<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
</head>

<div class="divBgColor">
	<table class="col3">
		<tr>
			<td width="150"><fmt:message
					key="label.assess.guarantee.person" bundle="${lang}" /></td>
			<td width="80%" align="right"><input type="button"
				onclick="deletePerson(${count})"
				style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;width:23px;"
				title="删除" /></td>
		</tr>
	</table>
</div>

<table class="col3">
	<tr>
		<!-- 姓名 -->
		<td class="label"><fmt:message
				key="label.assess.guarantee.person_name" bundle="${lang}" /></td>
		<td class="content"><input id=""
			name="personList[${count}].personName" loxiaType="input" trim="true" /></td>
		<!-- 证件类型-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.cardType" bundle="${lang}" /></td>
		<td class="content"><bizoption:bizoption biztypekey="1007"
				name="personList[${count}].cardType" isChoose="false" /></td>
	</tr>
	<tr>
		<!-- 证件号码 -->
		<td class="label"><fmt:message
				key="label.assess.guarantee.cardNo" bundle="${lang}" /></td>
		<td class="content"><input name="personList[${count}].cardNo"   checkmaster="validateIdentify"
			loxiaType="number" trim="true" /></td>
		<!-- 手机-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.mobilePhone" bundle="${lang}" /></td>
		<td class="content"><input  checkmaster="validatemobile"
			name="personList[${count}].mobilePhone" value="" loxiaType="number"
			trim="true" /></td>
	</tr>
	<tr>
		<!-- 工作单位-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.workUnit" bundle="${lang}" /></td>
		<td class="content"><input name="personList[${count}].workUint"
			value="" loxiaType="input" trim="true" /></td>
		<!-- 职位-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.position" bundle="${lang}" /></td>
		<td class="content"><input name="personList[${count}].position"
			value="" loxiaType="input" trim="true" /></td>
	</tr>
	<tr>
		<!-- 工资收入-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.income" bundle="${lang}" /></td>
		<td class="content"><input name="personList[${count}].salary"
			value="" loxiaType="number" trim="true" /></td>
		<!-- 关系 -->
		<td class="label"><fmt:message
				key="label.assess.guarantee.relation" bundle="${lang}" /></td>
		<td class="content"><bizselect:bizselect biztypekey="1020"
				startSort="12" endSort="16" name="personList[${count}].relation"
				isChoose="true" />
	</tr>
	<tr>
		<!-- 公司地址 -->
		<td class="label"><fmt:message
				key="label.assess.guarantee.comAddress" bundle="${lang}" /></td>
		<td colspan="3">
			<table class="col3">
				<tr>
					<td class="content"><linkage:select type="province"
							name="personList[${count}].address3.province" pid="pa${count}"
							cid="ca${count}" did="da${count}" /></td>
					<td class="content"><linkage:select type="city"
							name="personList[${count}].address3.city" cid="ca${count}"
							did="da${count}" /></td>
					<td class="content"><linkage:select type="district"
							name="personList[${count}].address3.district" did="da${count}" /></td>
					<td class="content"><input id="town3"
						name="personList[${count}].address3.town" loxiaType="input"
						trim="true" /></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<!-- 户籍地址-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.adress1" bundle="${lang}" /></td>
		<td colspan="3">
			<table class="col3">
				<tr>
					<td class="content"><linkage:select type="province"
							name="personList[${count}].address1.province" pid="pb${count}"
							cid="cb${count}" did="db${count}" /></td>
					<td class="content"><linkage:select type="city"
							name="personList[${count}].address1.city" cid="cb${count}"
							did="db${count}" /></td>
					<td class="content"><linkage:select type="district"
							name="personList[${count}].address1.district" did="db${count}" /></td>
					<td class="content"><input id="town1"
						name="personList[${count}].address1.town" loxiaType="input"
						trim="true" /></td>
				</tr>
			</table>
		</td>
	</tr>
	<!-- 居住地址-->
	<tr>
		<td class="label"><fmt:message
				key="label.assess.guarantee.adress2" bundle="${lang}" /></td>
		<td colspan="3">
			<table class="col3">
				<tr>
					<td class="content"><linkage:select type="province"
							name="personList[${count}].address2.province" pid="pc${count}"
							cid="cc${count}" did="dc${count}" /></td>
					<td class="content"><linkage:select type="city"
							name="personList[${count}].address2.city" cid="cc${count}"
							did="dc${count}" /></td>
					<td class="content"><linkage:select type="district"
							name="personList[${count}].address2.district" did="dc${count}" /></td>
					<td class="content"><input id="town2"
						name="personList[${count}].address2.town" loxiaType="input"
						trim="true" /></td>
				</tr>
			</table>
		</td>
	</tr>
	<!-- 电子邮件 -->
	<tr>
		<td class="label"><fmt:message key="label.assess.guarantee.email"
				bundle="${lang}" /></td>
		<td class="content"><input id="" loxiaType="input"
			name="personList[${count}].email" trim="true"
			checkmaster="validateEmail" /></td>
		<!-- 即时通讯方式 -->
		<td class="label"><fmt:message key="label.assess.guarantee.im"
				bundle="${lang}" /></td>
		<td class="content"><input id="" loxiaType="input"
			name="personList[${count}].communication" trim="true" /></td>
	</tr>
</table>