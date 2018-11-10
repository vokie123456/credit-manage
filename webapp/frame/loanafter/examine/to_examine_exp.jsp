<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<%@include file="/common/editor.jsp"%>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/examine/to_examine_exp.js'/>"></script>
			<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/prev_opinion.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div class="divBgColor">贷后检查基本信息</div>
	<div class="content_middle">
		<form id="submitForm" method="post" enctype="multipart/form-data"  target="temp" >
			<table class="textalignCenter tabcustomPeoNoborder" cellpadding="0" cellspacing="0">
				<tr>
					<td class="label">合同编号：</td>
					<td class="content">${clientProjectDetailsVo.contractId}</td>
					<td class="label">项目编号：</td>
					<td class="content">${clientProjectDetailsVo.projectCode }</td>
				</tr>
				<tr>
					<td class="label">产品名称：</td>
					<td class="content">${clientProjectDetailsVo.prodName }</td>
					<td class="label">项目状态：</td>
					<td class="content" id="proStatus">${clientProjectDetailsVo.projectStautsStr }</td>
				</tr>
				<tr>
					<td class="label">银行账号：</td>
					<td class="content">${clientProjectDetailsVo.bankCard }</td>
					<td class="label">客户名称：</td>
					<td class="content">${clientProjectDetailsVo.clientName }</td>
				</tr>
				<tr>
					<td class="label">证件类型：</td>
					<td class="content">${clientProjectDetailsVo.cardTypeStr }</td>
					<td class="label">证件号码：</td>
					<td class="content">${clientProjectDetailsVo.cardNo }</td>
				</tr>
				<tr>
					<td class="label">贷款金额：</td>
					<td class="content">${clientProjectDetailsVo.lendMoney }</td>
					<td class="label">贷款期数：</td>
					<td class="content">${clientProjectDetailsVo.periods }</td>
				</tr>
				<tr>
					<td class="label">已出期数：</td>
					<td class="content">${clientProjectDetailsVo.alreadyPeriods }</td>
					<td class="label">诉讼日期：</td>
					<td class="content"></td>
				</tr>
				<tr>
					<td class="label">放款日期：</td>
					<td class="content" id="proStatus">${clientProjectDetailsVo.lendingTimeStr }</td>
					<td class="label">首期还款日：</td>
					<td class="content">${clientProjectDetailsVo.firstRepayDate }</td>
				</tr>
				<tr>
					<td class="label">结清日期：</td>
					<td class="content">${clientProjectDetailsVo.endTimeStr }</td>
				</tr>
				<tr>
					<input type="hidden" id="exam_projectId"
						value="${projectId }" />
					<input type="hidden" id="exam_taskId"
						value="${taskId }" />
					
					<!--  
					<input type="hidden" name="examineId" id="examineId"
						value="${examine.examineId }" />
					-->
					<td class="label">
						<!-- 回访后贷款状态 -->贷后检查贷款状态：
					</td>
					<td class="content"><bizoption:bizoption id="loanStatus"
							biztypekey="1038" name="loanStatus"
							selected="${examine.loanStatus }" isChoose="true"
							mandatory="true" /> <label class="del_mandatory">&nbsp;&nbsp;*</label></td>
					<td class="label">
						<!-- 调查方式 --> 检查方式：
					</td>
					<td class="content"><bizoption:bizoption id="examineMethod"
							biztypekey="1147" name="examineMethod" isChoose="true"
							selected="${examine.examineMethod }" mandatory="true" /> <label
						class="del_mandatory">&nbsp;&nbsp;*</label></td>
				</tr>
				<tr>
					<!-- 回访人 -->
					<td class="label">贷后检查人：</td>
					<td class="content"><input type="hidden" id="examineAgent"
						name="examineAgent" value="${userId }" /><showusername:showusername value="${userId }" /></td>
					<td class="label">
						<!-- 回访时间 --> 贷后检查时间：
					</td>
					<td class="content"><input loxiaType="date"
						name="examineDoneDate" trim="true" mandatory="true"
						value="${examine.examineDoneDate }" /> <label
						class="del_mandatory">&nbsp;&nbsp;*</label></td>
				</tr>
				<tr>
					<td class="label">其他检查人：</td>
					<td class="content"><select
						class="ui-loxia-default ui-corner-all ui-loxia-highlight"
						type="select" name="otherAgent" id="otherAgent"
						multiple="multiple" style="background: #FFF; width: 250px;">
							<c:forEach items="${agentList }" var="item">
								<option value="${item.userId }">${item.userName }</option>
							</c:forEach>
					</select></td>
						<td class="label"></td>
				<td class="content"></td>
				</tr>
			</table>
		
			<table class="col3">
				<tr>
					<td class="label">添加文件：</td>
					<td class="content"><input type="file" name="myfiles"
						id="myfiles" /></td>
					<td class="label"></td>
					<td class="content"></td>
				</tr>
				<input type="hidden" value="${nums }" id="fileNum" />
				
				<c:if test="${!empty fileList }">
					<c:forEach items="${fileList }" var="item" varStatus="loop">
						<tr>
							<td class="label">已上传文件${loop.index+1 }：</td>
							<td colspan="3" class="content">${item.fileName }.${item.fileFormat }<label
				style="color: blue; text-decoration: underline;"
								onclick="download(${item.fileId})">下载</label>&nbsp;&nbsp;<label
								style="color: blue; text-decoration: underline;"
								onclick="del(${item.fileId})">删除</label></td>
						</tr>
					</c:forEach>
				</c:if>
			</table>
			<!-- 	上一节点操作意见 -->
	<div id="prevOpinionDiv"></div>
			<div class="divBgColor">备注</div>
		<table class="col3">
			<tr>
				<td class="label"></td>
				<td class="content"></td>
				<td class="label"></td>
				<td class="content"></td>
		</tr>
			<tr>
		<td  colspan="4"  style="padding-left: 10%">
			<textarea class="cleditor" id="remark" name="remark" rows="4" >${ucx:unCleanXSS(examine.remark) }</textarea>
		</td>
			</tr>
		</table>
		</form>
<!-- 		IE8文件上传使用 -->
		<iframe id="temp"  name="temp" class="disNone"></iframe>
	</div>

	<script>
			var v = "${examine.otherAgent }";
			v = ',' + v + ',';
			var s = v.split(',');
			$j('#otherAgent option').each(function() {
				if (v.indexOf(',' + this.value + ',') != -1)
					this.selected = true;
			});
		</script>
	<div class="buttonlist buttonDivWidth">
		<input type="button" class="confirm" id="saveOn" value="暂存"
			loxiaType="button" /> <input type="button" class="confirm"
			id="submitVisit" value="提交" loxiaType="button" />
	</div>
</body>
</html>
