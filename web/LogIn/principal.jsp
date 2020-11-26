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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script  src="https://www.google.com/recaptcha/api.js" async defer></script>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link href="../css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>AHORA ESTAS EN LA PAGINA PRINCIPAL</title>
    </head>
    <body>
        <div id="contenedor">
            <nav>
                <h1>
                <% out.print(corr); %>
                </h1>
            </nav>
             
        </div>

    </body>
</html>
