<%-- 
    Document   : UpdateBedStateCommand
    Created on : 14/04/2021, 06:40:40 ص
    Author     : haneen
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
            String ID = request.getParameter("id");
            String roomid = request.getParameter("room");
            String state = request.getParameter("state");
            int roomId = Integer.parseInt(roomid);
            int id = Integer.parseInt(ID);
            DB.DB_Connection beds = new DB.DB_Connection();
            int isAdded = beds.updateBedState(id,state,roomId);
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
