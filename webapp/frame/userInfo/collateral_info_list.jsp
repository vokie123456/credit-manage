<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>客户列表</title>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>
<script type="text/javascript">
//列表头的中文显示
$j.extend(loxia.regional['zh-CN'],{
	CODE:"押品号",
	PROJECT_CODE : "最近关联的项目号",
	TYPE : "押品类型",
	ITCARDNO:"他证号",
	NAME : "押品名称",
	PRICE : "押品估价",
	STATUS : "押品状态",
	DATE : "抵押日期",
    OVER_DATE:"解除抵押日期",
    OPER:"操作",
    OPERATOR:"详细",
    RESEARCH_RESULT:"押品信息列表",
    EDIT:"编辑"
});

//详细信息查看
function showresearchdetail(tag){
	
	var rowm = $j(tag).parents("tr").attr("id");
	var data=$j("#tbl-clientlist").jqGrid("getRowData",rowm);
	
	var url =window.parent.$j("body").attr("contextpath")+
	                     "/collateral/detailCollateral.do?" +
	                     "collateralCode="+data['collateralCode']+
	                     "&collateralType="+data['collateralType']+
	                     "&projectId="+data['projectId']
	                     ;  
 	jumbo.openFrame("frm-" + (new Date()).getTime().toString(),"押品详情",url);
	
}
//编辑押品信息
function collateralEdit(tag){
	
	var rowm = $j(tag).parents("tr").attr("id");
	var data=$j("#tbl-clientlist").jqGrid("getRowData",rowm);
	
	var url =window.parent.$j("body").attr("contextpath")+
	"/collateral/collateralAssess.do?" +
	"collateralCode="+data['collateralCode']+
	"&collateralType="+data['collateralType']+
	"&projectId="+data['projectId']+
	"&assessStatus"+data['collateralStatus']
	;  
	jumbo.openFrame("frm-" + (new Date()).getTime().toString(),"押品详情",url);
	
}

	function i18(msg, args) {
		return loxia.getLocaleMsg(msg, args);
	}

	function getPostData(){
		return loxia._ajaxFormToObj("clientForm");
	}

	function editData(tag){
		var rowTagId = $j(tag).parents("tr").attr("id");
		var rowData = $j("#tbl-clientlist").jqGrid("getRowData", rowTagId);
		
		var url =window.parent.$j("body").attr("contextpath")+"/client/clientbasic/edit.json?clientId="+rowData['clientId'];
		url += "&clientType="+rowData['clientType'];
	 	window.location.href=url;
	}

	$j(document).ready(function(){
		
		var jqGridWidth = $j(document).find("body").width()-15;
		var listUrl =  $j("body").attr("contextpath")+"/userInfo/query.json?codeQuerying=002";
		var typelist= loxia.syncXhr(window.parent.$j("body").attr("contextpath")+"/base/formaterOptions.json",{categoryCode:"1097"});
		var statuslist=loxia.syncXhr(window.parent.$j("body").attr("contextpath")+"/base/formaterOptions.json",{categoryCode:"1081"});
		$j("#tbl-clientlist").jqGrid({
			url:listUrl,//根据条件进行查询
			datatype: "json",
		   colNames : [                             i18("CODE"),
											        i18(""),
											        i18("PROJECT_CODE"),
													i18("TYPE"),
													i18("ITCARDNO"),
													i18("NAME"),
													i18("PRICE"),
													i18("STATUS"),
													i18("DATE"),
													i18("OVER_DATE"),
													i18("OPERATOR"),
													i18("EDIT")
												    ],
			colModel: [
			           {name: "collateralCode", align: "center", resizable: true},
			           {name: "projectId", align: "center", resizable: true, hidden:true},
			           {name: "projectCode", align: "center", resizable: true},
			           {name: "collateralType", align: "center", resizable: true,formatter:'select',editoptions:typelist},		         		         
			           {name: "itCardNo", align: "center", resizable: true},		         		         
			           {name: "collateralName", align: "center", resizable: true},		         
			           {name: "collateralPrice", align: "center", resizable: true},		         
			           {name: "collateralStatus", align: "center", resizable: true,formatter:'select',editoptions:statuslist},	
			           {name: "collateralDate", align: "center", resizable: true},	
			           {name: "overDate",align: "center", resizable: true},
			           {name: "operate",align: "center", resizable: true,formatter:"linkFmatter", formatoptions:{onclick:"showresearchdetail", label:i18("OPERATOR") }},	           
			           {name: "edit",align: "center", resizable: true,formatter:"linkFmatter", formatoptions:{onclick:"collateralEdit", label:i18("EDIT") }}],
			caption: i18("RESEARCH_RESULT"),//用户登录结果列表
			rowNum: jumbo.getPageSize(),  
		   	rowList:jumbo.getPageSizeList(),
	   	height:jumbo.getHeight(),
	   	sortname: 'project_code',
		sortorder: "desc",
	    pager: '#pager',
		mtype: 'POST', 
		postData:getPostData(),
		viewrecords: true,
		autowidth : true, // 自动列宽
		gridComplete:function(){doResize("tbl-clientlist",jqGridWidth)},
		jsonReader: { repeatitems : false, id: "0" }
		});
		$j("#collateralInfo").click(function(){
			$j("#tbl-clientlist").jqGrid('setGridParam',{url:listUrl, page:1, postData:getPostData()}).trigger("reloadGrid");
		});	
		
		$j("#clientInfo").click(function (){
			window.location.href="<%=request.getContextPath()%>/userInfo/initClient.do";
			});
	});

</script>
<body contextpath="<%=request.getContextPath()%>">
	<div>
		<form id="clientForm" method="POST">
			<table>
				<tr>
					<td class="label">项目号：</td>
					<td><input type="text" name="projectCode" /></td>
				</tr>

			</table>
		</form>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				title="查询客户信息" id="clientInfo">查询客户信息</button>
			<button type="button" loxiaType="button" class="confirm"
				title="查询押品信息" id="collateralInfo">查询押品信息</button>

		</div>
		<%@include file="/common/paginationInit.jsp"%>
		<table id="tbl-clientlist"></table>
		<div id="pager"></div>

	</div>
</body>
</html>