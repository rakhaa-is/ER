


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
        <title>Show Nurse</title>
    </head>
    <body>
             <%
            String doctorID = request.getParameter("id");
            int id = Integer.parseInt(doctorID);
            DB.DB_Connection patient = new DB.DB_Connection();
            ResultSet result = patient.getPatientInfo();
            ResultSet result1;
             ResultSet result2;
            int rowNumber = 1;
        %>
        
        
           <div align="center">
               <br><br>
                   <table>
                       <tbody>
                        <tr>
                           
                    <td style="background-color:#659EC7; color:white; text-align: center" > <br><a style="font-size:1.1em; color: white;" href="DisplayPatientInfoDependOnPriority.jsp?priority=<%=1%>&id=<%=id%>"><br>Prioriy 1</td>
                    <td style="background-color:#659EC7; color:white; text-align: center" > <br><a style="font-size:1.1em; color: white;" href="DisplayPatientInfoDependOnPriority.jsp?priority=<%=2%>&id=<%=id%>"><br>Prioriy 2</td>
                    <td style="background-color:#659EC7; color:white; text-align: center" > <br><a style="font-size:1.1em; color: white;" href="DisplayPatientInfoDependOnPriority.jsp?priority=<%=3%>&id=<%=id%>"><br>Prioriy 3</td>
                    <td style="background-color:#659EC7; color:white; text-align: center" > <br><a style="font-size:1.1em; color: white;" href="DisplayPatientInfoDependOnPriority.jsp?priority=<%=4%>&id=<%=id%>"><br>Prioriy 4</td>
                    <td style="background-color:#659EC7; color:white; text-align: center" > <br><a style="font-size:1.1em; color: white;" href="DisplayPatientInfoDependOnPriority.jsp?priority=<%=5%>&id=<%=id%>"><br>Prioriy 5</td>
                  
                        </tr>
                        </tbody>
                
                </table>
                      </div>



              <div align="center">
              <table border = 1>
                  <tbody>
                      <tr>
                           <th>No.</td>
                          <th>ID</td>
                          <th>English Name</th>
                          <th>Arrival Time</th>
                          <th>Phone Number</th>
                          <th>Gender</th>
                          <th>Date Of Birth</th>
                           <th>Language</th>
                           <th>Health Status</th>
                            <th>Team Name</th>
                        <th>Bed ID</th>
                    
                      </tr>
                      <% while(result.next()) { %>
                      <tr>
                          
                          <td><%out.print(rowNumber);%></td>
                         
                         <% String ID = result.getString("ID");
                         result1 = patient.getPatientTeam(Integer.parseInt(ID));
                          result2 = patient.getPatientBed(Integer.parseInt(ID));
                         %>
                          
                        <td><%out.print(ID);%></td>
                  
                          <td><%= result.getString("englishfirstname")%> <%= result.getString("englishsecondname")%> <%= result.getString("englishlastname")%></td>
                     
                           <td><%= result.getString("time_stamp")%></td>
                           
                          <td><%= result.getString("phonenumber")%></td>
                          
                          <td><%= result.getString("gender")%></td>
                          
                          <td><%= result.getString("DateOfBirth")%></td>
                          
                          <td><%= result.getString("Language")%></td>
                          
                         
                          
                          <td><a href="DisplayPatientHealthStatus.jsp?id=<%=ID%>">Patient Main Traiage Information</a></td>
                          <td>
                            <a href="AssignPatient.jsp?id=<%=ID%>&doctorID=<%=doctorID%>"> Update Team </a>
                            <%if (result1.next()) {%>
                        <%= result1.getString("TeamName")%>
                        </td>
                        <%}%>
                       
                        <td><a href="AssignPatientBedForm.jsp?patientID=<%=ID%>&doctorID=<%=doctorID%>"> Update Bed </a>
                         <%if (result2.next()){%>
                         <%= result1.getString("bedID")%>
                        </td>
                        <%}%>
                          <% rowNumber++; %>
                      </tr>
                      <% } %>
                      
                      
                 
                  </tbody>
              </table>
                      </div>
    </body>
</html>
