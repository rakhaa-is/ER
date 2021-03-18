package Controller;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author amals
 */
public class ER_Controller {
    
     String URL = "jdbc:mysql://localhost:3306/er_system?useSSL=false";
    String USERNAME= "root"; // use your username of Mysql server
    String PASSWORD ="12345"; // use your password of Mysql server
    Connection connection = null;
    PreparedStatement preparedStmt = null;
    ResultSet resultSet = null;
    String sqlQuery = "";

    public ER_Controller() {
        try{
            Class.forName("com.mysql.jdbc.Driver");

            connection = DriverManager.getConnection(URL,USERNAME,PASSWORD);

        }catch(SQLException e){
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ER_Controller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    public ResultSet getInactiveBeds() {
      
        return resultSet;
    }
    
    public ResultSet getActiveBeds() {
        
        return resultSet;
    }
    
    //return all beds in the system 
     public ResultSet getAllBeds() {
        
        return resultSet;
    }
    
     //return all rooms in the system 
     public ResultSet getAllRooms() {
        
        return resultSet;
    }
     
     //retrun available room
     public ResultSet getAvailableRooms() {
       
        return resultSet;
    }
     
    // update bed status depend on active or inactive
    public boolean UpdateBedsAvailability(String fName, String lName, String userName, int ID) {
       
        return true;
    }
     
    // add new beds to the system 
     public boolean addBeds(String fName, String lName, String userName, int ID) {
        
        return true;
    }
     
    //add new rooms to the system 
    public boolean addRooms(String fName, String lName, String userName, int ID) {
       
        return true;
    }
    
    
    //add new beds , increment number of beds for this room
     public boolean addBedsInRoom(String fName, String lName, String userName, int ID) {
       
        return true;
    }
     
     
     //rturn number of beds in room , or return availabe beds in specified room
     public boolean getBedsInRoom(String fName, String lName, String userName, int ID) {
       
        return true;
    }
    
    
    
}
