<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>--%>



<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%String contexto = request.getContextPath();%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        
        <link rel="stylesheet" type="text/css" href="../../resources/css/ext-all.css" />
        <link rel="stylesheet" type="text/css" href="../shared/example.css" />
        <script type="text/javascript" src="../../ext-all.js"></script>
        <script type="text/javascript" src="../example-data.js"></script>
        <script type="text/javascript" src="Area.js"></script>
        <script type="text/javascript" src="Bar.js"></script>
    </head>
    <body>
        <script type="text/javascript">
            Ext.onReady(function() {
                Ext.QuickTips.init();
                
            });
        </script>
    </body>
</html>
