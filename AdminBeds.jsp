<%-- 
    Document   : ModifyBeds
    Created on : 28-Mar-2021, 00:21:41
    Author     : amals
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
      
        
              <br>
              <br>
              <input style="margin-left:40px;" type="button" value="Add new bed" name="AddBed" onclick="location.href='AddBeds.jsp';" />
              <br>
              <br>
 
            
             <%
            String ID = request.getParameter("ID");
            DB.DB_Connection beds = new DB.DB_Connection();
            ResultSet result = beds.getBedsInRoom(Integer.parseInt(ID));
            %>
            
           
            
            
          <table style="margin-right:auto; margin-left:auto; background-color:white; width: 95%; border-collapse: collapse;" border="2" width="2">
                   
                    <thead>
                    <tr>
                        <th> Bed ID </th>
                        <th> State </th>
                        <th> Room ID </th>
                        <th> Edit </th>
                    </tr>
                     </thead>
                     <tbody>
                      <%while(result.next()){%>
                      <tr>
                          <% String id = result.getString("ID");%>
                          <td><%out.print(id);%></td>
                          <% String state = result.getString("state");%>
                          <td><%out.print(state);%></td>
                          <% String room = result.getString("RoomID");%>
                          <td><%out.print(room);%></td>
                          <td><a href="updateBedsForm.jsp?ID=<%=result.getInt("ID")%>">Edit</a></td>
                      </tr>
                      <%}%>                 
                     </tbody>
              
                </table>                 
    </body>
</html>
