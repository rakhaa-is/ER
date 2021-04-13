<%-- 
    Document   : AddPatientINfo
    Created on : 08-Apr-2021, 15:31:37
    Author     : amals
--%>

<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>added</title>
    </head>
    <style>
         body {
  background-image: url("Back3.png");
   background-attachment:fixed;
  background-size:cover;
}   
    </style>
    <body>
            <%
          
            String aFName = request.getParameter("AFisrtName");
            String aSName = request.getParameter("ASecondName");
            String aLName = request.getParameter("ALastName");
            
            String eFName = request.getParameter("EFirstName");
            String eSName = request.getParameter("ESecondName");
            String eLName = request.getParameter("ELastName");
  
            String ID = request.getParameter("ID");
            int id = Integer.parseInt(ID);
            String Email = request.getParameter("Email");
            String phonenumber = request.getParameter("phonenumber");
            int phon = Integer.parseInt(phonenumber);
            String DateOfBirth = request.getParameter("DateOfBirth");
            Date date=Date.valueOf(DateOfBirth);
            String address = request.getParameter("address");
            String MaritalStatus = request.getParameter("MaritalStatus");
            String gender = request.getParameter("gender");
            String Religion = request.getParameter("Religion");
            String Language = request.getParameter("Languages");
            String Nationality = request.getParameter("Nationality");
            DB.DB_Connection conn = new DB.DB_Connection();
        // boolean isAdded = conn.addPatientInfo(ArabicName , EnglishName , ID , Email , phonenumber , DateOfBirth ,address , MaritalStatus , gender ,Religion , Language , Nationality );
            boolean isAdded = conn.addPatientInfo( id , eFName,  eSName,  eLName, aFName,  aSName, aLName , Email , phon , address , gender, Nationality , MaritalStatus , Religion , date , Language);
            if(isAdded){
                out.print("Patient is successfully Added!");
            } else{
                out.print("Error");
            }
            %>
            
            <a href="DisplayPatientInfo.jsp" style="color:white"> Back </a>
          
    </body>
</html>
