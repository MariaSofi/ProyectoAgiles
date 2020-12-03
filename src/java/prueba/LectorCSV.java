/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prueba;

import java.io.BufferedReader;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.Files;
import java.util.ArrayList;

/**
 *
 * @author sofi
 */
public class LectorCSV {
    
    public void leerCSV() throws IOException{
        ArrayList<ArrayList<String>> datos = new ArrayList<ArrayList<String>>();
        Path filePath = Paths.get("C:\\Users\\sofi\\Desktop\\Asistencia.csv");
        try{
            BufferedReader br = Files.newBufferedReader(filePath);
            String linea;
            while((linea = br.readLine())!=null){
                String[] datosDelinea = linea.split(",");
                ArrayList<String> datosTemporal = new ArrayList<String>();
                for(String dato: datosDelinea){
                    datosTemporal.add(dato);
                }
                datos.add(datosTemporal);
            }
        }catch(IOException e){
            e.printStackTrace();
        }
        System.out.println(datos);
    }
}
