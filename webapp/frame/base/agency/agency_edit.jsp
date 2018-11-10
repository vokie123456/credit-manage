<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/agency/agency_edit.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/otherValidate.js'/>"></script>


<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div class="content_middle">
		<form id="frm-addnew" method="POST">

			<div class="divBgColor">中介信息</div>
			<input type="hidden" value="${ai.agencyId}" name="agencyId" /> <input
				type="hidden" value="${compCode}" name="compCode" />

			<table class="col3">
				<tr>
					<td class="label">中介名称：</td>
					<td class="content"><input name="agencyName"
						value="${ai.agencyName }" loxiaType="input" trim="true"
						mandatory="true"><label class="del_mandatory">&nbsp;&nbsp;*</label></td>

					<td class="label">法人代表：</td>
					<td class="content"><input name="lealPerson"
						value="${ai.lealPerson }" loxiaType="input" trim="true"></td>
				</tr>

				<tr>
					<td class="label">法人电话：</td>
					<td class="content"><input name="lealTel"
						value="${ai.lealTel }" loxiaType="input" trim="true"></td>
					<td class="label">法人手机：</td>
					<td class="content"><input name="lealPhone"
						value="${ai.lealPhone }" loxiaType="input" trim="true"
						checkmaster="validatemobile"></td>
				</tr>

				<tr>
					<td class="label">联系人名称：</td>
					<td class="content"><input name="contactsPeople"
						value="${ai.contactsPeople }" loxiaType="input" trim="true"></td>
					<td class="label">联系人电话：</td>
					<td class="content"><input name="contactsPeopleTel"
						value="${ai.contactsPeopleTel }" loxiaType="input" trim="true"></td>
				</tr>

				<tr>
					<td class="label">联系人手机：</td>
					<td class="content"><input name="contactsPeoplePhone"
						value="${ai.contactsPeoplePhone }" loxiaType="input" trim="true"
						checkmaster="validatemobile"></td>
					<td class="label">是否有效：</td>
					<td class="content"><bizoption:bizoption name="ifValid"
							biztypekey="1001" selected="${ai.ifValid }" /></td>

				</tr>

				<tr>
					<td class="label">公司地址：</td>
					<td colspan="3">
						<table class="col3">
							<tr>
								<td class="content"><linkage:select type="province"
										name="addrProvince" seledProvince="${ai.addrProvince}"
										pid="pi0" cid="ci0" did="di0" /></td>
								<td class="content"><linkage:select type="city"
										name="addrCity" seledCity="${ai.addrCity}" cid="ci0" did="di0" /></td>
								<td class="content"><linkage:select type="district"
										name="addrDistrict" seledDistrict="${ai.addrDistrict}"
										did="di0" /></td>
								<td class="content"><input id="addrDetail"
									name="addrDetail" loxiaType="input" value="${ai.addrDetail}"
									trim="true" /></td>
							</tr>
						</table>
					</td>

				</tr>

				<tr>
					<td class="label">备注：</td>
					<td colspan="3" ><textarea
							name="remark" trim="true" loxiaType="input" rows="4"
							style="width: 100%">${ai.remark }</textarea></td>
				</tr>

			</table>

			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					id="btnSave">保存</button>
				<button type="button" loxiaType="button" class="confirm" id="close">关闭</button>
			</div>
		</form>
	</div>
</body>
</html>