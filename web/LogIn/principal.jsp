<%-- 
    Document   : principal
    Created on : 4/11/2020, 05:13:28 PM
    Author     : sofi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession objsesion = request.getSession(false);
    
    String corr = (String)objsesion.getAttribute("txtCorreo");
    if(corr.equals("")){
        response.sendRedirect("LogIn/inicioSesion.jsp");
        
    }
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AHORA ESTAS EN LA PAGINA PRINCIPAL</title>
    </head>
    <body>
        <h1> BIENVENIDO <% out.print(corr); %> </h1>
    </body>
</html>
