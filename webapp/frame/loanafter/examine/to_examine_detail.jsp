<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 项目回访基本信息查询页面  key表示国际化  配置在messages_zh_CN.properties文件中-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.research.detail.title"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/examine/to_examine_detail.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div class="divBgColor">贷后检查基本信息</div>
	<div class="content_middle">
		<table class="textalignCenter tabcustomPeo" cellpadding="0" cellspacing="0">
			<tr>
				<td  class="label BgColor">合同编号：</td>
				<td class="content">${clientProjectDetailsVo.contractId}</td>
				<td  class="label BgColor">项目编号：</td>
				<td class="content tabBorderRight">${clientProjectDetailsVo.projectCode }</td>
			</tr>
			<tr>
				<td  class="label BgColor">产品名称：</td>
				<td class="content">${clientProjectDetailsVo.prodName }</td>
				<td  class="label BgColor">项目状态：</td>
				<td class="content tabBorderRight" id="proStatus">${clientProjectDetailsVo.projectStautsStr }</td>
			</tr>
			<tr>
				<td  class="label BgColor">银行账号：</td>
				<td class="content">${clientProjectDetailsVo.bankCard }</td>
				<td  class="label BgColor">客户名称：</td>
				<td class="content tabBorderRight">${clientProjectDetailsVo.clientName }</td>
			</tr>
			<tr>
				<td  class="label BgColor">证件类型：</td>
				<td class="content">${clientProjectDetailsVo.cardTypeStr }</td>
				<td  class="label BgColor">证件号码：</td>
				<td class="content tabBorderRight">${clientProjectDetailsVo.cardNo }</td>
			</tr>
			<tr>
				<td  class="label BgColor">贷款金额：</td>
				<td class="content">${clientProjectDetailsVo.lendMoney }</td>
				<td  class="label BgColor">贷款期数：</td>
				<td class="content tabBorderRight">${clientProjectDetailsVo.periods }</td>
			</tr>
			<tr>
				<td  class="label BgColor">已出期数：</td>
				<td class="content">${clientProjectDetailsVo.alreadyPeriods }</td>
				<td  class="label BgColor">诉讼日期：</td>
				<td class="content tabBorderRight"></td>
			</tr>
			<tr>
				<td  class="label BgColor">放款日期：</td>
				<td class="content" id="proStatus">${clientProjectDetailsVo.lendingTimeStr }</td>
				<td  class="label BgColor">首期还款日：</td>
				<td class="content tabBorderRight">${clientProjectDetailsVo.firstRepayDate }</td>
			</tr>
			<tr>
				<td  class="label BgColor">结清日期：</td>
				<td class="content tabBorderRight">${clientProjectDetailsVo.endTimeStr }</td>
			</tr>
			<tr>
				<input type="hidden" id="projectId" name="projectId"
					value="${projectId }" />
				<input type="hidden" name="examineId" id="examineId"
					value="${examine.examineId }" />
				<td  class="label BgColor">
					<!-- 回访后贷款状态 -->贷后检查贷款状态：
				</td>
				<td class="content"><bizoptionname:showname biztypekey="1038"
						name="loanStatus" value="${examine.loanStatus }" /></td>
				<td  class="label BgColor">
					<!-- 调查方式 --> 检查方式：
				</td>
				<td class="content tabBorderRight"><bizoptionname:showname biztypekey="1147"
						name="examineMethod" value="${examine.examineMethod }" /></td>
			</tr>
			<tr>
				<!-- 回访人 -->
				<td  class="label BgColor">贷后检查人：</td>
				<td class="content"><showusername:showusername value="${examine.examineAgent }" /></td>
				<td  class="label BgColor">
					<!-- 回访时间 --> 贷后检查时间：
				</td>
				<td class="content tabBorderRight">${examine.examineDoneDate }</td>
			</tr>
			<tr>
				<td  class="label BgColor">其他检查人：</td>
				<td class="content tabBorderRight" colspan="3"><showusername:showusername value="${examine.otherAgent }" /></td>
			</tr>
			<c:if test="${!empty fileList }">
				<c:forEach items="${fileList }" var="item" varStatus="loop">
					<tr>
						<td  class="label BgColor">已上传文件${loop.index+1 }：</td>
						<td class="content tabBorderRight" colspan="3">${item.fileName }.${item.fileFormat }<label
							class="fileList"
							onclick="download(${item.fileId})">下载</label></td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
		<br/>
	</div>
</body>
</html>