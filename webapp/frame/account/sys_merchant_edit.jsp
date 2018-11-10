<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/account/sys_merchant_edit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div>
		<form id="frm-addconfig" method="POST">
			<input name="id" type="hidden" value="${pc.id}" />
			<input id="compCode" type="hidden" value="${compCode}" />
			<table width="600px">
				<tr>
					<td class="label">持卡人：</td>
					<td>
					<input loxiaType="input" name="cardHolder" id="cardHolder" mandatory="true" value="${pc.cardHolder}"/>
					<label class="del_mandatory" maxlength="50">*</label>
					</td>
					<td class="label">账户类型：</td>
					<td><bizoption:bizoption name="accountType" id="accountType"
						biztypekey="1184" isChoose="true" selected="${pc.accountType}" mandatory="true" />
						<label class="del_mandatory">*</label></td>
				</tr>
				<tr>
					<td class="label">开户行：</td>
					<td>
					<select loxiaType="select" name="bankName" id="bankName" mandatory="true" >
						<option value="">--请选择开户行--</option>
						<c:forEach items="${bankTypes }" var="bt">
							<option value="${bt.bankName }">${bt.bankName }</option>
						</c:forEach>
					</select>
					<label class="del_mandatory">*</label></td>
					<td class="label">开户支行：</td>
					<td><input name="bankSubbranch" id="bankSubbranch" loxiaType="input" trim="true"  maxlength="50"
						value="${pc.bankSubbranch}"></td>
				</tr>
				<tr>
					<td class="label">银行卡号：</td>
					<td><input loxiaType="input" name="bankNo" id="bankNo" value="${pc.bankNo}" mandatory="true" maxlength="20" checkmaster="checkBankNo"/>
					<label class="del_mandatory">*</label></td>
					<td class="label">第三方机构：</td>
					<td>

                        <bizselect:bizselect biztypekey="1186" startSort="1" endSort="3" id="payChannel" name="payChannel" isChoose="true" />
                        <%--<bizoption:bizoption name="payChannel" id="payChannel"--%>
						<%--biztypekey="1186" startIndex="1"   selected="${pc.payChannel}" mandatory="true"/>--%>


						<label class="del_mandatory">*</label></td>
				</tr>
				<tr>
					<td class="label">身份证号：</td>
					<td><input loxiaType="input" name="cardNo" id="cardNo" mandatory="true" maxlength="20" checkmaster="validateCardNo"/>
					<label class="del_mandatory">*</label></td>
					<td class="label">手机号：</td>
					<td><input loxiaType="input" name="mobile" id="mobile" mandatory="true" maxlength="20"/>
						<label class="del_mandatory">*</label></td>
				</tr>
				<tr>
					<td class="label">联行号：</td>
					<td><input loxiaType="input" name="branchNo" id="branchNo" mandatory="true" maxlength="20" />
					</td>
					<td class="label">账户是否有效：</td>
					<td>
						<select loxiaType="select" name="accountIsValid" id="accountIsValid" mandatory="true" >
							<option value="100111">有效账户</option>
							<option value="100112">无效账户</option>
						</select>
						<label class="del_mandatory">*</label>
					</td>
				</tr>
				<tr>
					<td class="label">资金渠道：</td>
					<td>
						<select name="channelCode" id="channelCode" loxiaType="select" mandatory="true">
							<c:forEach items="${sdList}" var="sd">
								<option value="${sd.channelCode }" >${sd.channelName }</option>
							</c:forEach>
						</select>
						<label class="del_mandatory">*</label>
					</td>
				</tr>
			</table>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					id="btnSave">保存</button>

				<button type="button" loxiaType="button" class="confirm"
					id="backoff">返回</button>
			</div>
		</form>
		
	</div>
    <iframe id="temp" name="temp"  class="disNone"></iframe>
</body>
</html>