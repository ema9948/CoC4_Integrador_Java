
package conexion;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    
    Connection con;
    
    public Conexion(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/coc","root","");
            System.out.println("DB :)");
        } catch (Exception e) {
            System.out.println("Error : " + e.getMessage());
        }
    }
    
    public Connection geConnection(){
        return  con;
    }
    
}