<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  manifest="/scripts/common/clear.appcache"  manifest="/scripts/common/clear.appcache">
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
	
	$j.extend(loxia.regional['zh-CN'], 
			{CLIENT_ID: "客户号",
			COMPANY_CODE: "公司编号",
			CLIENT_CODE: "客户编号",
			CLIENT_NAME: "客户",
			CLIENT_TYPE: "客户类别",
		    CLIENT_FROM: "客户来源",
		    BIZ_HALL : "所属营业厅",
		    BIZ_HALL_NAME: "营业厅",
		    CREATE_TIME:"创建时间",
		    
		    DETAIL: "查看",
		    EDIT : "编辑",
		    TABLE_TITLE: "客户列表",
		    DETAIL_PAGE_TITLE: "客户详细资料"
		});

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
		var listUrl =  $j("body").attr("contextpath")+"/userInfo/query.json?codeQuerying=001";
		var clientTypelist = loxia.syncXhr(window.parent.$j("body").attr("contextpath")+"/base/formaterOptions.json",{categoryCode:"1003"});
		var clientFromlist = loxia.syncXhr(window.parent.$j("body").attr("contextpath")+"/base/formaterOptions.json",{categoryCode:"1004"});
		
		$j("#tbl-clientlist").jqGrid({
			url:listUrl,
			datatype: "json",
			//colNames还差一个超链接查看详细信息的一列
			colNames: [i18("CLIENT_ID"),i18("CLIENT_CODE"),i18("CLIENT_NAME"), i18("CLIENT_TYPE")
			           ,i18("CLIENT_FROM"), i18("BIZ_HALL"),i18("BIZ_HALL_NAME"), i18("CREATE_TIME"),i18("EDIT")],
			
			//name根据返回 entity或者 vo属性对应
			colModel: [{name: "clientId", align : "center",resizable: true, hidden: true},
			           {name: "clientCode",align : "center",  resizable: true},
				       {name: "clientName",align : "center", resizable: true},		         
				       {name: "clientType",align : "center", index: "clientType", resizable: true,formatter:'select',editoptions:clientTypelist},		         
				       {name: "clientFrom",align : "center", index: "clientFrom", resizable: true,formatter:'select',editoptions:clientFromlist},
			           {name: "bizHall",align : "center", resizable: true, hidden: true},
			           {name: "nameBizHall",align : "center", resizable: true},
			           {name: "createTime",align : "center", resizable: true},	         
			           {name:"editLabel",align : "center",index:"editLabel", resizable: true,formatter:"linkFmatter", formatoptions:{onclick:"editData", label:i18("EDIT")}}
			           ]  ,
			           
			caption: i18("TABLE_TITLE"),//用户登录结果列表
			rowNum: jumbo.getPageSize(),
		   	rowList:jumbo.getPageSizeList(),
			height:jumbo.getHeight(),
			pager: '#pager',
			sortname: 'client_code',
			sortorder: "desc",
			mtype: 'POST', 
			postData:getPostData(),
			viewrecords: true,
			autowidth : true, // 自动列宽
			gridComplete:function(){doResize("tbl-clientlist",jqGridWidth)},
			jsonReader: { repeatitems : false, id: "0" }
		});
		
		$j("#clientInfo").click(function(){
			$j("#tbl-clientlist").jqGrid('setGridParam',{url:listUrl, page:1, postData:getPostData()}).trigger("reloadGrid");
		});	
		
		 $j("#collateralInfo").click(function (){
			window.location.href="<%=request.getContextPath()%>/userInfo/initCollateral.do";
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