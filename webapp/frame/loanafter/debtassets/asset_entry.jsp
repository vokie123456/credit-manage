<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!--  抵债押品管理页面   -->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>负债信息</title>
<script type="text/javascript" src="<c:url value='/scripts/frame/loanafter/debtassets/asset_entry.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">        
	<form id="assetForm" method="post">
		<div class="divBgColor">资产信息</div>
<!-- 		<div class="tabbuttonlist buttonDivWidth"> -->
		<table>
			<tr>
			<td colspan="3">
			<button type="button" loxiaType="button" class="confirm" id="importCollateral">引入押品</button>
			</td>
				<td class="label paddingwidthLeft10">押品类型：</td>
				<td width="130">
					<bizselect:bizselect biztypekey="1152,1153" id="collateralType" name="collateralType"/>
				</td>
				<td width="130">
					<button type="button" loxiaType="button" class="confirm" id="addCollateral">新增押品</button>
				</td>
				<td width="130">
					<button type="button" loxiaType="button" class="confirm" id="reback">返回</button>
				</td>
			</tr>
		</table>
<!-- 		</div> -->
		<div id="editTabAsset"><!-- loxiaType="edittable" -->
			<table class="textalignCenter tabcustom" cellpadding="0" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>资产类型</th>
						<th>他证号</th>
						<th>公正号</th>
						<th>抵债类型</th>
						<th>抵债金额</th>
						<th>录入日期</th>
						<th>录入人员</th>
						<th>审核日期</th>
						<th>审核人员</th>
						<th colspan="3" class="tabBorderRight">操作</th>
					</tr>
				</thead>
				<tbody id="assetBody" style="text-align: center;">
					<c:forEach items="${list}" var="vo" varStatus="loop">
						<tr>
							<td id="vo_assetId" aid="${vo.id}">${vo.collateralTypeStr}</td>
							<td>${vo.itCardNo}</td>
							<td>${vo.notaryNo}</td>
							<td>${vo.handleTypeStr}</td>
							<td>${vo.money}</td>
							<td><fmt:formatDate value="${vo.createTime}" pattern="yyyy-MM-dd"/></td>
							<td>${vo.importName}</td>
							<td><fmt:formatDate value="${vo.approvalDate}" pattern="yyyy-MM-dd"/></td>
							<td>${vo.approveName}</td>
							<td>
								<a onclick="toView(${vo.collateralId },${vo.projectId },${vo.collateralType });return false;" href="#">查看</a>
							</td>
							<td>
								<a onclick="toManagement(${vo.collateralId },${vo.projectId },${vo.collateralType });return false;"
								href="#">处置</a>
							</td>
							<td class="tabBorderRight">
								<a onclick="toDelete(${vo.id});return false;" href="#">删除</a>
							</td>
						</tr>
					</c:forEach>   
				</tbody>
				<tbody>
				</tbody>
			</table>
		</div>
	</form>
	<input id="projectId" value="${projectId}" type="hidden" />
	<input id="collateralDebt" value="1" type="hidden" />
	<!-- <div id="asset-dialog" style="margin-top: 10px; border: 1px solid #eeeeee;"></div> -->
</body>
</html>
