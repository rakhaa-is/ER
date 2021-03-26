<%-- 
    Document   : PatientInfoConformation
    Created on : 26-Mar-2021, 12:01:51
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
        <title>JSP Page</title>
    </head>
    
      <body>
          
           <table style="background-color: white; margin-right:auto; margin-left:auto;">
            <tbody>
                <tr>
                    <td>
                      
                        <h1>Register Patient Information</h1>
                        <br>
          
        
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
                        
                        
                        <br>                 
                    </td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
