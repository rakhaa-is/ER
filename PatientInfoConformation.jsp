
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Regestier Patient Information</title>
    </head>
    <body>
        <h1>Regestier Patient Information</h1>
        <form name="AddPatientInfo" action="displayPatientForm.jsp" method="POST">
            <table border="0">

                <tbody>
                    <tr>
                        <td>Arabic Full Name</td>
                        <td><input type="text" name="ArabicName" value="" size="30" /></td>
                    </tr>
                    <tr>
                        <td>English Full Name</td>
                        <td><input type="text" name="EnglishName" value="" size="30" /></td>
                    </tr>
                    <tr>
                        <td>ID</td>
                        <td><input type="text" name="ID" value="" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="Email" name="Email" value="" size="30" /></td>
                    </tr>
                    <tr>
                        <td>phonenumber</td>
                        <td><input type="text" name="phonenumber" value="" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Date of birth</td>
                        <td><input type="text" name="DateOfBirth" value="" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input type="text" name="address" value="" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Marital Status</td>
                        <td><input type="text" name="MaritalStatus" value="" size="30" /></td>
                    </tr>

                    <tr>
                        <td>Gender</td>
                        <td><select name="gender">
                                <option>male</option>
                                <option>Female</option>
                            </select></td>
                    </tr>

                    <tr>
                        <td>Religion</td>
                        <td><select name="Religion">
                                <option>Muslim</option>
                                <option>Other</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Language</td>
                        <td><select name="Language">
                                <option>Arabic</option>
                                <option>Other</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Nationality</td>
                        <td><select name="Nationality">
                                <option>Saudi</option>
                                <option>not Saudi</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Add" name="Add"  onclick="myFunction()"/> </td>
                        <td><input type="reset" value="Clear" name="Clear" /></td>
                    </tr>
                </tbody>
                <script>

                    function myFunction() {

                        alert("The patient has been successfully added");

                    }
                </script>
            </table>
        </form>

    </body>
</html>

