<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">
	function print(url,flag){
		document.printApplet.printReport(url,flag);
	}
	
	function preview(url){
		document.printApplet.previewReport(url);
	}
</script>
<APPLET name="printApplet" CODE = "loxia.support.jasperreport.JasperPrintApplet.class" ARCHIVE = "<%=request.getContextPath() %>/common/jasperreports-3.5.2-applet.jar,<%=request.getContextPath() %>/common/commons-logging-1.0.4.jar,<%=request.getContextPath() %>/common/commons-collections-3.2.1.jar,<%=request.getContextPath() %>/common/ireport-utils-2.0.1.jar,<%=request.getContextPath() %>/common/barbecue-1.5-beta1-rev.jar" WIDTH = "0" HEIGHT = "0">
</APPLET>
