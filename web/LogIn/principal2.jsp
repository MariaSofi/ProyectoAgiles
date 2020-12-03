<%-- 
    Document   : principal2
    Created on : 2/12/2020, 12:10:25 AM
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
        <title>Menu de navegacion</title>
        <link href="../css/estilos2.css" rel="stylesheet" type="text/css"/>
        <script src="../../src/java/js/jquery-3.5.1.min.js" type="text/javascript"></script>
       
    </head>
    <body>       
            <ul class="menu">
                <li id="menuInicio"> <a href="#"> Inicio </a></li>
                <li id="menuGrupos"> <a href="grupos.jsp"> Grupos </a></li>
                <li id="menuPerfil" > <a href="#"> Perfil </a></li>
                <li id="menuConfiguracion" > <a href="#"> Configuración </a></li>
                <li id="menuAcercaDe"> <a href="#"> Acerca De </a></li>
                <p> <% out.print(corr); %>  </p> 
        
            </ul>   
                
              
    </body>
</html>
