<%-- 
    Document   : grupoSeleccionado
    Created on : 3/12/2020, 02:25:01 AM
    Author     : sofi
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%--
<%
    HttpSession objsesion = request.getSession(false);
    
    String corr = (String)objsesion.getAttribute("txtCorreo");
    if(corr.equals("")){
        response.sendRedirect("LogIn/inicioSesion.jsp");
        
    }
    
%>
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/estilos2.css" rel="stylesheet" type="text/css"/>
        <link href="../css/estilos3.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>AQUI ESTA LA INFO DEL GRUPO</title>
    </head>
    <body>
        <ul class="menu">
                <li id="menuInicio"> <a href="principal2.jsp"> Inicio </a></li>
                <li id="menuGrupos"> <a href="grupos.jsp"> Grupos </a></li>
                <li id="menuPerfil" > <a href="#"> Perfil </a></li>
                <li id="menuConfiguracion" > <a href="#"> Configuración </a></li>
                <li id="menuAcercaDe"> <a href="#"> Acerca De </a></li>
           <%--     <p> <% out.print(corr); %>  </p> --%>
        
            </ul>  
 <%--       
        <%
                Connection con;
                String url = "jdbc:mysql://localhost:3306/sistemaasistencias?zeroDateTimeBehavior=convertToNull";
                String Driver = "com.mysql.jdbc.Driver";
                String user = "root";
                String password = "";
                Class.forName(Driver);
                con = DriverManager.getConnection(url,user, password);
                //Empezamos listando los datos  de la tabla de materias o grupos registrados
                PreparedStatement ps;
                ResultSet rs;
                ps=con.prepareStatement("select nombre from grupos ");
                rs = ps.executeQuery();
        %>
        
        <select>
            <option>Selecciona el grupo</option>
            <%
            while(rs.next()){
            %>
            
            <option><%= rs.getString("nombre")%> </option>
        
            <%
             }
            %>
            
    </select>
 --%>
 
 
        
    </body>
</html>
