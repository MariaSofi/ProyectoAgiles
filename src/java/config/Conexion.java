package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author sofi
 */
public class Conexion {
    
private String USERNAME = "root";
private String PASSWORD = "";
private String HOST = "localhost";
private String PORT = "3306";
private String DATABASE = "sistemaasistencias";  
private String CLASSNAME = "com.mysql.jdbc.Driver";
private String URL = "jdbc:mysql://localhost:3306/sistemaasistencias?zeroDateTimeBehavior=convertToNull" ;// "jdbc:mysql://"+ HOST+ ":"+PORT+"/"+DATABASE;
private Connection con;
  
  public Conexion(){
      try {
          Class.forName(CLASSNAME);
          con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
          System.out.println("Conexión al 100");
          
      } catch (ClassNotFoundException e) {
          System.out.println("ERROR" + e);
          
      }catch(SQLException e){
          System.out.println("ERROR" + e);
      }
  }
    public Connection getConexion(){
        return con;
    }
    
}
