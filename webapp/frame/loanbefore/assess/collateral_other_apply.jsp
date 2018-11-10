<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>

	<table>
				<tr>
					<!-- 车架号 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.winCode" bundle="${lang}" /></td>
					<td class="col_1" align="left"><input name="winCode"
						value="${assessCarPerson.winCode}" loxiaType="input" trim="true" />
					</td>
					<!-- 车牌号码 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.plateNo" bundle="${lang}" /></td>
					<td class="col_2" align="left"><input name="plateNo"
						value="${assessCarPerson.plateNo}" loxiaType="input" trim="true" />
					</td>
				</tr>
				<tr>
					
				</tr>
				
			</table>
		
</div>