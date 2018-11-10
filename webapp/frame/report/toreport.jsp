<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang"/>
<title>报表</title>
<script type="text/javascript">
	$j.extend(loxia.regional['zh-CN'], {
	});

	function i18(msg, args) {
		return loxia.getLocaleMsg(msg, args);
	}

	var prefixUrl = '${prefixUrl}';
	var suffixUrl = '${suffixUrl}';
	var reportUrl = '${param.report}';
	
	$j(document).ready(function() {
		var url="";
		//报表参数为空且账套不为空
		if($j("#reportParam").val()=="[]" && $j("input[type=checkbox][name='accountId'][checked]").length>0){
			var accountIds = "";
			$j("input[name='accountId']").each(function() {
				if ($j(this).attr("checked")) {
					accountIds += accountIds == "" ? $j(this).val(): ","+ $j(this).val();
				}
			});
			url = prefixUrl + reportUrl + suffixUrl + "&compcode=" + $j("#reportCompCode").val() + "&accountIds="
				+ accountIds + "&random=" + parseInt(Math.random() * 100000);
			$j("#btnDiv").hide();
			$j("#reportDiv").show().attr("src", url);
		}
		
		//点击查询报表按钮
		$j("#reportSearch").click(function() {
			$j('#yearQueryMsg').hide();
			$j('#monthQueryMsg').hide();
			$j('#dayQueryMsg').hide();
			
			url="";
			url = '${prefixUrl}' + $j("#reportUrl").val() + '${suffixUrl}';
			var searchAccountIds = "";
			$j("input[name='accountId']").each(function() {
				if ($j(this).attr("checked")) {
					searchAccountIds += searchAccountIds == "" ? $j(this).val(): ","+ $j(this).val();
				}
			});
			if (searchAccountIds == "") {
				jumbo.showMsg('请选择账套！');
				return;
			}
			
			url = url+ "&compcode="+ $j("#reportCompCode").val()+ "&accountIds="+ searchAccountIds;
			
			var dateVal =$j("#dateQuery").val();
			var monthVal =$j("#monthQuery").val();
			var yearVal =$j("#yearQuery").val();
			var deptVal =$j("#dept").val();
			var agencyVal=$j("#agencyId").val();
			if(yearVal!=undefined){
				if(yearVal!=''){
					//兼容以前报表日期格式
					url = url + "&yearQuery="+yearVal+"-01-01";
				}else{
					jumbo.showMsg('请选择年报年份');
					return;
				}
			}
			if(monthVal!=undefined){
				if(monthVal!=''){
					//兼容以前报表日期格式
					url = url + "&monthQuery="+monthVal+"-01";
				}else{
					jumbo.showMsg('请选择月报月份');;
					return;
				}
			}
			if(dateVal!=undefined){
				if(dateVal!=''){
					url = url + "&dateQuery="+dateVal;
				}else{
					jumbo.showMsg('请选择日报日期');
					return;
				}
			}
			if(deptVal!=undefined && deptVal!=''){
				url = url + "&deptId="+deptVal;
			}
			if(agencyVal!=undefined &&agencyVal!=''){
				url=url+"&agencyId="+agencyVal;
			}
			url = url + "&random="+ parseInt(Math.random() * 100000);
			//alert(url);
			$j("#reportDiv").show().attr("src", url);
		});
		
		$j("#reportReset").click(function() {
			$j("#dateQuery").val('');
			$j("#monthQuery").val('');
			$j("#yearQuery").val('');
			$j("[name='accountId']:checkbox:visible").attr("checked", false); 
		});
	}); 
</script>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div class="ui-tabs-panel ui-widget-content ui-corner-bottom" id="div-1">
		<div id="queryDialog">
			<div id="serchdiv">
				<div style="display: none;">
					<input id="prefixUrl" value="${prefixUrl}" />
					<input id="suffixUrl" value="${suffixUrl}" />
					<input id="reportParam" value="${reportParam}" />
					<input id="reportCompCode" value="${compCode}" />
					<textarea id="reportUrl" rows="3" cols="30">${param.report}</textarea>
				</div>
				<c:if test="${accountType=='in' || accountType==null || accountType ==''}">
					<c:forEach items="${compAccountInfoList }" var="compAccountInfo">
						<c:if test="${compAccountInfo.isDefault == '100111' }">
							<input name="accountId" type="checkbox" checked="checked" style="display: none;"
							value="${compAccountInfo.id }"/>
						</c:if>
					</c:forEach>
				</c:if>
				<c:if test="${accountType=='out' || reportParam != '[]'}">
					<!-- <div class="divBgColor">
						<fmt:message key="label.search.param" bundle="${lang}"/>
					</div>  -->
				</c:if>
				<form id="demoForm" method="post">
					<table>
						<c:if test="${accountType=='out'}">
					 		<tr>
								<td class="label">账套选择:</td>
								<td width="218px">
									<c:forEach items="${compAccountInfoList}" var="compAccountInfo">
										<c:if
											test="${compAccountInfo.id == accountId || compAccountInfo.isDefault == '100111'}">
											<input name="accountId" type="checkbox" checked="checked" 
											value="${compAccountInfo.id}" />${compAccountInfo.accountName}
										</c:if>
									</c:forEach>
								</td>
							</tr>
						</c:if>
						<c:if test="${reportParam != '[]'}">
							<c:forEach var="item" items="${reportParam}" varStatus="status">
							 	<c:if test="${status.count%2!=0}">
								<tr>
							 	</c:if>
								<c:choose>
									<c:when test="${item=='dateQuery'}">
											<td class="label">日报日期:</td>
											<td width="160px">
												<input id="dateQuery" type="text" loxiaType="input" onclick='WdatePicker({"dateFmt":"yyyy-MM-dd"})' 
													name="dateQuery" value="" readonly="readonly" width="160px"/>
											</td>
									 </c:when>
									 <c:when test="${item=='monthQuery'}">
									 	<tr>
											<td class="label">月报月份:</td>
											<td width="160px">
												<input id="monthQuery" type="text" loxiaType="input" onclick='WdatePicker({"dateFmt":"yyyy-MM"})' 
													name="monthQuery" value="" readonly="readonly" width="160px"/>
											</td>
									 </c:when>
									 <c:when test="${item=='yearQuery'}">
											<td class="label">年报年份:</td>
											<td width="160px">
												<input id="yearQuery" type="text" loxiaType="input" onclick='WdatePicker({"dateFmt":"yyyy"})' 
													name="yearQuery" value="" readonly="readonly" width="160px"/>
											</td>
									 </c:when>
									 <c:when test="${item=='deptId'}">
									  		<td class="label">部门名称:</td>
									  		<td width="218px">
									   			<select id="dept" name="dept" style="width: 190px;">
									   				<c:forEach var="org" items="${orgList}">
														<option value="${org.orgCode}">${org.orgName}</option>
													</c:forEach>
									   			</select>
									   		</td>
									 </c:when> 
									 
									 <c:when test="${item=='agencyId'}">
									  		<td class="label">中介公司:</td>
									  		<td width="218px">
									   			<select id="agencyId" name="agencyId" style="width: 190px;">
									   				<c:forEach var="agencyInfo" items="${agencyInfoList}">
														<option value="${agencyInfo.agencyId}">${agencyInfo.agencyName}</option>
													</c:forEach>
									   			</select>
									   		</td>
									 </c:when> 
									 
								</c:choose>
								<c:if test="${status.count%2==0 || fn:length(reportParam) < 2}">
								</tr>
							 	</c:if>
							</c:forEach>
					 	</c:if> 
					</table>
					<div id="btnDiv" class="buttonlist buttonDivWidth">
						<button type="button" loxiaType="button" class="confirm" id="reportSearch" 
							title="tip：<fmt:message key="button.query" bundle="${lang}"/>">查询</button>
						<button type="button" loxiaType="button" class="confirm" id="reportReset" 
							title="tip：<fmt:message key="button.reset" bundle="${lang}"/>">重置</button>
					</div>
				</form>
			</div>
		</div>
		<div>
			<iframe id="reportDiv" style="width: 100%; height: 560px; display: none;"></iframe>
		</div>
	</div>
</body>
</html>