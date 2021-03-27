package DB;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author rakha
 */
public class DB_Connection {
    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author rakha
 */

    
    String URL = "jdbc:mysql://localhost:3306/cpit455?useSSL=false";
    String USERNAME= "root"; // use your username of Mysql server
    String PASSWORD ="mysql"; // use your password of Mysql server
    Connection connection = null;
    PreparedStatement preparedStmt = null;
    ResultSet resultSet = null;
    String sqlQuery = "";

    public DB_Connection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");

            connection = DriverManager.getConnection(URL,USERNAME,PASSWORD);

        }catch(SQLException e){
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DB_Connection.class.getName()).log(Level.SEVERE, null, ex);
        }
    } 
    
    
    // add new beds to the system 
    String symbol  ;
     public boolean createAccount(String role , String fName , String sName , String lName , String email , String ID , String password , String phoneNumber) {
           String Id_ = idWithSymbol(role , ID);
            
          sqlQuery = "insert into "+role+"( ID, firstname, secondname, lastname, Email, password, phonenumber)values('" + Id_ + "','" + fName
                + "','" + sName + "','" + lName + "','" + email + "','" + password + "','" + phoneNumber + "');";
        try{
            Statement stmt = connection.createStatement();
            int i=stmt.executeUpdate(sqlQuery);

        }
        catch(Exception e){
            //System.out.print(e);
            e.printStackTrace();
        }
        return true;
}
     
     public String idWithSymbol(String role , String ID){
         if (role.equalsIgnoreCase("Nurse")){
                symbol = "NU"+ID;
            }else if (role.equalsIgnoreCase("Doctor")){
                symbol = "DR"+ID;
            }else if (role.equalsIgnoreCase("Administrator")){
                symbol = "AD"+ID; 
            }
         return symbol;
     }
     
        public boolean login_validation(String role , String ID , String password) {
       
           sqlQuery = "SELECT * FROM "+ role +" WHERE ID =" + ID + " AND password =  " + password + ";";
           
           try { 
            preparedStmt = connection.prepareStatement(sqlQuery);
            resultSet = preparedStmt.executeQuery();
            
        }catch(SQLException e){}
        return true;
}



     public boolean addBeds(int ID , String State , int RoomID) {
        sqlQuery = "insert into beds(ID,State,RoomID)values('" + ID + "','" + State
                + "','" + RoomID + "');";
        try{
            Statement stmt = connection.createStatement();
            int i=stmt.executeUpdate(sqlQuery);

        }
        catch(Exception e){
            //System.out.print(e);
            e.printStackTrace();
        }
        return true;
      
    }
    
    //add new rooms to the system 
    public boolean addRooms(int RoomID,  int beds , String RoomName) {
        sqlQuery = "insert into rooms(ID , numberOfBeds , name )values('" + RoomID + "','" + beds + "','" + RoomName +  "');";
        try{
            
            Statement stmt = connection.createStatement();
            int i=stmt.executeUpdate(sqlQuery);
        }
        catch(Exception e){
            //System.out.print(e);
            e.printStackTrace();
        }
        return true;
    }
    
    
     //return all beds in the system 
     public ResultSet getAllBeds() {
         sqlQuery = "SELECT * FROM BEDS;";
        try{
            preparedStmt = connection.prepareStatement(sqlQuery);
            resultSet = preparedStmt.executeQuery();
        }catch(SQLException e){}
        return resultSet;
        
    }
    
     //return all rooms in the system 
     public ResultSet getAllRooms() {
         sqlQuery = "SELECT * FROM ROOMS;";
        try{
            preparedStmt = connection.prepareStatement(sqlQuery);
            resultSet = preparedStmt.executeQuery();
        }catch(SQLException e){}
        return resultSet;
    }
    
    
    public ResultSet getPatientInfo() {
        sqlQuery = "SELECT * FROM patient;";
        try{
            preparedStmt = connection.prepareStatement(sqlQuery);
            resultSet = preparedStmt.executeQuery();
        }catch(SQLException e){}
        return resultSet;
    }
    
        public ResultSet getAllPatientsHealthInfo() {
        sqlQuery = "SELECT * FROM maintraiage;";
        try{
            preparedStmt = connection.prepareStatement(sqlQuery);
            resultSet = preparedStmt.executeQuery();
        }catch(SQLException e){}
        return resultSet;
    }
    
        public ResultSet getPatientStatusInfo(int ID) {
         
        sqlQuery = "SELECT * FROM maintraiage WHERE PatintID =" + ID + ";";
        try{
            preparedStmt = connection.prepareStatement(sqlQuery);
            resultSet = preparedStmt.executeQuery();
        }catch(SQLException e){}
        return resultSet;
    }

    public boolean addPatientInfo(int ID , String eFName, String eSName, String eLName,String aFName, String aSName, String aLName,String email, int phonenumber , String address , String gender, String Nationality , String MaritalStatus ,String Religion , Date dateOfBirth , String Language) {
        sqlQuery = "INSERT INTO patient (ID, Email, phonenumber, address, gender, Nationality, MaritalStatus, Religion, DateOfBirth, Language, englishFirstName, englishSecondName, englishLastName, arabicFirstName, arabicSecondName, arabicLastName)"
                + "values('" + ID + "','" + email +  "','" + phonenumber +  "','" + address +  "','" + gender +  "','" + Nationality +  "','" + MaritalStatus +  "','" + Religion +  "','" + dateOfBirth +  "','" + Language +  "','" + eFName
                + "','" + eSName +  "','" + eLName +  "','" + aFName +  "','" + aSName +  "','" + aLName +  "','" + email +  "','" + phonenumber +  "','" + address + "');";
        try{
            Statement stmt = connection.createStatement();
            int i=stmt.executeUpdate(sqlQuery);

        }
        catch(Exception e){
            e.printStackTrace();
        }
        return true;
    }
    

}
