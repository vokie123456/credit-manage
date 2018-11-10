<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 申请贷款新增页面   -->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>用户数据权限</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/scripts/main/jquery-easyui/easyui.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/scripts/main/jquery-easyui/icon.css'/>" />
<script type="text/javascript"
	src="<c:url value='/scripts/main/jquery-easyui/jquery.easyui.min.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/user_data_sheet.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">

	<textarea id="organizationList" rows="3" cols="100" class="disNone">${organizationList }</textarea>
	<!-- 用户基本信息 -->
	<form id="frm-userauthdata" method="post">		
	<div id="selectRoles">
		<c:forEach items="${userDataSheetList}" var="userRoleVo"
			varStatus="loop">        
			<div style="width:100%;">
			<div class="divBgColor">${userRoleVo.roleName}
				数据授权：</div>
			<div>  
			 <input type="hidden" id="compCode" name="compCode" value="${userRoleVo.compCode}"/>
			<input type="hidden" name="roleDataVos.roleCode" value="${userRoleVo.roleCode}"/>
				<textarea id="bizHall${userRoleVo.roleCode}"
					name="roleDataVos.bizHall" rows="3" cols="100" class="disNone">
		                           <c:forEach var="uaz"
						items="${mapuaz[userRoleVo.roleCode]}">
		                               ${uaz},
		                           </c:forEach>   
    </textarea>
				<ul id="bizHall-tree${userRoleVo.roleCode}" class="easyui-tree"></ul>
			</div>
			</div>  
		</c:forEach>
		</div>
<%-- 
 <table id="selectRoles"  >
        <tr>   
            <c:forEach items="${userDataSheetList}"
                       var="userRoleVo" varStatus="loop">
            <td class="label" valign="top">${userRoleVo.roleName} 数据授权：</td>
            <td style="border: 1px solid #ffffff;">
                <input type="hidden" name="roleDataVos.roleCode" value="${userRoleVo.roleCode}"/>
                  <input type="hidden" id="compCode" name="compCode" value="${userRoleVo.compCode}"/>
                <textarea id="bizHall${userRoleVo.roleCode}"    
                          name="roleDataVos.bizHall" rows="3" cols="100"
                          class="disNone">  <c:forEach var="uaz"
						items="${mapuaz[userRoleVo.roleCode]}">
		                               ${uaz},
		                           </c:forEach> </textarea>
                <ul id="bizHall-tree${userRoleVo.roleCode}" class="easyui-tree"></ul>
            </td>
            </c:forEach>
        </tr>   
    </table> --%>
	</form>
	<div class="buttonlist buttonDivWidth">
		<button type="button" loxiaType="button" class="confirm"
			id="btnSaveOfUserAuthData">保存</button>
	</div>

</body>
</html>
