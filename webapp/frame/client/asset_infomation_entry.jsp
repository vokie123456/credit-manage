<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>负债信息编辑</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/asset_infomation_entry.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="assetInfoForm" method="post">
		<div class="content_middle_more">
			<table class="col3">
				<tr>
					<td class="label">资产类型：</td>
					<td class="content"><bizoption:bizoption biztypekey="1097"
							id="assetType" name="assetBasic.assetType" isChoose="true"
							mandatory="true" checkmaster="selectAssetType" selected="${assetBasic.assetType }"/> <label
						class="del_mandatory">&nbsp;*</label></td>
					<td class="label"></td>
					<td class="content"></td>
					<!-- 	
					<td class="label">是否抵押：</td>
					<td class="content"><bizoption:bizoption biztypekey="1001"
							id="ifCollateral" name="assetBasic.ifCollateral" isChoose="true"
							mandatory="true" selected="${assetBasic.ifCollateral }"/> <label class="del_mandatory">&nbsp;*</label>
					</td>
					 -->
				</tr>
			</table>
		</div>
		<div class="content_middle_more" id="loadOther"></div>
		<input type="hidden" id="clientId" value="${clientId }"/>
		<input type="hidden" id="assetId" value="${assetBasic.assetId }"/>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="submitAsset">保存</button>
		</div>
	</form>
</body>
</html>
