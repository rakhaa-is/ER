<%-- 
    Document   : CreateAccount
    Created on : 26-Mar-2021, 12:10:03
    Author     : amals
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
    </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Account</title>
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
                      
                        <h1>Welcome to ER system, Please sign in first.</h1>
                        <br>
        <form name="CreateAccounts" action="Home Page.jsp" method="POST">
            <table style=" margin-right:auto; margin-left:auto;">

                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fName" value="" size="20" /></td>
                    </tr>
					<tr>
                        <td>Second Name</td>
                        <td><input type="text" name="sName" value="" size="20" /></td>
                    </tr>
					<tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lName" value="" size="20" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="Email" value="" size="30" /></td>
                    </tr>
					    <tr>
                        <td>ID</td>
                        <td><input type="number" name="ID" value="" size="10" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" size="8" /></td>
                    </tr>
                    <tr>
                        <td>Confirm Password</td>
                        <td><input type="password" name="password" value="" size="8" /></td>
                    </tr>
                    <tr>
                        <td>Role</td>
                        <td><select name="role">
                                <option>Choose</option>
                                <option>Doctor</option>
                                <option>Nurse</option>
                                <option>Admin</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Create" name="Create" /> </td>
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
