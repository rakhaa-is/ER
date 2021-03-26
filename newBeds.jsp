<%-- 
    Document   : newBeds
    Created on : 19-Mar-2021, 20:29:02
    Author     : amals
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
            String bedID = request.getParameter("ID");
            int ID = Integer.parseInt(bedID);
            String state = request.getParameter("State");
            String roomID = request.getParameter("RoomID");
            int Roomid= Integer.parseInt(roomID);
            Controller.ER_Controller conn = new Controller.ER_Controller();
            boolean isAdded = conn.addBeds(ID , state , Roomid );
            if(isAdded){
                out.print("Bed is successfully Added!");
            } else{
                out.print("Error");
            }
            %>
            
             <a href="Add Beds.jsp" style="color:white"> Back </a>
          
    </body>
</html>
