<%-- 
    Document   : inicioSesion
    Created on : 9/11/2020, 06:44:57 PM
    Author     : sofi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script  src="https://www.google.com/recaptcha/api.js" async defer></script>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link href="../css/estilos.css" rel="stylesheet" type="text/css" >
        <link href="imagenes">
        <title>Inicio</title>
    </head>
    <body background="fondo">
        <div class="container">           
            <div class="w3-panel w3-blue bg-primary" >
                
            <h3 class="text-md-center">Inicio de Sesión</h3>   
            
            <hr>
            
            <form action="../sevletFinal" method="post" id="formularioInicio">
                <div class="row" >
                    <%-- CAMPOS PARA REGISTRARSE --%>
                    <div class="col">
                        <%-- NOMBRE --%>
                        <label>Correo Electronico: </label>
                        <input class="form-control" id="correo"   type="email" name="txtCorreo" placeholder="example@gmail.com" required="">

                    </div>
                </div>
                
                <div class="row">
                    <div class="col">
                        <%-- NOMBRE --%>
                        <label>Contraseña: </label>
                        <input class="form-control" id="contrasenia"   type="password" name="txtContrasenia" placeholder="" required="">    
                    </div>
                </div>            
                
                        
                <div class="text-md-center">
                    
                    <p>
                        
                    </p>
                    <button class="btn btn-light" id="aceptar"  type="submit" name="btnAceptar" >Iniciar</button>
                             
                </div>
                 </form>      
                   <div class="row">
                          <p></p>
                    </div>
                        <a href="https://www.twitch.tv/sofasofesofisofosofu/videos">Olvide mi contraseña</a>                       
                <hr>
                <div class="text-md-center"> 
                        <p> Crear cuenta </p>
                        <a class="btn btn-light" href="index.jsp" role="button"  name="btnRegistrar" >Registrar</a>          
    
                </div>
                <div class="row">
                          <p></p>
                    </div> 
            
            
            </div>
      
        </div>
        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>
