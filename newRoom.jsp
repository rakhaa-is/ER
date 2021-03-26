<%-- 
    Document   : new_room
    Created on : 19-Mar-2021, 14:38:02
    Author     : amals
--%>

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
            String RoomId = request.getParameter("ID");
            int ID = Integer.parseInt(RoomId);
            String RoomName = request.getParameter("name");
            String numOfBed = request.getParameter("numberOfBeds");
            int beds= Integer.parseInt(numOfBed);
            Controller.ER_Controller conn = new Controller.ER_Controller();
            boolean isAdded = conn.addRooms(ID , beds , RoomName );
            if(isAdded){
                out.print("Room is successfully Added!");
            } else{
                out.print("Error");
            }
            %>
            
             <a href="Rooms Page.jsp" style="color:white"> Back </a>
          
    </body>
</html>
