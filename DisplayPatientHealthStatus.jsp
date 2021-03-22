<%-- 
    Document   : DisplayPatientHealthStatus
    Created on : 15/03/2021, 11:43:57 ص
    Author     : rakha
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
        body {background-color: powderblue;}
title   {color: blue;}
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient Main Triage Information</title>

    </head>
    <body>
              <%
                 // try {
                String ID = request.getParameter("id");
                int id = Integer.parseInt(ID);
                DB.DB_Connection patient = new DB.DB_Connection();
                ResultSet result = patient.getPatientStatusInfo(id);
                
        
                
                      
                
              %>
              <div align="center">
        <h1>Patient Main Triage Information</h1>
            <table border="0">
                <tbody> 
                    
                     <tr>
                   
                    </tr>
                   
                      <% if(result.next()) { %>
                      <tr>
                          
                    <tr>
                        <td>Patient ID</td>
                        <td><%= result.getString("PatintID")%></td>
                    </tr>
                    <tr>
                        <td>HCO3</td>
                        <td><%= result.getString("HCO3")%></td>
                    </tr> 
                    <tr>
                        <td>Temperature</td>
                        <td><%= result.getString("Temperature")%></td>
                      
                    </tr> 
                    <tr>
                        <td>CO2</td>
                        <td><%= result.getString("CO2")%></td>
                    </tr> 
                    <tr>
                        <td>Blood Pressure</td>
                        <td><%= result.getString("BloodPressure")%></td>
                    </tr> 
                    <tr>
                        <td>Oxygen Saturation</td>
                        <td><%= result.getString("OxygenSaturation")%></td>
                    </tr> 
                    <tr>
                        <td>Heart Rate</td>
                        <td><%= result.getString("HeartRate")%></td>
                    </tr> 
                    <tr>
                        <td>SO2</td>
                        <td><%= result.getString("SO2")%></td>
                    </tr> 
                    <tr>
                        <td>Glucose</td>
                        <td><%= result.getString("Glucose")%></td>
                    </tr> 
                    <tr>
                        <td>Base Excess</td>
                        <td><%= result.getString("BaseExcess")%></td>
                    </tr> 
                    <tr>
                        <td>Respiratory Rate</td>
                        <td><%= result.getString("RespiratoryRate")%></td>
                    </tr> 
                    <tr>
                        <td>ECG</td>
                        <td><%= result.getString("ECG")%></td>
                    </tr> 
                    <tr>
                        <td>PH</td>
                        <td><%= result.getString("PH")%></td>
                    </tr> 
                    <tr>
                        <td>PO2</td>
                        <td><%= result.getString("PO2")%></td>
                    </tr>                       
                    <tr>
                        <td>Chiefcomplain</td>
                        <td><%= result.getString("Chiefcomplain")%></td>
                    </tr> 
                    <tr>
                        <td>CTAS score</td>
                        <td><%= result.getString("CTASscore")%></td>
                    </tr>
                    <tr>
                        <td>Is it Covid19 patient?</td>
                        <td><%= result.getString("COVIDStatus")%></td>
                    </tr>
                    
                     </tr>
                      <% }else {                   
                out.println("The Patient Main Traiage Information Not Fill Yet");                                     
                   %>
                <a href="PaterniMainTriage.jsp">To Fill The Patient Main Traiage Information</a> 
                
                     <% }%>
                      
                      
                    
                </tbody>
            </table>
                     </div>
    </body>
</html>
