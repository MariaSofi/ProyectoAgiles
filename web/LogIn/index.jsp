<%-- 
    Document   : index
    Created on : 4/11/2020, 03:59:03 PM
    Author     : sofi
--%>

<%@page import="modelo.Usuarios"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script  src="https://www.google.com/recaptcha/api.js" async defer></script>
        <title>Bienvenido al sistema de Asistencia</title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link href="../css/estilos.css" rel="stylesheet" type="text/css" >
    

    </head>
    <body >
        <div class="bg">
        <div  class="container chuchita" >
        
            <div class="w3-panel w3-blue bg-primary"> 
            
            <p class=""></p>

            <h3 class="text-md-center">Regístrate </h3>           
            <hr>  
            <form action="../servletFinal2" method="POST">

                <div class="row" >

                    <%-- Campos para registrarse --%>
                    <div class="col">
                        <%-- NOMBRE --%>
                        <label>Nombre: </label>
                        <input class="form-control" id="nombre"  type="text" name="txtnom" placeholder="Ingresar el nombre" required="">

                    </div>

                    <div class="col">
                        <%-- APELLIDO --%>
                        <label >Apellido:</label>
                        <input class="form-control" id="apellido" type="text" name="txtApellido" placeholder="Ingresar el apellido" required=""> 
                    </div>

                    <div class="col ">
                        
                        <label>Fecha de nacimiento</label>
                        <input class="form-control" id="nacimiento" type="date" name="campoFecha" placeholder="dd/mm/aaaa" required="">
                    </div>

                    <div> 
                        <div class="g-recaptcha"></div>
                    </div>   

                </div>       
                <div class="row">
                    <div class="col-md-8" > 
                        <p> 
                        </p>
                        <%-- CORREO --%>
                        <label >Correo electronico:</label>
                        <input class="form-control" id="correoElectronico" type="email" name="txtCorreo" placeholder="example@gmail.com" required=""> 

                    </div>      
                </div> 

                <div class="row">
                    <div class="col-md-8" > 
                        <p> 
                        </p>
                        <%-- CONTRASEÑA --%>
                        <label > Contraseña:</label>
                        <input class="form-control" id="contra1" type="password" name="txtContrasenia1" placeholder="" required=""> 

                    </div>      
                </div> 
                <div class="row">
                    <div class="col-md-8" > 
                        <p> 
                        </p>
                        <%-- REPITA CONTRASEÑA --%>
                        <label > Repita contraseña:</label>
                        <input class="form-control" id="contra2" type="password" name="txtContrasenia2" placeholder="" required=""> 

                    </div> 
                    <div class="col-md-3 offset-md-1">
                        <p></p>
                        <br>
                        <input type="checkbox" value="terminos" name="">                      
                        Acepto terminos y condiciones
                    </div>
                </div> 
                        
                <div class="row"> 
                    
                    <div class="col offset-md-5">
                        <p>
                        
                        </p>
                        <button id="registrar" type="submit" name="btnAceptar" class="btn btn-light btn-md">Registrar</button>
                        <button id="cancelar" type="reset" class="btn btn-secondary btn-md">Cancelar</button>
                    </div> 
                    
                    
                </div>
                      <div class="row">
                          <p></p>
                    </div>  
            
            </form>
            </div>           
        </div>
 
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>    
        </div>
    </body>
</html>
