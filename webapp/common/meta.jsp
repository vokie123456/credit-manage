<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="/WEB-INF/Linkage.tld" prefix="linkage" %>
<%@ taglib uri="/WEB-INF/Linkageshow.tld" prefix="linkageshow" %>
<%@ taglib uri="/WEB-INF/bizoption.tld" prefix="bizoption" %>
<%@ taglib uri="/WEB-INF/bizselect.tld" prefix="bizselect" %>
<%@ taglib uri="/WEB-INF/bizoptionname.tld" prefix="bizoptionname" %>
<%@ taglib uri="/WEB-INF/bizcheckboxTag.tld" prefix="checkBox" %>
<%@ taglib uri="/WEB-INF/bizradio.tld" prefix="radio" %>
<%@ taglib uri="/WEB-INF/transactor.tld" prefix="transactor" %>
<%@ taglib uri="/WEB-INF/userDepartment.tld" prefix="userDepartment" %>
<%@ taglib uri="/WEB-INF/user.tld" prefix="user" %>
<%@ taglib uri="/WEB-INF/bizSpecificSelect.tld" prefix="bizSpecificSelect" %>
<%@ taglib uri="/WEB-INF/introduceUser.tld" prefix="introduceUser" %>
<%@ taglib uri="/WEB-INF/agencyInfo.tld" prefix="agencyInfo" %>
<%@ taglib uri="/WEB-INF/bizContractType.tld" prefix="contracttype" %>
<%@ taglib uri="/WEB-INF/bizshowusername.tld" prefix="showusername" %>
<%@ taglib uri="/WEB-INF/bizorg.tld" prefix="bizorg" %>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta name="renderer" content="ie-stand">
<jsp:useBean id="now" class="java.util.Date" />
<% String ver="?ver=1";%>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/jumbo/jquery-ui-1.8.14.custom.css'/><%=ver%>"/>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/jumbo/loxia-ui-1.2.custom.css'/><%=ver%>"/>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/ui.jqgrid.css'/><%=ver%>"/> 
<link rel="stylesheet" type="text/css" href="<c:url value='/css/icon.css'/><%=ver%>"/>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/tree.css'/><%=ver%>"/>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/main.css'/><%=ver%>"/>

<link rel="stylesheet" type="text/css" href="<c:url value='/css/multiselect/jquery.multiselect.css'/><%=ver%>"/>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/multiselect/prettify.css'/><%=ver%>"/>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/easydialog.css'/><%=ver%>"/>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/leading.css'/><%=ver%>"/>
<link rel="stylesheet" type="text/css" href="<c:url value='/scripts/newsZr/lib/time/lhgcalendar.css'/><%=ver%>"/>

<script type="text/javascript" src="<c:url value='/scripts/main/jquery-1.4.4.min.js'/><%=ver%>"></script>
<script type="text/javascript" src="<c:url value='/scripts/main/jquery-ui-1.8.7.custom.min.js'/><%=ver%>"></script>
	<script type="text/javascript" src="<c:url value='/scripts/rich/my97/WdatePicker.js'/><%=ver%>"></script>
<script type="text/javascript" src="<c:url value='/scripts/main/grid.locale-cn.js'/><%=ver%>"></script>
<script type="text/javascript" src="<c:url value='/scripts/main/jquery.jqGrid.min.js'/><%=ver%>"></script>
<script type="text/javascript" src="<c:url value='/scripts/main/tool.js'/><%=ver%>"></script>
<script type="text/javascript" src="<c:url value='/scripts/main/jquery.form.js'/><%=ver%>"></script>
<script type="text/javascript" src="<c:url value='/scripts/main/easydialog.js'/><%=ver%>"></script>
<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/CommonPerson.js'/><%=ver%>"></script>
<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/time/lhgcore.min.js'/><%=ver%>"></script>
<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/time/lhgcalendar.min.js'/><%=ver%>"></script>

<script type="text/javascript" src="<c:url value='/scripts/main/jquery.loxiacore-1.2.js'/><%=ver%>"></script>
<script type="text/javascript" src="<c:url value='/scripts/main/jquery.loxiainput-1.2.js'/><%=ver%>"></script>
<script type="text/javascript" src="<c:url value='/scripts/main/jquery.loxiaselect-1.2.js'/><%=ver%>"></script>
<script type="text/javascript" src="<c:url value='/scripts/main/jquery.loxiatable-1.2.js'/><%=ver%>"></script>
<script type="text/javascript" src="<c:url value='/scripts/main/jquery-ui-timepicker-addon.js'/><%=ver%>"></script>
<script type="text/javascript" src="<c:url value='/scripts/main/jquery.loxia.locale-zh-CN.js'/><%=ver%>"></script>
<script type="text/javascript" src="<c:url value='/scripts/main/jquery.ui.datepicker-zh-CN.js'/><%=ver%>"></script>
<script type="text/javascript" src="<c:url value='/scripts/main/jquery.tree.js'/><%=ver%>"></script>
<!-- workflow dialog -->
<script type="text/javascript" src="<c:url value='/scripts/main/workflow_dialog.js'/><%=ver%>"></script>
<script type="text/javascript" src="<c:url value='/scripts/main.js?version=1.1.0'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/common/otherValidate.js'/><%=ver%>"></script>

<script type="text/javascript" src="<c:url value='/scripts/main/multiselect/jquery.multiselect.js'/><%=ver%>"></script>
<script type="text/javascript" src="<c:url value='/scripts/main/multiselect/prettify.js'/><%=ver%>"></script>
<script>
<!--
var $j = jQuery.noConflict();
$j(document).ready(function (){
	loxia.init({debug: true, region: 'zh-CN'});
});

-->
</script>
<script> var ctx ="<%=request.getContextPath()%>"</script>
