<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--  dialog区域 -->
<form id="frm-userRole" onsubmit="return false">
	<input type="hidden" name="checkType" value="${roleCode }" />
</form>

<div id="dialog-chgrole">
	<table id="tbl-userlist"></table>

	<div id="pager_Q"></div>
</div>

<script type="text/javascript">

$j.extend(loxia.regional['zh-CN'], {
	USER_CODE : "用户账号",
	USER_NAME : "用户名称",
	EMP_CODE : "员工编号",
	EMP_NAME : "员工姓名",
	ORG_CODE : "机构流水号",
	COMPANY_CODE : "公司编码",
	ORG_NAME : "机构名称",
	ROLE_NAME : "角色",
	ROLE_CODE : "角色流水号",
	ROW_NUM : "行号",

	RESULT_DATA_TITLE : "审核员列表",

	VALIDATE_LENGTH_LONGER : "{0}长度大于{1}，请重新输入",
	VALIDATE_LENGTH_SHORT : "{0}长度小于{1}，请重新输入",
	VALIDATE_CHOOSE_ERROR : "提交时必须选择 审核通过 或 审核拒绝，请重新输入",
	SAVE_SUCCE : "提交成功！",
	SUBMIT_FORM : "确定",
	Cancel_FORM : "取消"
});

function i18(msg, args) {
	return loxia.getLocaleMsg(msg, args);
}


var getPostData=function(){
	return loxia._ajaxFormToObj("frm-userRole");
	//alert(loxia._ajaxFormToObj("frm-userRole").checkType);
};

$j(document).ready(function(){
	
	var qryUrl = $j("body").attr("contextpath")+"/base/orguserlist.json"
	
	// 初始化 roleUser 表
 	$j("#tbl-userlist").jqGrid({
			url:qryUrl,
			datatype: "json",
			// colNames还差一个超链接查看详细信息的一列i18("ROW_NUM"), 
			colNames: [i18("USER_CODE"),i18("USER_NAME"),i18("EMP_CODE"),i18("EMP_NAME"),i18("ORG_CODE"),i18("COMPANY_CODE"),i18("ORG_NAME"),i18("ROLE_NAME"),i18("ROLE_CODE")],
			
			// name根据返回 entity或者 vo属性对应
			colModel: [//{name: "rowNumber", width: 0,align: "center", resizable: true,hidden:true},
			           {name: "userCode", index: "userCode", width: 80,align: "center", resizable: true,hidden:true},
			           {name: "userName", index: "userName", width: 80, align: "center", resizable: true},
			           {name: "empCode", index: "empCode", width: 70,align: "center", resizable: true,hidden:true},
			           {name: "empName", index: "empName", width: 70, align: "center", resizable: true},		         
			           {name: "orgCode", index: "orgCode", width: 70, align: "center", resizable: true, hidden:true},
				       {name: "companyCode", index: "companyCode", width: 70, align: "center", resizable: true},		         
			           {name: "orgName", index: "orgName", width: 70, align: "center", resizable: true},		         
			           {name: "roleName", index: "roleName", width: 70, align: "center", resizable: true},		         
			           {name: "roleCode", index: "roleCode", width: 70, align: "center", resizable: true, hidden:true}	         	           
			],
			// caption:i18("RESULT_DATA_TITLE"),
			rowNum: jumbo.getPageSize(),
		   	rowList:jumbo.getPageSizeList(),
		   	height:jumbo.getHeight(),
		   	sortname: 'userCode',
		    pager: '#pager_Q',
			sortorder: "desc",
			mtype: 'POST', 
			postData: getPostData(),  // 初审人角色
			viewrecords: true,
			rownumbers:true,
			rownumWidth:30,
			autowidth : true,
			multiselect: false,
			shrinkToFit: true,
			jsonReader: { repeatitems : false, id: "0" }
		});



 	$j('#dialog-chgrole').dialog({autoOpen: false,width:500,
		title:   i18("RESULT_DATA_TITLE"),  
 		buttons: {
         "confirm": function() {
      	   var rowid = $j("#tbl-userlist").getGridParam("selrow");
      	   if (rowid.length==0) {
      		   alert("只能选择一条数据");
      		   return false;
      	   }
      	   var data=$j("#tbl-userlist").jqGrid("getRowData",rowid);
      	   
      	   $j("#txtChecker").val(data["empName"]);
      	   
	       if ($j("#checkerCode") != undefined)
	      	   $j("#checkerCode").val(data["userCode"]);
	       
      	   $j(this).dialog("close");
           },
           "cancel": function() {
         	  $j(this).dialog("close");
         }
       }, 
       close: function(event, ui) {loxia.unlockPage();} 
     });

	
	
	$j("#txtChecker").click(function(){
		   // 审核人选择
		$j("#tbl-userlist").jqGrid('setGridParam',{url:loxia.getTimeUrl(qryUrl),page:1,postData:getPostData()}).trigger("reloadGrid");
		   
	  	$j("#dialog-chgrole").dialog("open");
	  	loxia.lockPage();
	});
   
	
});
</script>