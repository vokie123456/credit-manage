<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<%@include file="/common/meta.jsp"%>
		<title>催收列表</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/newsZr/style_zr.css'/>"/> 
		<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/scripts/frame/loaning/collection_management_list.js?v=1.3.1'/>"></script>
		<script type="text/javascript" src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
	</head>
	<body contextpath="<%=request.getContextPath()%>" style="background-color:#fff;">
		<div>
			<form id="collectionManagement" method="post">
				<div class="tab-con-dv" style="margin-bottom:30px;">
					<div class="tabCon" id="tabCon1">
						<table class="dai-table" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td class="titxt">贷款编号:</td>
									<td><input type="text" class="inpWidth" name="loanCode" /></td>
									<td class="titxt">客户姓名:</td>
									<td><input type="text" class="inpWidth" name="clientName" /></td>
									<td class="titxt">手机号码:</td>
									<td><input type="text" class="inpWidth" name="mobilePhone" /></td>
								</tr>
								<tr>
									<td class="titxt">产品大类:</td>
									<td>
										<select name="productMaxCode" loxiaType="select">
											<option value="">请选择</option>
											<c:forEach items ="${productMaxInfoList}" var="mapOne1">
												<option value=${ mapOne1.productCode} > ${mapOne1.productName}</option>
											</c:forEach>
										</select>
									</td>
									<td class="titxt">来源应用:</td>
									<td>
										<%--<select name="" >--%>
											<%--<option value="">请选择</option>--%>
											<%--<option value="">房速贷</option>--%>
											<%--<option value="">51秒借款</option>--%>
										<%--</select>--%>
										<select name="applyCode" loxiaType="select">
											<option value="">请选择</option>
											<c:forEach items ="${amList}" var="mapOne">
												<option value=${ mapOne.applyCode} > ${mapOne.applyName}</option>
											</c:forEach>
										</select>
									</td>
								</tr>
								<%--<tr>--%>
									<%--<td class="titxt">是否失联:</td>--%>
									<%--<td>--%>
										<%--<select name="isBeMissing" class="inpWidth">--%>
											<%--<option value="">请选择</option>--%>
											<%--<option value="0">否</option>--%>
											<%--<option value="1">是</option>--%>
											<%----%>
										<%--</select>--%>
									<%--</td>--%>
									<%--<td class="titxt">是否放弃:</td>--%>
									<%--<td>--%>
										<%--<select name="isGiveUp" class="inpWidth">--%>
											<%--<option value="">请选择</option>--%>
											<%--<option value="0">否</option>--%>
											<%--<option value="1">是</option>--%>
										<%--</select>--%>
									<%--</td>--%>
								<%--</tr>--%>
							</tbody>
						</table>
						<table class="dai-table" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td class="titxt">催收人员:</td>
									<td colspan="3">
									
										<select class="text_sketch inpWidth" id="u185_input" name="collectionId">
								        	 <option value="" selected="">请选择</option> 
											<c:forEach items="${ userList}" var="vo">
		 										 <option value="${ vo.userId}" >${ vo.userName}</option>
        									</c:forEach>
									  	</select>
									</td>
								</tr>
								<tr>
									<td class="titxt">承诺还款日期:</td>
									<td class="timeInp">
										<input id="" class="inpWidth" name="promiseRepayDateStart"
										loxiaType="date" trim="true" />
										——
										<input id="" class="inpWidth" name="promiseRepayDateEnd"
										loxiaType="date" trim="true" />
									</td>
									<td class="titxt">逾期天数:</td>
									<td class="timeInp">
										<input type="text" class="inpWidth" name = "lateDaysStart"/>
										——
										<input type="text" class="inpWidth" name = "lateDaysEnd" />
									</td>
								</tr>
							</tbody>
						</table>
						<div class="seachDv">
							<a id="reload">查询</a>
							<a id="resets">重置</a>
							<a id="allot">分配催收</a>
							<!-- <select class="text_sketch" id="u186_input">
					          <option value="催收角色用户">催收角色用户</option>
					        </select> -->
					        <select class="text_sketch inpWidth" id="u185_input1">
					    <!--    //   <option value="请选择" selected="">请选择</option> -->
								<c:forEach items="${ userList}" var="vo">
									<option value="${ vo.userId}" >${ vo.userName}</option>
								</c:forEach>
						  	</select>
						</div>
					</div>
					<div class="tabCon">
					
					</div>
					<div class="tabCon">
						
					</div>
				</div>
			</form>
			<%@include file="/common/paginationInit.jsp" %>
			<table id="tbl-lendlist"></table>
			<div id="pager"></div>
		</div>
		<script>
			$(function(){
				$('#tabBtn a').click(function(e){
					e.preventDefault();
					_id = $(this).attr('href');
					$(this).addClass('active').siblings().removeClass('active');
					$('.tabCon').hide();
					$(_id).show();
				})
			})
		</script>
		
	</body>
</html>
