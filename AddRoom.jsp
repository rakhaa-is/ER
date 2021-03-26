<%-- 
    Document   : Rooms
    Created on : 15-Mar-2021, 00:37:49
    Author     : amals
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add room</title>
    </head>
    <style>
         body {
  background-image: url("Back3.png");
   background-attachment:fixed;
  background-size:cover;
}   
    </style>
    <body>
        <h1 style="text-align:center; color:white">Fill the form</h1>
        
         <form name="Addroom" action="newRoom.jsp" method="POST">         
             <table style="margin-right:auto; margin-left:auto; color:white" border="0" cellspacing="10">
                 <tbody>
                     <tr>
                         <td> Room ID </td>
                         <td><input type="text" name="ID" value="" size="10" /></td>
                     </tr>
                     <tr>
                         <td>Room Name </td>
                         <td><input type="text" name="name" value="" size="10" /></td>
                     </tr>
                     <tr>
                         <td> Number of beds </td>
                         <td><input type="text" name="numberOfBeds" value="" size="10" /></td>
                     </tr>
                     <tr>
                         <td><input type="submit" value="Add" name="AddRoom" /> </td>
                     </tr>
                 </tbody>
             </table>
        </form>
        
    </body>
</html>
