<%-- 
    Document   : CreateAccount
    Created on : 18/03/2021, 02:55:20 م
    Author     : NUHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Account</title>
    </head>
    <body>
        <form name="CreateAccounts" action="display.jsp" method="POST">
            <table border="0">

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
                                <option>Patient</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Create" name="Create" /> </td>
                        <td><input type="reset" value="Clear" name="Clear" /></td>
                    </tr>
                </tbody>
            </table>
        </form>

    </body>
</html>
