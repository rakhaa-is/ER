<%-- 
    Document   : DisplayAllPatientHealthStatus
    Created on : 27/03/2021, 11:32:41 ص
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
         body {
  background-image: url("Back3.png");
   background-attachment:fixed;
  background-size:cover;
}   
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient Main Triage Information</title>

    </head>
    <body>
              <%
                 // try {

                DB.DB_Connection allpatientHealthStatus = new DB.DB_Connection();
                ResultSet result = allpatientHealthStatus.getAllPatientsHealthInfo();              
                int rowNumber = 1 ; 
              %>
              <div align="center">
        <h1>Patient Main Triage Information</h1>
            <table border="1">
                <tbody> 
                   
                      <tr>
                           <th>No.</td>
                          <th>Patient ID</td>
                          <th>HCO3</th>
                           <th>Temperature</th>
                           <th>CO2</th>
                           <th>Blood Pressure</th>
                           <th>Oxygen Saturation</th>
                           <th>Heart Rate</th>
                           <th>SO2</th>
                           <th>Glucose</th>
                           <th>Base Excess</th>
                           <th>Respiratory Rate</th>
                           <th>ECG</th>
                           <th>PH</th>
                           <th>PO2</th>
                           <th>Chief complain</th>
                           <th>CTAS score</th>
                           <th>Covid19</th>
                          
                    
                      </tr>
                   
                      <% while(result.next()) { %>
                      <tr>

                        <td><%out.print(rowNumber);%></td>
                        
                        <td><%= result.getString("PatintID")%></td>

                        <td><%= result.getString("HCO3")%></td>

                        <td><%= result.getString("Temperature")%></td>

                        <td><%= result.getString("CO2")%></td>

                        <td><%= result.getString("BloodPressure")%></td>

                        <td><%= result.getString("OxygenSaturation")%></td>

                        <td><%= result.getString("HeartRate")%></td>

                        <td><%= result.getString("SO2")%></td>

                        <td><%= result.getString("Glucose")%></td>

                        <td><%= result.getString("BaseExcess")%></td>

                        <td><%= result.getString("RespiratoryRate")%></td>

                        <td><%= result.getString("ECG")%></td>

                        <td><%= result.getString("PH")%></td>

                        <td><%= result.getString("PO2")%></td>

                        <td><%= result.getString("Chiefcomplain")%></td>

                        <td><%= result.getString("CTASscore")%></td>

                        <td><%= result.getString("COVIDStatus")%></td>
                    
                        
                        <% rowNumber++; %>
                     </tr>
                     
                     <% }%>
                      
                      
                    
                </tbody>
            </table>
                     </div>
    </body>
</html>
