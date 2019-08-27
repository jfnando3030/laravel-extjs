<%--
  Creado por: jesa
--%>
<%@page import="General.Controller.LoginUser"%>
<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ page isErrorPage="true" %>
<%
	LoginUser loginUser = (LoginUser)session.getAttribute("UserLoggedIn");
	// cierra la ventana por la session inactiva
	if(loginUser == null) out.println("<script language=\"Javascript\"> alert(\"Sesión expirada\"); top.close();</script>");
	String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Error</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
    <link rel="stylesheet" type="text/css" href="<%=path%>/estilos/estilos.css" />
    <script language="JavaScript" type="text/javascript" src="<%=path%>/script/funciones.js"></script>
    <script type="text/javascript" language="jsvascript">
		function $(element) {
			if (arguments.length > 1) {
				for (var i = 0, elements = [], length = arguments.length; i < length; i++)
					elements.push($(arguments[i]));
				return elements;
			}
			if (typeof element == 'string'){
				element = document.getElementById(element);
				if (typeof element == 'undefined'){
					element = document.getElementByName(element);
				}
			}
			return element;
		}
		function hide(element) {
		    $(element).style.display = 'none';
		    return element;
		}
		function show(element) {
    		$(element).style.display = '';
    		return element;
  		}
  		var isVisible = false;
  		function toggle(){
  			var oDiv = $('divDetalles');
  			if(isVisible){
  				hide(oDiv);
  				isVisible = false;
  			}else{
  				show(oDiv);
  				isVisible = true;
  			}
  		}
    </script>        
  </head>
  <body>
  <table border="1">
<tbody><tr>
<!--  <a href="#" onclick="javascript:toggle()">(detalles)</a> -->
<th class="titulo_tabla" >Mensaje de Error</th></tr>
<tr><td class="texto" ><%= exception.getMessage().replaceAll("\\n","<br>") %>
</td></tr>
<tr>
<td><div id="divDetalles" style="display: none;"><table width="100%" border="1">
<tbody><tr>
<td class="texto">
<%
	StackTraceElement[] stack = exception.getStackTrace();
	for( int i = 0; i < stack.length; i++){
		out.println(stack[i].toString()+"<br>");
	}
%>
</td></tr>
</tbody></table></div></td></tr>
</tbody></table>
  </body>
</html>
