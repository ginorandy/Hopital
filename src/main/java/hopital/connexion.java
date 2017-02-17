/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hopital;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.util.logging.PlatformLogger;

/**
 *
 * @author Randy
 */
public class connexion {
    Connection conn;
    public connexion()
    {
        
    }
    public connexion(Connection conn)
    {
        this.conn=conn;
    }
    public void connect()
    {
        String dataConnect="jdbc:postgresql://localhost:5432/hopital";
        String user="postgres";
        String pass="itu";
        try
        {
            Class.forName("org.postgresql.Driver");
            
            this.conn=DriverManager.getConnection(dataConnect,user,pass);
        }
        catch(SQLException ex)
        {
            
        }
        catch(ClassNotFoundException ex){
            }
    }
    public Connection getConnexion()
    {
        return this.conn;
    }
    
}
