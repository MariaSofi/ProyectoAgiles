package config;

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
    
    
    public boolean registrar(String correo,String contraseña,String nombre,String apellido, int edad) throws SQLException{
        
        PreparedStatement pst = null;
        
        try {
            String consulta = "insert into usuarios (correo, contraseña, nombre, apellido, edad) values (?,?,?,?,?)";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, correo);
            pst.setString(2, contraseña);
            pst.setString(3, nombre);
            pst.setString(4, apellido);
            pst.setInt(5, edad);
            
            if(pst.executeUpdate() == 1 ){
                return true;
            }
            
        } catch (SQLException ex) {
            System.err.println("Error" + ex);
        }finally{
            try {
                if(getConexion() !=null )getConexion().close();
                if(pst != null)pst.close();
            } catch (SQLException e) {
                System.err.println("Error" + e);
            }
            
            
        }
        return false;
    }

/*    public static void main(String[] args) throws Exception{
        Consultas co = new Consultas();
        System.out.println(co.registrar("gerakk@gmail", "12345", "gerardo", "kkvazos", 22));
    }*/
        public static void main(String[] args) throws Exception{
        Consultas co = new Consultas();
        System.out.println(co.autenticacion("gerak@gmail", "12345"));
    }
}

