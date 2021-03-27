
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
        <title>Log in</title>
    </head>
    <body>
        <br>
        <br>
        <br>
        <br>
        <table style="background-color: white; margin-right:auto; margin-left:auto;">
            <tbody>
                <tr>
                    <td>
                      
                        <h1>Welcome to ER system, Please log in first.</h1>
                        <br>
        <form name="CreateAccounts" action="Home_page.jsp" method="POST">
            <table style=" margin-right:auto; margin-left:auto;">

                <tbody>
                     <tr>
                        <td>ID</td>
                        <td><input type="text" name="ID" value="" size="10" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" size="8" /></td>
                    </tr>
                   
                    <tr>
                        <td><input type="submit" value="Log in" name="Log in" /> </td>
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
        
    </body>
</html>
