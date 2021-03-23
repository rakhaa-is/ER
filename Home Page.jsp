<%-- 
    Document   : Home Page
    Created on : 15-Mar-2021, 00:59:41
    Author     : amals
--%>

// Amal Sufar 
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link href="/HomePage_Style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <ul>
            <li><a href="Home Page.jsp">Home</a></li>
            <li><a href="Doctors Page.jsp">Doctors</a></li>
            <li><a href="Patient Page.jsp">Patients</a></li>
            <li><a href="Rooms Page.jsp">Rooms</a></li>
            <li style="float:right; margin-right:20px;"><a href="form.html">Sign in</a></li>
         <li style="float:right; margin-right:-20px;"><img  src="3201525-200.png" width="55" height="55"></li>
  
        </ul>
        
        <h1 style="color:white; text-align:center ">Welcome to ER system How we can help ?</h1>
        <table style="margin-right:auto; margin-left:auto; width: 70%;">
            <thead>
                <tr>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td style="background-color:navy; color:white; text-align: center" ><img src="Patient-form.png" alt="" ><br>  Patient Form  </td>
                    <td style="background-color:lightgreen; color:white; text-align: center" >
                        <img src="Medicl-Form.png" alt="" ><br>  Medical History  </td>
                </tr>
                <tr>
                    <td style="background-color:darkslategray; text-align: center"> <img src="Room-hospitall.png" alt="" >
                        <br><a style="font-size:1.3em; color: white;" href="Rooms Page.jsp">Rooms</a><br></td>
                    
                    <td style="background-color:lightblue; text-align: center"><img src="Beds.png" alt="" ><br><a style="font-size:1.3em; color: white;" href="Add Beds.jsp">Beds</a><br><br></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
