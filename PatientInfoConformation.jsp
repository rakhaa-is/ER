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
          
        <form name="AddPatientInfo" action="AddPatientINfo.jsp" method="POST">
            <table border="0">
                    <tr>
                        <td>Arabic First Name</td>
                        <td><input type="text" name="AFisrtName" value="" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Arabic Second Name</td>
                        <td><input type="text" name="ASecondName" value="" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Arabic Last Name</td>
                        <td><input type="text" name="ALastName" value="" size="30" /></td>
                    </tr>
                    <tr>
                        <td>English First Name</td>
                        <td><input type="text" name="EFirstName" value="" size="30" /></td>
                    </tr>
                    <tr>
                        <td>English Second Name</td>
                        <td><input type="text" name="ESecondName" value="" size="30" /></td>
                    </tr>
                    <tr>
                        <td>English Last Name</td>
                        <td><input type="text" name="ELastName" value="" size="30" /></td>
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
                        <td>Phone number</td>
                        <td><input type="text" name="phonenumber" value="" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Date of birth</td>
                        <td><input type="text" name="DateOfBirth" value="" placeholder="YYYY-MM-DD" size="30" /></td>
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
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select></td>
                    </tr>

                    <tr>
                        <td>Religion</td>
                        <td><select name="Religion">
                                <option value="Muslim">Muslim</option>
                                <option value="Other">Other</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Language</td>
                        <td><select name="Languages">
                                <option value="Arabic">Arabic</option>
                                <option value="Other">Other</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Nationality</td>
                        <td><select name="Nationality">
                                <option value="Saudi">Saudi</option>
                                <option value="Not saudi">Not saudi</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Add" name="Add" /> </td>
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
