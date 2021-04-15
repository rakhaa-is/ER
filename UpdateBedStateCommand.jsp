<%-- 
    Document   : UpdateBedStateCommand
    Created on : 15/04/2021, 03:37:45 م
    Author     : rakha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String ID = request.getParameter("ID");
            String roomid = request.getParameter("RoomID");
            String state = request.getParameter("state");
            int roomId = Integer.parseInt(roomid);
            int id = Integer.parseInt(ID);
            DB.DB_Connection beds = new DB.DB_Connection();
            int isAdded = beds.updateBedInfo(id,state,roomId);
            out.print(isAdded);
            if (isAdded > 0) {
        %>
        <script>
            alert("this Bed state is updated successfully ");
            window.location = "update_bed_state.jsp";
        </script>
        <%
            } else {
                out.print("Error");
                beds.close();
            }
        %> 

    </body>
</html>
