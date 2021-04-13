<%-- 
    Document   : AddPatientMainTraiage
    Created on : 09-Apr-2021, 12:40:16
    Author     : amals
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%
            
            String ID = request.getParameter("PatintID");
            int PatintID = Integer.parseInt(ID);
            String HCO3 = request.getParameter("HCO3");
            String Temperature = request.getParameter("Temperature");
            String CO2 = request.getParameter("CO2");
            String BloodPressure = request.getParameter("BloodPressure");
            String OxygenSaturation = request.getParameter("OxygenSaturation");
            String HeartRate = request.getParameter("HeartRate");
            String SO2 = request.getParameter("SO2");
            String Glucose = request.getParameter("Glucose");
            String BaseExcess = request.getParameter("BaseExcess");
            String RespiratoryRate = request.getParameter("RespiratoryRate");
            String ECG = request.getParameter("ECG");
            String PH = request.getParameter("PH");
            String PO2 = request.getParameter("PO2");
            String Chiefcomplain = request.getParameter("Chiefcomplain");
            String CTASscore = request.getParameter("CTASscore");
            String COVIDStatus = request.getParameter("COVIDStatus");
            DB.DB_Connection conn = new DB.DB_Connection();
            boolean isAdded = conn.addMainTraiage(PatintID , HCO3 , Temperature , CO2 , BloodPressure , OxygenSaturation , HeartRate , SO2 ,
            Glucose , BaseExcess , RespiratoryRate , ECG , PH , PO2 , Chiefcomplain , CTASscore , COVIDStatus );
            if(isAdded){
             out.print("Added successfully");
            } else{
                out.print("Error");
            }
            %>
            
            <a href="DisplayAllPatientHealthStatus.jsp" style="color:white"> Back </a>
       
    </body>
</html>
