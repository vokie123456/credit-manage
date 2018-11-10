<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <%@include file="/common/meta.jsp" %>
  <fmt:setBundle basename="messages" var="lang"/>
  <script type="text/javascript" src="<c:url value='/scripts/frame/base/contractconfig/contract_config_add.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">

<div id="contractConfigDetailDiv">
  <div class="divBgColor">
    <fmt:message key="label.contract.edit.title" bundle="${lang}"/>
  </div>
  <form id="contractConfigEditForm" method="post" action="<%=request.getContextPath()%>/base/contractModel/saveContractConfigInfo.do"
   enctype="multipart/form-data" target="tempFile">
    <input type="hidden" id="id" name="id" value="${cc.id }"/>
    <input type="hidden" id="compCode" name="compCode" value="${cc.compCode }"/>
    <table class="col3">
    <tr>
        <td class="label">合同类型：</td>
        <td>
          <bizselect:bizselect name="contractClassCode" biztypekey="1143"  selected="${cc.contractClassCode }" mandatory="true" />
            <label class="del_mandatory">&nbsp;&nbsp;*</label>
		</td>
    </tr>
    <tr>
        <td class="label">模板上传：</td>
        <td class="content" id="fileTd">
          <input name="fileFiled" type="file" id="pdFileFileField" onchange="testonblur()" />
          <label class="del_mandatory">&nbsp;&nbsp;*</label>
        </td>
    </tr>
    <tr>
        <td class="label">合同模板名称：</td>
        <td class="content">
          <input id="contractModelName"  name="contractModelName" value="${cc.contractModelName }"
          loxiaType="input" trim="true" mandatory="true"/>
          <label class="del_mandatory">&nbsp;&nbsp;*</label>
        </td>
        <td class="label">合同模板编号：</td>
        <td class="content">
		  <input id="contractModelCode"  name="contractModelCode" value="${cc.contractModelCode }"
          loxiaType="input"   readonly="readonly"/>
		</td>
      </tr>
      <tr>
        <td class="label">是否为主合同：</td>
        <td class="content">
             <c:if test="${cc.ifMaster ne null}">
				<bizselect:bizselect id="ifMaster" name="ifMaster" biztypekey="1001" 
        			mandatory="true"  isChoose="true"
        			selected="${cc.ifMaster}">
        		</bizselect:bizselect>
        		</c:if>
        	<c:if test="${cc.ifMaster eq null }">
					<bizselect:bizselect id="ifMaster" name="ifMaster" biztypekey="1001" 
        				mandatory="true"  isChoose="true"
        				selected="100112">
        			</bizselect:bizselect>
			</c:if>
            <label class="del_mandatory" >&nbsp;&nbsp;*</label>
        </td>
        <td class="label">还款更新审结余额：</td>
        <td class="content">
           <c:if test="${cc.ifRepayUpdate ne null}">
				<bizselect:bizselect id="ifRepayUpdate" name="ifRepayUpdate" biztypekey="1001" 
				   selected="${cc.ifRepayUpdate}" mandatory="true" isChoose="true">
			    </bizselect:bizselect>
        		</c:if>
        	<c:if test="${cc.ifMaster  eq null }">
				<bizselect:bizselect id="ifRepayUpdate" name="ifRepayUpdate" biztypekey="1001" 
				   selected="100112" mandatory="true" isChoose="true">
			    </bizselect:bizselect>
			</c:if>
            <label class="del_mandatory">&nbsp;&nbsp;*</label>
        </td>
      </tr>
    </table>
    <div class="buttonlist buttonDivWidth">
      <button id="btnSubmit" type="button" loxiaType="button"
              class="confirm">
        <fmt:message key="label.contract.edit.btn.save" bundle="${lang}"/>
      </button>
      <button id="btnBack" type="button" loxiaType="button"
              class="confirm">
        <fmt:message key="label.contract.edit.btn.back" bundle="${lang}"/>
      </button>
    </div>
  </form>
</div>
<iframe id="tempFile" name="tempFile" style="display: none;"></iframe>
</body>