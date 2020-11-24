/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

window.addEventListener('load', function (){
    document.getElementById("aceptar").addEventListener('click', function (){
        alert('click....');
        var correo = document.getElementById('txtCorreo').value;
        var contra = document.getElementById('contrasenia').value;
        var b = false;
        if(correo.length > 0 && contra.length > 0){
            b = true;
        }
        
        if(b){
            document.getElementById('formularioInicio').submit();
        }else{
            alert('Por favor rellene los campos ');
        }
    });
});
