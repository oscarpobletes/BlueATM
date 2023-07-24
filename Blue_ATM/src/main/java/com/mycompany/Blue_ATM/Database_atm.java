package com.mycompany.Blue_ATM;
import java.sql.Connection; // conexion a la base base de datos
import java.sql.DriverManager; // el driver


/**
 *
 * @author Óscar Poblete Sáenz & Julieta Rojas García
 */
public class Database_atm {
    
    public static Connection getConnection(){
        
        Connection c = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            c=DriverManager.getConnection(
                    "jdbc:mysql://127.0.0.1:3306/Blue_atm",
                    "root","root");            
        }catch(Exception e){
            
            System.out.println(e.getMessage());

        }
        
        return c;
    }
}
