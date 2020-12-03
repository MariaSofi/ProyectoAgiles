<%-- 
    Document   : principal2
    Created on : 2/12/2020, 12:10:25 AM
    Author     : sofi
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
        <title>Grupos</title>
        <link href="../css/estilos2.css" rel="stylesheet" type="text/css"/>
        <script src="../../src/java/js/jquery-3.5.1.min.js" type="text/javascript"></script>
        <link href="../css/estilos3.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>       
            <ul class="menu">
                <li id="menuInicio"> <a href="principal2.jsp"> Inicio </a></li>
                <li id="menuGrupos"> <a href="grupos.jsp"> Grupos </a></li>
                <li id="menuPerfil" > <a href="#"> Perfil </a></li>
                <li id="menuConfiguracion" > <a href="#"> Configuración </a></li>
                <li id="menuAcercaDe"> <a href="#"> Acerca De </a></li>
                <p> <% out.print(corr); %>  </p> 
        
            </ul>   
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
                ps=con.prepareStatement("select * from grupos ");
                rs = ps.executeQuery();
                
                %>
                <div id="main-container">
                    <table>
                        <thead>
                            <tr>
                               <th>Materia</th> <th>unidades</th> <th>Dias</th> <th>link</th> <th>hora</th> 
                            </tr>
                        </thead>
                        <%
                            while(rs.next()){
                                
                           
                        %>
       
                        <tr>
                            
                            <td> <%= rs.getString("nombre") %> </td>
                            <td> <%= rs.getInt("unidades") %> </td>
                            <td> <%= rs.getString("dias") %> </td>
                            <td> <%= rs.getString("link") %> </td>
                            <td> <%= rs.getString("hora") %> </td>
                        
                             <td  ><button type="button" class="btn btn-success"> Consultar </button>   </td>
                             <td ><button type="button" class="btn btn-danger"> Eliminar </button>   </td>
                            
                        </tr>

                        <% }  %>
                       
                        
                    </table>
                         
                    <div>
                        <br>
                       
                        <a class="btn btn-primary" href="agregarGrupo.jsp" role="button"  name="btnRegistrar" >Registrar grupo</a>
                    </div>

                </div>
                
                
    </body>
</html>