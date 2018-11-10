<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<style>
	.approvalHis .mark-center thead tr td{font-size:15px;font-weight:bold;text-align:center;}
	.approvalHis .mark-center tbody tr td{text-align:center;}
	.approvalHis .elecRecord{border:1px solid #333;width: 80%;margin-top: 15px;}
	.approvalHis .elecRecord ul li{float:left;width: 100px;text-align: center;height: 30px;line-height: 15px;border-bottom:1px solid #333;border-right:1px solid #333;}
	.approvalHis .elecRecord ul li a{color:#333;text-decoration: none;padding:6px 26px;}
	.approvalHis .elecRecord table{width: 95%;}
	.approvalHis .history{background:#dde4ea;}
</style>
<div class="approvalHis">
	<div class="tit-detail-left">
		审批预警
	</div>
	<tbody>
	<table style="border:1px solid #333;width: 100%;" >
		<c:forEach items="${riskWarn }" var="ite">
			<tr align="left">
				<td style="list-style:none;margin:8px;">${ite.page_show}</td>
			</tr>
		</c:forEach>
	</table>
	</tbody>
	<div class="tit-detail-left">
		审批结果
	</div>
	<table class="table-text-left tabcustomPeo mark-center" cellpadding="0" cellspacing="0" >
			<tr>
				<td class="history">审批状态</td>
				<td>${taskName }</td>
				<td class="history">授信额度</td>
				<td>${finalMoney }</td>
				<td class="history">授信产品</td>
				<td>${creditMaxProductName } - ${creditSubProductName }</td>
				<td class="history">授信时间</td>
				<td>${auditDate }</td>
			</tr>
	</table>
	<div class="tit-detail-left">
		审核记录
	</div>
	<div class="sxjl-dv" style="width: 100%;">
		<table class="tabcustomPeo" cellpadding="0" cellspacing="0">
			<thead>
			<tr class="BgColor">
				<td>任务节点</td>
				<td>审核状态</td>
				<td><span>审核人</span></td>
				<td><span>审核时间</span></td>
				<td>拟批/批复产品</td>
				<td>审批金额</td>
				<td>审批意见</td>
				<td>取消/拒绝/补件原因</td>
				<td>授信结束日</td>
			</tr>
			</thead>
			<tbody>
			<c:set var="creditCode" value="${creditCode }"/>
			<c:set var="dd" value="${CreditCode }"/>
			<c:forEach items="${tasks }" var="ite">
				<c:choose>
					<c:when test="${ite.creditCode == creditCode}">

						<c:if test="${ite.creditCode != dd}">
							<p class="sx-tit bgco">
								<span>授信编号：${ite.creditCode}</span>
								<span>授信时间：${ite.createDate}</span>
							</p>
							<c:set var="dd" value="${ite.creditCode}" ></c:set>
						</c:if>
						<tr>
							<td>${ite.task_name }&nbsp;</td>
							<td>${ite.task_oper_name }&nbsp;</td>
							<td>${ite.user_name }</td>
							<td>${ite.audit_date }</td>
							<td>
								<c:if test="${ite.taskOperCode == '100060201'}">
									${ite.productMaxName }
								</c:if>
								<c:if test="${ite.taskOperCode == '100060401'}">
									${ite.productMinName }
								</c:if>
							</td>
							<td>
									<%--初审通过--%>
								<c:if test="${ite.taskOperCode == '100060201'}">
									${ite.first_money }
								</c:if>
									<%--终审通过--%>
								<c:if test="${ite.taskOperCode == '100060401'}">
									${ite.final_money }
								</c:if>
							</td>
							<td>${ite.operReasonRemark }&nbsp;</td>
							<td>
								<c:choose>
									<c:when test="${ite.taskOperCode == '100060203'}">
										${ite.addMaterial }
									</c:when>
									<c:otherwise>
										${ite.oper_reason_name }
									</c:otherwise>
								</c:choose>
							</td>
							<td>${ite.finalTime }</td>
						</tr>
					</c:when>
				</c:choose>

			</c:forEach>
			</tbody>
		</table>
	</div>
	<%--<c:set var="dd" value=""/>--%>
	<%--<c:forEach items="${task }" var="ite">--%>

		<%--<div class="sxjl-dv" style="width: 100%;">--%>
			     <%--<c:choose>--%>
							<%--<c:when test="${ite.taskOperCode == '100060201'}">--%>
								<%--<table class="tabcustomPeo mark-center" cellpadding="0" cellspacing="0">--%>
									<%--<thead>--%>
										<%--<tr class="BgColor">--%>
											<%--<td class="w150">审核结果</td>--%>
											<%--<td class="w150">审核人</td>--%>
											<%--<td class="w150">审核开始时间</td>--%>
											<%--<td class="w150">审核结束时间</td>--%>
											<%--<td class="w150" >审批产品</td>--%>
											<%--<td class="w150">初审金额</td>--%>
											<%--<td>初审意见</td>--%>
										<%--</tr>--%>
									<%--</thead>--%>
									<%--<tbody>--%>
										<%--<tr>--%>
											<%--<td>${ite.task_name }&nbsp;</td>--%>
											<%--<td>${ite.user_name }</td>--%>
											<%--<td>${ite.audit_date }</td>--%>
											<%--<td>${ite.finalTime }&nbsp;</td>--%>
											<%--<td>${creditMaxProductName } - ${creditSubProductName }&nbsp;</td>--%>
											<%--<td>${ite.first_money }&nbsp;</td>--%>
											<%--<td>${ite.operReasonRemark }&nbsp;</td>--%>
										<%--</tr>--%>
									<%--</tbody>--%>
								<%--</table>--%>
							<%--</c:when>--%>
							<%--<c:when test="${ite.taskOperCode == '100060202'}">--%>
								<%--<table class="tabcustomPeo mark-center" cellpadding="0" cellspacing="0">--%>
									<%--<thead>--%>
										<%--<tr class="BgColor">--%>
											<%--<td class="w150">审核结果</td>--%>
											<%--<td class="w150">审核人</td>--%>
											<%--<td class="w150">审核开始时间</td>--%>
											<%--<td class="w150">审核结束时间</td>--%>
											<%--<td class="w150">初审拟批产品产品</td>--%>
											<%--<td>初审意见</td>--%>
											<%--<td>拒绝原因</td>--%>
										<%--</tr>--%>
									<%--</thead>--%>
									<%--<tbody>--%>
										<%--<tr>--%>
											<%--<td>${ite.task_name }&nbsp;</td>--%>
											<%--<td>${ite.user_name }</td>--%>
											<%--<td>${ite.audit_date }</td>--%>
											<%--<td>${ite.finalTime }&nbsp;</td>--%>
											<%--<td>${creditMaxProductName } - ${creditSubProductName }&nbsp;</td>--%>
											<%--<td>${ite.operReasonRemark }&nbsp;</td>--%>
											<%--<td>${ite.oper_reason_name }&nbsp;</td>--%>
										<%--</tr>--%>
									<%--</tbody>--%>
								<%--</table>--%>
							<%--</c:when>--%>
							<%--<c:when test="${ite.taskOperCode == '100060203'}">--%>
								<%--<table class="tabcustomPeo mark-center" cellpadding="0" cellspacing="0">--%>
									<%--<thead>--%>
										<%--<tr class="BgColor">--%>
											<%--<td class="w150">审核结果</td>--%>
											<%--<td class="w150">审核人</td>--%>
											<%--<td class="w150">审核开始时间</td>--%>
											<%--<td class="w150">审核结束时间</td>--%>
											<%--<td>补件理由</td>--%>
											<%--<td>补件备注</td>--%>
										<%--</tr>--%>
									<%--</thead>--%>
									<%--<tbody>--%>
										<%--<tr>--%>
											<%--<td>${ite.task_name }&nbsp;</td>--%>
											<%--<td>${ite.user_name }</td>--%>
											<%--<td>${ite.audit_date }</td>--%>
											<%--<td>${ite.finalTime }&nbsp;</td>--%>
											<%--<td>${ite.addMaterial }&nbsp;</td>--%>
											<%--<td>${ite.operReasonRemark }&nbsp;</td>--%>
										<%--</tr>--%>
									<%--</tbody>--%>
								<%--</table>--%>
							<%--</c:when>--%>
							<%--<c:when test="${ite.taskOperCode == '100060403'}">--%>
								<%--<table class="tabcustomPeo mark-center" cellpadding="0" cellspacing="0">--%>
									<%--<thead>--%>
										<%--<tr class="BgColor">--%>
											<%--<td class="w150">审核结果</td>--%>
											<%--<td class="w150">审核人</td>--%>
											<%--<td class="w150">审核开始时间</td>--%>
											<%--<td class="w150">审核结束时间</td>--%>
											<%--<td>退回原因</td>--%>
										<%--</tr>--%>
									<%--</thead>--%>
									<%--<tbody>--%>
										<%--<tr>--%>
											<%--<td>${ite.task_name }&nbsp;</td>--%>
											<%--<td>${ite.user_name }</td>--%>
											<%--<td>${ite.audit_date }</td>--%>
											<%--<td>${ite.finalTime }&nbsp;</td>--%>
											<%--<td>${ite.operReasonRemark }&nbsp;</td>--%>
										<%--</tr>--%>
									<%--</tbody>--%>
								<%--</table>--%>
							<%--</c:when>--%>
							<%--<c:when test="${ite.taskOperCode == '100060401'}">--%>
								<%--<table class="tabcustomPeo mark-center" cellpadding="0" cellspacing="0">--%>
									<%--<thead>--%>
										<%--<tr class="BgColor">--%>
											<%--<td class="w150">审核结果</td>--%>
											<%--<td class="w150">审核人</td>--%>
											<%--<td class="w150">审核开始时间</td>--%>
											<%--<td class="w150">审核结束时间</td>--%>
											<%--<td class="w150">终审金额</td>--%>
											<%--<td>终审意见</td>--%>
										<%--</tr>--%>
									<%--</thead>--%>
									<%--<tbody>--%>
										<%--<tr>--%>
											<%--<td>${ite.task_name }&nbsp;</td>--%>
											<%--<td>${ite.user_name }</td>--%>
											<%--<td>${ite.audit_date }</td>--%>
											<%--<td>${ite.finalTime }&nbsp;</td>--%>
											<%--<td>${ite.final_money }&nbsp;</td>--%>
											<%--<td>${ite.operReasonRemark }&nbsp;</td>--%>
										<%--</tr>--%>
									<%--</tbody>--%>
								<%--</table>--%>
							<%--</c:when>--%>
							<%--<c:when test="${ite.taskOperCode == '100060402'}">--%>
								<%--<table class="tabcustomPeo mark-center" cellpadding="0" cellspacing="0">--%>
									<%--<thead>--%>
										<%--<tr class="BgColor">--%>
											<%--<td class="w150">审核结果</td>--%>
											<%--<td class="w150">审核人</td>--%>
											<%--<td class="w150">审核开始时间</td>--%>
											<%--<td class="w150">审核结束时间</td>--%>
											<%--<td>拒绝原因</td>--%>
											<%--<td>初审意见</td>--%>
										<%--</tr>--%>
									<%--</thead>--%>
									<%--<tbody>--%>
										<%--<tr>--%>
											<%--<td>${ite.task_name }&nbsp;</td>--%>
											<%--<td>${ite.user_name }</td>--%>
											<%--<td>${ite.audit_date }</td>--%>
											<%--<td>${ite.finalTime }&nbsp;</td>--%>
											<%--<td>${ite.oper_reason_name }&nbsp;</td>--%>
											<%--<td>${ite.operReasonRemark }&nbsp;</td>--%>

										<%--</tr>--%>
									<%--</tbody>--%>
								<%--</table>--%>
							<%--</c:when>--%>
							<%--<c:otherwise>--%>
								<%--<table class="tabcustomPeo mark-center" cellpadding="0" cellspacing="0">--%>
									<%--<thead>--%>
										<%--<tr class="BgColor">--%>
											<%--<td class="w150">审核结果</td>--%>
											<%--<td class="w150">审核人</td>--%>
											<%--<td class="w150">审核开始时间</td>--%>
											<%--<td class="w150">审核结束时间</td>--%>
											<%--<td>拒绝原因</td>--%>
											<%--<td>初审意见</td>--%>
										<%--</tr>--%>
									<%--</thead>--%>
									<%--<tbody>--%>
										<%--<tr>--%>
											<%--<td>${ite.task_name }&nbsp;</td>--%>
											<%--<td>${ite.user_name }</td>--%>
											<%--<td>${ite.audit_date }</td>--%>
											<%--<td>${ite.finalTime }&nbsp;</td>--%>
											<%--<td>${ite.oper_reason_name }&nbsp;</td>--%>
											<%--<td>${ite.operReasonRemark }&nbsp;</td>--%>
										<%--</tr>--%>
									<%--</tbody>--%>
								<%--</table>--%>
							<%--</c:otherwise>--%>
						<%--</c:choose>--%>
		<%--</div>--%>
		<%--</c:forEach>--%>

 	<div class="tit-detail-left">
		电核记录
	</div>
	<div class="elecRecord">
		<ul>
			<li><a href="javascript:;">本人</a></li>
			<li><a href="javascript:;">父母</a></li>
			<li><a href="javascript:;">配偶</a></li>
			<li><a href="javascript:;">亲戚</a></li>
			<li><a href="javascript:;">朋友</a></li>
			<li><a href="javascript:;">同事</a></li>
			<li><a href="javascript:;">其他</a></li>
		</ul>
		<div class="clear"></div>
		<table id="bank_dv" class="table-text-left tabcustomPeo mark-center" cellpadding="0" cellspacing="0">
			<thead style="background:#ccc;">
				<tr>
					<td>姓名</td>
					<td>关系</td>
					<td>号码</td>
					<td>号码来源</td>
					<td>拨打时间</td>
					<td>通话情况</td> 
					<td>身份核查结果</td>
					<td>电核结果</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td colspan="8" style="text-align:left;">备注:</td>
				</tr>
				<tr>
					<td colspan="8">
						
					</td>
				</tr>
			</tbody>
		</table>
	</div> 
</div>

