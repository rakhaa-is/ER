<%-- 
    Document   : updateBedsForm
    Created on : 01-Apr-2021, 00:25:21
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
        <title>Beds Edit</title>
    </head>
    <body>
        <%
            String ID = request.getParameter("ID");
            DB.DB_Connection user = new DB.DB_Connection();
            ResultSet result = user.getBed(Integer.parseInt(ID));
            if(result.next()){
                String state = result.getString("state");
                int RoomID = result.getInt("RoomID");
            %>
          
            
            <form action="updateBedsCommand.jsp?ID=<%=ID%>" method="POST">
                 <table style="margin-right:auto; margin-left:auto; color:white" border="0" cellspacing="10">
                    <tbody>
                        <tr>
                            <td> Bed ID </td>
                            <td><input type="text" name="ID" value="<%=ID%>" size="20" /></td>
                        </tr>
                        <tr>
                            <td> Bed state </td>
                            <td><input type="text" name="state" value="<%=state%>" size="20" /></td>
                        </tr>
                        <tr>
                            <td> Room ID </td>
                            <td><input type="text" name="RoomID" value="<%=RoomID%>" size="20" /></td>
                    
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
