<%-- 
    Document   : updateRoomForm
    Created on : 30-Mar-2021, 18:17:55
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
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String ID = request.getParameter("ID");
            DB.DB_Connection user = new DB.DB_Connection();
            ResultSet result = user.getRoom(Integer.parseInt(ID));
            if(result.next()){
                String numBeds = result.getString("numberOfBeds");
                String name = result.getString("name");
            %>
            <form action="updateRoomComand.jsp?ID=<%=ID%>" method="POST">
                 <table style="margin-right:auto; margin-left:auto; color:white" border="0" cellspacing="10">
                    <tbody>
                        <tr>
                            <td>Room ID </td>
                            <td><input type="text" name="ID" value="<%=ID%>" size="20" /></td>
                        </tr>
                        <tr>
                            <td>Number of Beds </td>
                            <td><input type="text" name="numberOfBeds" value="<%=numBeds%>" size="20" /></td>
                        </tr>
                        <tr>
                            <td>Room Name </td>
                            <td><input type="text" name="name" value="<%=name%>" size="20" /></td>
                    
                        </tr>
                        <tr>
                           <td><input type="submit" value="delete" name="delete" onclick=" return ConfirmFunction(); false"   /></td>  
                           <td> <input type="submit" value="update" name="update" onclick=" return ConfirmFunction(); false"/></td>
                           <td> <input type="reset" value="Clear" name="Clear" /></td>
                        </tr>
                    </tbody>
                </table>
            </form>
            <%}%>
           
            <script>
     function ConfirmFunction(){
	 
	 var r = confirm("Are you sure you want to submit changes?");
	
			if (r == true) {
                       
			return true;
                        }else{
                        alert("Your Request failed to send!");
                        
                        return false;
                        }
        }
                
                
                </script>
            
    </body>
</html>
