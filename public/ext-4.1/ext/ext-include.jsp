<%@page import="Util.Fecha"%>
<%@page import="java.util.Date"%>
<%@page import="General.Controller.LoginUser"%>
<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%
            String contexto = request.getContextPath();
            LoginUser loginUser = (LoginUser)session.getAttribute("UserLoggedIn");
            Date fecha=new Date();
            String fechaSistema=Fecha.parseFecha(fecha,"dd-MM-yyyy");
            String horaSistema=Fecha.parseFecha(fecha,"HH:mm:ss");
            
%>
<link rel="stylesheet" type="text/css" href="<%=contexto%>/ext-4.1/ext/resources/css/ext-all.css"/>
<script type="text/javascript" src="<%=contexto%>/ext-4.1/ext/ext-all-debug.js"></script>
<link rel="stylesheet" type="text/css" href="<%=contexto%>/ext-4.1/ext/examples/shared/example.css" />
<script type="text/javascript" src="<%=contexto%>/ext-4.1/ext/ext-all.js"></script>

</script>
