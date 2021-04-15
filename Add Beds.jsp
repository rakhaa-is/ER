<%-- 
    Document   : add_beds
    Created on : 26/03/2021, 03:09:07 م
    Author     : rakha
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
    
    <%
        String roomID = request.getParameter("ID"); 

        %>
    <body>
        <h1>List of Beds</h1>
        <form name="addbed" action="newBeds.jsp">
            
            <table border="1">
                <tbody>
                    <tr>
                    <tr>
                        <td>Room ID</td>
                        <td><input type="text" name="RoomID" value="<%=roomID%>" size="10"/></td>
                      
                    </tr>
                        <td>ID </td>
                        <td><input type="text" name="ID" value="" size="10" /></td>
                       
                    </tr>
                    <tr>
                        <td>State</td>
                        <td><input type="text" name="State" value="" size="10" /></td>
                         
                    </tr>
                  
                </tbody>
            </table>
            <input type="submit" value="Add" name="Addbed" />
            
        </form>
        
        
    </body>
</html>
