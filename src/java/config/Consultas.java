package config;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author sofi
 */
public class Consultas extends Conexion{
    
    public boolean autenticacion(String correo, String contraseña){
        PreparedStatement pst = null;
        ResultSet rs = null;   
        try{
            String consulta = "select * from usuarios where correo = ? and contraseña = ?";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, correo);
            pst.setString(2, contraseña);
            
            rs = pst.executeQuery();
            
            if(rs.absolute(1)){
                return true;
            }
        } catch (Exception e) {
            System.out.println("Error" + e);
        }finally{
            try {
                if(getConexion() != null) getConexion().close();
                if(pst !=null) pst.close();
                if(rs != null) rs.close();
            } catch (Exception e) {
                System.out.println("Error" + e);
            }                    
        }        
        return false;
    }
    
    
    public boolean registrar(String correo,String contraseña,String nombre,String apellido, String fecha){
        
        PreparedStatement pst = null;
        
        try {
            
            System.out.println("AL 100");
            System.out.println(correo+ "," + contraseña+ "," + nombre+ "," + apellido+ "," +fecha);
            String consulta = "insert into usuarios (correo, contraseña, nombre, apellido, fecha) values (?,?,?,?,?)";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, correo);
            pst.setString(2, contraseña);
            pst.setString(3, nombre);
            pst.setString(4, apellido);
            pst.setString(5, fecha);
            
            if(pst.executeUpdate() == 1 ){
                return true;
            }
            
        } catch (Exception ex) {
            System.err.println("Error" + ex);
        }finally{
            try {
                if(getConexion() !=null )getConexion().close();
                if(pst != null)pst.close();
            } catch (Exception e) {
                System.err.println("Error" + e);
            }
            
            
        }
        return false;
    }
    
    public boolean registrarGrupo(String nombreMateria,int unidades,String dia ,String link, String hora){
        PreparedStatement pst = null;
        try {
            System.out.println( nombreMateria+"," + unidades + "," + dia +"," + link + "," + hora);
            String consulta = "insert into grupos(nombre, unidades, dias, link, hora) values(?,?,?,?,?)";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, nombreMateria);
            pst.setInt(2, unidades);
            pst.setString(3, dia);
            pst.setString(4,link);
            pst.setString(5, hora);
            if(pst.executeUpdate() == 1 ){
                return true;
            }
        } catch (Exception e) {
            System.err.println("Error" + e);
        }finally{
            try{
                if(getConexion() !=null)getConexion().close(); 
                if(pst != null)pst.close();
            }catch(Exception e){
                System.err.println("Error" + e);
            }
        }
        return false;
    }
    
    
/*
   public static void main(String[] args) throws Exception{
        Consultas co = new Consultas();
        System.out.println(co.registrarGrupo("agiles", 4, "Lunes", "dddwda", "dwadwadaw"));
    }*/
   /*     public static void main(String[] args) throws Exception{
        Consultas co = new Consultas();
        System.out.println(co.autenticacion("gerak@gmail", "12345"));
    }*/
    

   
       
   }
