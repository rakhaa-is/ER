<%-- 
    Document   : update_bed_state
    Created on : 10/04/2021, 01:47:44 ص
    Author     : haneen
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                background-image: url("Back3.png");
                background-attachment:fixed;
                background-size:cover;
            }   
            ul {

                list-style-type: none;
                margin: 0;
                padding: 10px;
                overflow: hidden;
                background-color: white;

            }
            li {
                float: left;
            }
            li a {
                border-radius: 25px;
                display: block;
                color: Black;
                font-size: 20px;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                margin-left: 20px;
            }
            li a:hover {
                background-color: #C5C2C2;
            }

        </style>
    </head>
    <body>
        <%
            DB.DB_Connection rooms = new DB.DB_Connection();
            ResultSet result = rooms.getAllRooms();
        %>          
        <br>
        <br>
        <br>
        <table style="margin-right:auto; margin-left:auto; background-color:white; width: 95%; border-collapse: collapse;" border="2" width="2">
            <thead>
                <tr>
                    <th> Room Name </th>
                    <th> Room ID </th>
                    <th> Number of Beds </th>                      
                </tr>
            </thead>
            <tbody>
                <% while (result.next()) { %>
                <tr>
                    <% String name = result.getString("name");%>
                    <td><a href="update_bed_state_2.jsp?ID=<%=result.getInt("ID")%>"><%out.print(name);%></td>
                    <% String ID = result.getString("ID");%>
                    <td><%out.print(ID);%></td>
                    <% String beds = result.getString("numberOfBeds");%>
                    <td><%out.print(beds);%></td>
                </tr>
                <% } %>                 
            </tbody>
        </table>

    </body>
</html>
