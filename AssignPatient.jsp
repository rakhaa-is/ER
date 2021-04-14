<%-- 
    Document   : AssignPatient
    Created on : 03/04/2021, 03:01:38 م
    Author     : haneen
--%>

<%@page import="javax.script.Invocable"%>
<%@page import="javax.script.ScriptEngine"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.script.ScriptEngineManager"%>
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
            String patientID = request.getParameter("id");
            int pID = Integer.parseInt(patientID);
            String doctorID = request.getParameter("doctorID");
            int dID = Integer.parseInt(doctorID);
        %>
        <table style="background-color: white; margin-right:auto; margin-left:auto;">
            <tbody>
                <tr>
                    <td>
                        <h1>Assign Patient to Team</h1>
                        <br>
                        <form name="assignToTeam" action="AssignPatientToTeam.jsp?id=<%=pID%>&doctorID=<%=dID%>" method="POST">
                            <table border="0">
                                <tbody>

                                    <tr>
                                        <td>Doctor ID</td>
                                        <td><%=dID%></td>
                                    </tr>
                                    <tr>
                                        <td>Patient ID</td>
                                        <td><%=pID%></td>
                                    </tr>
                                    <tr>
                                        <td>Team Name</td>
                                        <td><input type="text" name="TeamName" value="" size="30" /></td>
                                    </tr>

                                    <tr>
                                        <td><input type="submit" value="Add" name="Add"/> </td>
                                        <td><input type="reset" value="Clear" name="Clear" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                        <br>                 
                    </td>
                </tr>
                
</tbody>
</table>                
<br>                 
</td>
</tr>
</tbody>
</body>
</html>
