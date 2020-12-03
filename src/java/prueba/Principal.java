/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prueba;

import java.io.IOException;

/**
 *
 * @author sofi
 */
public class Principal {
    
    public static void main(String[] args) throws IOException {
        LectorCSV lectorCsv = new LectorCSV();
        lectorCsv.leerCSV();
        
    }
}
