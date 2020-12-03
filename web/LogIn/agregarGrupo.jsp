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
        <title>Agregar grupo</title>
        <link href="../css/estilos2.css" rel="stylesheet" type="text/css"/>
        <script src="../../src/java/js/jquery-3.5.1.min.js" type="text/javascript"></script>
               <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
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
           <div class="container bg-white"> 
               <br><br>
                                <h3 class="text-md-center">Registrar Grupo </h3>                                  
                                <hr>
                                
                                <form action="../servletGrupo" method="POST">
                                    <div class="row" >

                                        <div class="col">
                                            <label>Materia </label>
                                            <input class="form-control" id="materia"  type="text" name="txtMateria" placeholder="Nombre Materia" required="">

                                        </div>

                                        <div class="col">
                                            <label >Link de Meet</label>
                                            <input class="form-control" id="link" type="text" name="txtLink" placeholder="Ingresar el link" required=""> 
                                        </div>
                                    </div>       
                                    <div class="row">
                                        <div class="col" > 
                                            <p> 
                                            </p>
                                            <label >Horario</label>
                                            <input class="form-control" id="horario" type="text" name="txtHorario" placeholder="Horario" required=""> 

                                        </div>     
                                        <div class="col" > 
                                            <p> 
                                            </p>
                                            <label > Días de la semana</label>
                                            <input class="form-control" id="dias" type="text" name="txtDias" placeholder="Ingresa los días" required=""> 
                                        </div>      
                                    </div> 
                                    <div class="row">
                                        <div class="col-lg-3" > 
                                            </div> 
                                        
                                        <div class="col-lg-6" > 
                                            <p> 
                                            </p>
                                            <label > Unidades de competencia</label>
                                            <input class="form-control" id="competencias" type="text" name="txtcompetencias" placeholder="Ingresar unidades" required=""> 
                                        </div> 
                                    </div> 

                                    <div class="row"> 

                                        <div class="col offset-md-4">
                                            <p>

                                            </p>
                                            <button id="registrar" type="submit" name="btnAceptar" class="btn btn-primary btn-md">Registrar</button>
                                            <button id="cancelar" type="reset" class="btn btn-secondary btn-md">Cancelar</button>
                                        </div> 


                                    </div>
                                    <div class="row">
                                        <p></p>
                                    </div>  

                                </form>
                            </div>       
              
    </body>
</html>
