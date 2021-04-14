<%-- 
    Document   : AssignPatentToDB
    Created on : 13/04/2021, 06:23:13 م
    Author     : haneen
--%>

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
        <title>JSP Page</title>
    </head>
    <body>
        <%

            String roomID = request.getParameter("room");
            String patientID = request.getParameter("patientID");
            String doctorID = request.getParameter("doctorID");
            String bedID = request.getParameter("ID");
            
            int BID = Integer.parseInt(bedID);
            int RID = Integer.parseInt(roomID);
            int DID = Integer.parseInt(doctorID);
            int PID = Integer.parseInt(patientID);
            DB.DB_Connection conn = new DB.DB_Connection();
            boolean isAdded = conn.assignPatientToBed(PID, DID, BID, RID);
            if (isAdded) {
        %>
        <script>

            alert("this patient Assigned to bed successfully ");
             window.location= "DisplayPatientInfo.jsp?id=<%=doctorID%>";

        </script>
        <%
            } else {
                out.print("Error");

            }
        %> 
    </body>
</html>
