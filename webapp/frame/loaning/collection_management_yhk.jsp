<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<%@include file="/common/meta.jsp"%>
		<title>催收列表 逾期已还</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/newsZr/style_zr.css'/>"/> 
		<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/scripts/frame/loaning/collection_management_yhk.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
	</head>
	<body contextpath="<%=request.getContextPath()%>" style="background-color:#fff;">
		<div>
			<form id="collectionManagement" method="post">

                <table>
                    <tr>
                        <td class="label">客户姓名：</td>
                        <td width="150"><input  name="clientName"
                                               loxiaType="input" trim="true" /></td>
                        <td class="label">手机号码：</td>
                        <td width="150"><input  name="mobilePhone"
                                               loxiaType="input" trim="true" /></td>
                        <td class="titxt">实际还款日期:</td>
						<td class="timeInp">
							<input id="" class="inpWidth" name="actualRepayDateStart"
									loxiaType="date" trim="true" style="width:90px;"/> —<input id="" class="inpWidth" name="actualRepayDateEnd"
                                                                            loxiaType="date" trim="true" style="width:90px;"/>
						</td>
                        <td class="label">产品大类：</td>
                        <td width="150">
                            <select name="productMaxCode" loxiaType="select">
                                <option value="">请选择</option>
                                <c:forEach items ="${productMaxInfoList}" var="mapOne1">
                                    <option value=${ mapOne1.productCode} > ${mapOne1.productName}</option>
                                </c:forEach>
                            </select>
                        </td>
                        <td class="label">催收人员：</td>
                        <td width="150">
                                <select class="text_sketch inpWidth" id="u185_input" name="collectionId">
                                    <option value="" selected="">请选择</option>
                                    <c:forEach items="${ userList}" var="vo">
                                        <option value="${ vo.userId}" >${ vo.userName}</option>
                                    </c:forEach>
                            </select>
                        </td>
                        <td class="label">来源应用：</td>
                        <td width="150">
                            <select name="applyCode" loxiaType="select">
                                <option value="">请选择</option>
                                <c:forEach items ="${amList}" var="mapOne">
                                    <option value=${ mapOne.applyCode} > ${mapOne.applyName}</option>
                                </c:forEach>
                            </select>
                        </td>

                    </tr>
                    <tr>
                        <td><div class="seachDv">
                            <a id="reload">查询</a>
                        </div></td>
                        <td><div class="seachDv">
                            <a id="resets">重置</a>
                        </div></td>
                    </tr>
                </table>
                <%--<div class="buttonlist buttonDivWidth">--%>
                    <%--<button type="button" loxiaType="button" class="confirm"--%>
                            <%--title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"--%>
                            <%--id="reload">--%>
                        <%--<fmt:message key="button.query" bundle="${lang}" />--%>
                    <%--</button>--%>
                    <%--<button type="reset" loxiaType="button" class="confirm"--%>
                            <%--title="tip" id="reset"/>--%>
                    <%--<fmt:message key="button.reset" bundle="${lang}" />--%>
                    <%--</button>--%>
                <%--</div>--%>
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
