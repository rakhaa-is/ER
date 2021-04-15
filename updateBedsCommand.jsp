<%-- 
    Document   : updateBedsCommand
    Created on : 03/04/2021, 09:21:06 م
    Author     : rakha
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
           int roomId = 0;
            
    if (request.getParameter("update") != null) {
              
            String ID = request.getParameter("ID");
            String state = request.getParameter("state");
            String roomid = request.getParameter("RoomID");
            roomId = Integer.parseInt(roomid);
            int id = Integer.parseInt(ID);
            DB.DB_Connection conn = new DB.DB_Connection();
            int isAdded = conn.updateBedInfo(id,state ,roomId);
            if(isAdded>0){
             out.print("Data is successfully updated!");
            }else{
            out.print("changes can not be submitted");
            conn.close();
            }
            
          
        //update button is clicked
        //Do the update action or forward the request to the servlet to do update action 
    } else if (request.getParameter("delete") != null) {
            String RoomId = request.getParameter("ID");
            int ID = Integer.parseInt(RoomId);
            DB.DB_Connection conn = new DB.DB_Connection();
            boolean isDeleted = conn.isBedDeleted(ID);
            if(isDeleted){
             out.print("Bed is successfully deleted!");
            }else{
            out.print("Error");
            conn.close();
            }
          //delete button is clicked
          //Do the delete action or forward the request to the servlet to do delete action
    }
          %>
          
          <a style="color:white" href="AdminBeds.jsp?roomID=<%=roomId%>">Back</a>
    </body>
</html>
