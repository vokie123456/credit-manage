<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/company_edit.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/otherValidate.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}          
</style>
<linkage:define />   
</head>
<body contextpath="<%=request.getContextPath()%>">

	<div class="ui-tabs ui-widget ui-widget-content ui-corner-all"
		id="div_out">
		<ul
			class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li
				class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active"><a
				href="#div-1">公司基本信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">股东信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">联系人信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">结算账户信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">服务信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">支付渠道信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">公司菜单管理</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">合同模版管理</a></li>
			<!--  
			<li class="ui-state-default ui-corner-top"><a href="#div-2">生成超级管理员</a></li>
		    -->
		</ul>
		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="div-1">
			<form id="frm-addcompany" method="POST"
				target="tempCompany" enctype="multipart/form-data" >

				<input id="compCode" name="compCode" type="hidden"
					value="${company.compCode}" />
				<table>
					<tr>
						<td class="label">公司名称：</td>
						<td><input name="compName" loxiaType="input" trim="true"
							value="${company.compName}" mandatory="true"><label
							class="del_mandatory">&nbsp;&nbsp;*</label></td>
						<td class="label">营业执照：</td>
						<td><input name="organizationCode" loxiaType="input"
							value="${company.organizationCode}" trim="true" mandatory="true"><label
							class="del_mandatory">&nbsp;&nbsp;*</label></td>
						<td class="label">公司缩写：</td>
						<td><input name="compAbbr" loxiaType="input"
							value="${company.compAbbr}" trim="true" mandatory="true"><label
							class="del_mandatory">&nbsp;&nbsp;*</label></td>
					</tr>
					<tr>
						<td class="label">上级主管单位：</td>
						<td><bizoption:bizoption biztypekey="1127" id="upDepartment"
								name="upDepartment" isChoose="false"
								selected="${company.upDepartment}" /></td>
						<td class="label">公司英文名：</td>
						<td><input name="compEnglishName" loxiaType="input"
							mandatory="true" trim="true" value="${company.compEnglishName}"><label
							class="del_mandatory">&nbsp;&nbsp;*</label></td>
					</tr>
					<tr>
						<td class="label">企业性质：</td>
						<td><bizoption:bizoption biztypekey="1127" id="compProperty"
								name="compProperty" isChoose="false"
								selected="${company.compProperty}" /></td>
						<td class="label">经营组织类型：</td>
						<td><bizoption:bizoption biztypekey="1128" id="businessType"
								name="businessType" isChoose="false"
								selected="${company.businessType}" /></td>
					</tr>
					<tr>
						<td class="label">法人代表名称：</td>
						<td><input name="legalName" loxiaType="input" trim="true"
							value="${company.legalName}"></td>
						<td class="label">营业执照到期日：</td>
						<td><input name="orgCodeExpire" loxiaType="date" trim="true"
							value="${company.orgCodeExpire}" /></td>
					</tr>
					<tr>
						<td class="label">法人代表证件类型：</td>
						<td><bizoption:bizoption biztypekey="1007" id="cardType"
								name="legalCardType" isChoose="false"
								selected="${company.legalCardType}"
								checkmaster="validateCardType" /></td>
						<td class="label">法人代表证件号：</td>
						<td><input id="cardNo" name="legalCardNo" loxiaType="input"
							trim="true" value="${company.legalCardNo}"
							checkmaster="validateIdentify" /></td>
					</tr>
					<tr>
						<td class="label">注册资金(万元)：</td>
						<td><input name="registerCapital"
							value="${company.registerCapital}" loxiaType="money"
							min="1.00"></td>
						<td class="label">注册资金币种：</td>
						<td><bizoption:bizoption biztypekey="1103"
								id="registerCurrency" name="registerCurrency" isChoose="false"
								selected="${company.registerCurrency}" /></td>
					</tr>
					<tr>
						<td class="label">实收资本(万元)：</td>
						<td><input name="paidCapital" loxiaType="number"
							value="${company.paidCapital}" loxiaType="money"
							min="1.00"></td>
						<td class="label">实收资本币种：</td>
						<td><bizoption:bizoption biztypekey="1103" id="paidCurrency"
								name="paidCurrency" isChoose="false"
								selected="${company.paidCurrency}" /></td>
					</tr>

					<tr>

						<td class="label">企业成立时间：</td>
						<td><input name="startDate" loxiaType="date" trim="true"
							value="<fmt:formatDate value="${company.startDate}" pattern="yyyy-MM-dd"/>" /></td>
					</tr>
					<tr>

						<td class="label">所在国家：</td>
						<td><input name="addrCountry" loxiaType="input" trim="true"
							value="${company.addrCountry}"></td>
					</tr>

					<tr>
						<td class="label">公司地址：</td>
						<td align="left" class="col_1"><linkage:select
								type="province" name="addrProvince"
								seledProvince="${company.addrProvince}" pid="pi0" cid="ci0"
								did="di0" /></td>
						<td align="left" class="col_2"><linkage:select type="city"
								name="addrCity" seledCity="${company.addrCity}" cid="ci0"
								did="di0" /></td>
						<td align="left" class="col_3"><linkage:select
								type="district" name="addrDistrict"
								seledDistrict="${company.addrDistrict}" did="di0" /></td>
						<td align="left" class="col_4"><input id="addrDetail"
							name="addrDetail" loxiaType="input" value="${company.addrDetail}"
							trim="true" /></td>
					</tr>

					<tr>
						<td class="label">注册地址邮政编码：</td>
						<td><input name="registPostCode" loxiaType="input"
							trim="true" value="${company.registPostCode}"></td>
						<td class="label">通讯地址：</td>
						<td><input name="mailingAddr" loxiaType="input" trim="true"
							value="${company.mailingAddr}"></td>
					</tr>
					<tr>
						<td class="label">通讯地址邮政编码：</td>
						<td><input name="mailingPostCode" loxiaType="input"
							trim="true" value="${company.mailingPostCode}"></td>
						<td class="label">职工人数：</td>
						<td><input name="employees" loxiaType="number" trim="true"
							value="${company.employees}"></td>
					</tr>
					<tr>
						<td class="label">主营业务：</td>
						<td><input name="mainBusiness" loxiaType="input" trim="true"
							value="${company.mainBusiness}"></td>
						<td class="label">兼营业务：</td>
						<td><input name="otherBusiness" loxiaType="input" trim="true"
							value="${company.otherBusiness}"></td>
					</tr>
					<tr>
						<td class="label">是否集团客户：</td>
						<td><bizoption:bizoption biztypekey="1001" id="ifGroupClient"
								name="ifGroupClient" isChoose="false"
								selected="${company.ifGroupClient}" /></td>
						<td class="label">公司网址：</td>
						<td><input name="compWebsite" loxiaType="input" trim="true"
							value="${company.compWebsite}"></td>
					</tr>

					<tr>
						<td class="label">公司简介：</td>
						<td colspan="6"><textarea name="intro" rows="3" cols="90">${company.intro}</textarea>
						</td>
					</tr>
					
					<tr>
						<td class="label">结算银行：</td>
						<td><bizoption:bizoption biztypekey="1104"
								id="fundSettlementBank" name="fundSettlementBank"
								isChoose="false" selected="${company.fundSettlementBank}" /></td>
						<td class="label">放贷总金：</td>
						<td><input name="lendingAllCapital" trim="true"
							value="${company.lendingAllCapital}" loxiaType="number"
							decimal="2" min="1.00">元</td>
					</tr>
					<tr>
						<td class="label">咨询电话：</td>
						<td><input name="telConsult" loxiaType="input" trim="true"
							value="${company.telConsult}"></td>
						<td class="label">日常联系电话：</td>
						<td><input name="telOffice" loxiaType="input" trim="true"
							value="${company.telOffice}"></td>
					</tr>
					<tr>
						<td class="label">短信是否生产：</td>
						<td><c:if test="${company.compCode ne null }">
								<bizoption:bizoption biztypekey="1001" id="smsCreate"
									name="smsCreate" isChoose="false"
									selected="${company.smsCreate}" />
							</c:if> <c:if test="${company.compCode eq null }">
								<bizoption:bizoption biztypekey="1001" id="smsCreate"
									name="smsCreate" isChoose="false"
									selected="100112" />
							</c:if></td>

					</tr>
					<tr>
						<td class="label">公司logo：</td>
						<td>
						   <input name="fileField" type="file" id="compLogo"  onchange="testonblur()"  />
						   <c:if test="${company.compLogo!=null }">
						   <img src="previewImage.do?imgPath=${company.compLogo }">
						   </c:if>
						      <input name="compLogo" type="hidden" id="compLogo"  value="${company.compLogo }"/>
						<%-- <input name="compLogo" loxiaType="input" trim="true"
							value="${company.compLogo }"/>     
							</td> --%>

					</tr>
					<!--     
					<tr>
						<td>私钥文件：</td>
						<td><input name="keyName" loxiaType="input" trim="true"
							value="${company.keyName}" id="keyName" readonly="readonly">
						</td>
						<td><input type="file" name="fileField" onchange="setKeyName()" id="fileField"/></td>
					</tr>
					-->
				</table>
				<div class="buttonlist buttonDivWidth">
					<button type="button" loxiaType="button" class="confirm"
						id="btnSave">提交</button>

					<button type="button" loxiaType="button" class="confirm"
						id="saveOn">暂存</button>   

					<button type="button" loxiaType="button" class="confirm"
						title="tip：<fmt:message key="button.reset" bundle="${lang}"/>"
						id="btnReset">
						<fmt:message key="button.reset" bundle="${lang}" />
					</button>
				</div>
			</form>
		</div>
		<iframe id="tempCompany" name="tempCompany" class="disNone"></iframe>
		<div
			class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
			id="div-2"></div>
	</div>

</body>
</html>