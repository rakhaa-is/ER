<%-- 
    Document   : welcome_page
    Created on : 26/03/2021, 09:08:08 م
    Author     : rakha
--%>

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
    </head>
    <body>
        
        <h1 style="color:white; text-align:center ">Welcome to ER system</h1>
        <table style="margin-right:auto; margin-left:auto; width: 70%;">
            <thead>
                <tr>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
              <tbody>
                <tr>
                    <th><br><a href="create_account.jsp"style="font-size:1.3em; color: white; text-align: center;" ><br><img src="sign_up.png" alt="" height="100" width="100"></a><br></th>
                    <th style="text-align: center"><br>
                        <a style="font-size:1.3em; color: white;" href="log_in.jsp" ><br><img src="log_in.png"  alt="" height="100" width="100"></a><br></th>
                </tr>
                <tr>
                    <th>Create Account</th>
                    <th>Log In</th>
                </tr>
            </tbody>
        </table>
    </body>
</html>
