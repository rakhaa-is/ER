<%-- 
    Document   : displayBedsToNurces
    Created on : 15/04/2021, 02:57:54 م
    Author     : rakha
--%>

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
        <title>Emergency Room</title>
    </head>
    <body>
      
       
            
             <%
            String roomID = request.getParameter("ID");
            DB.DB_Connection beds = new DB.DB_Connection();
            ResultSet result = beds.getBedsInRoom(Integer.parseInt(roomID));
            %>
            
           
            
            
          <table style="margin-right:auto; margin-left:auto; background-color:white; width: 95%; border-collapse: collapse;" border="2" width="2">
                   
                    <thead>
                    <tr>
                        <th> Bed ID </th>
                        <th> State </th>
                        <th> Room ID </th>
                    </tr>
                     </thead>
                     <tbody>
                      <%while(result.next()){%>
                      <tr>
                          <% int id = result.getInt("ID");%>
                          <td><%out.print(id);%></td>
                          <% String state = result.getString("state");%>
                          <td><%out.print(state);%></td>
                          <% int room = result.getInt("RoomID");%>
                          <td><%out.print(room);%></td>
                      </tr>
                      <%}%>                 
                     </tbody>
              
                </table>                 
    </body>
</html>
