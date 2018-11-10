<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@ taglib uri="/WEB-INF/Linkage.tld" prefix="linkage" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
</head>
<style>
	.w200 {
		width: 200px;
	}
</style>

<div class="approvalHis">
	<div class="tit-detail-left">
	审批预警
    </div>

	<table style="border:1px solid #333;width: 100%;" >
			<c:forEach items="${riskWarn }" var="ite">
				<tr align="left">
						<td style="list-style:none;margin:8px;">${ite.page_show}</td>
				</tr>
			</c:forEach>

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
				</div>

	<div class="tit-detail-left">
		历史审批情况
	</div>
	
	
	<table id="credit_history" class="tabcustomPeo" cellpadding="0" cellspacing="0">
		<thead>
			<tr>
				<th>案件编号</th>
				<th>任务节点</th>
				<th>申请期限</th>
				<th>状态</th>
				<th>申请金额</th>
				<th>授信金额</th>
				<th>取消/拒绝/补件原因</th>
				<th>申请时间</th>
				<th>审批人员</th>
				<th>审批结束时间</th>
			</tr>
		</thead>
		<tbody>
		<c:set var="creditCode2" value="${creditCode }"/>
		<c:forEach items="${tasks }" var="ite">
			<c:choose>
					<c:when test="${ite.creditCode != creditCode2}">		
			<tr>
				<td>${ite.creditCode}</td>		
				<td>${ite.task_name }&nbsp;</td>
				<td>${ite.finalDate }&nbsp;</td>
				<td>${ite.task_oper_name }&nbsp;</td>
				
				
				<td>${ite.applyMoney }&nbsp;</td>
				<c:choose>
					<c:when test="${ite.taskOperCode == '100060201'}">
						<td>${ite.first_money }&nbsp;</td>
					</c:when>
					<c:when test="${ite.taskOperCode == '100060401'}">
						<td>${ite.final_money }&nbsp;</td>
					</c:when>
					<c:otherwise>
					 <td>0</td>
					</c:otherwise>	
				</c:choose>
				
				
				<c:choose>
					<c:when test="${ite.taskOperCode == '100060203'}">
						<td>${ite.addMaterial }&nbsp;</td>
					</c:when>
					<c:otherwise>
						 <td>${ite.oper_reason_name }&nbsp;</td>
					</c:otherwise>	
				</c:choose>
				
				<td>${ite.createDate }</td>
				<td>${ite.user_name }</td>
				<td>${ite.audit_date }</td>
			</tr>
			</c:when>
				</c:choose>
		</c:forEach>
		
			
		</tbody>
	</table>
	
	
	
	

	<div class="tit-detail-left">
		历史贷款情况
	</div>
	<table id="history_dv" class="tabcustomPeo" cellpadding="0" cellspacing="0">
		<thead>
			<tr>
				<th>案件编号</th>
				<th>合同编号</th>
				<th>合同金额</th>
				<th>期限</th>
				<th>放款日期</th>
				<th>最后还款日</th>
				<th>实际结清日期</th>
				<th>最大逾期天数</th>
				<th>逾期次数</th>
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
				<td></td>
			</tr>
		</tbody>
	</table>
	<div class="tit-detail-left">
		电核记录
	</div>
	<div class="elecRecord">
		<ul>
			<li><a href="">本人</a></li>
			<li><a href="">父母</a></li>
			<li><a href="">配偶</a></li>
			<li><a href="">亲戚</a></li>
			<li><a href="">朋友</a></li>
			<li><a href="">同事</a></li>
			<li><a href="">其他</a></li>
		</ul>
		<table id="bank_dv" class="table-text-left tabcustomPeo" cellpadding="0" cellspacing="0">
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
					<td colspan="8">备注:</td>
				</tr>
				<tr>
					<td colspan="8">
						
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<script type="text/javascript" src="<c:url value='/scripts/html/task_spls.js?v=2.1.4'/>"></script>