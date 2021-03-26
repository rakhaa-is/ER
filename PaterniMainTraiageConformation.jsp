<%-- 
    Document   : PaterniMainTraiageConformation
    Created on : 26-Mar-2021, 11:30:32
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
        <title>Register Patient Main Triage</title>

    </head>
    <body>
        
        
        <table style="background-color: white; margin-right:auto; margin-left:auto;">
            <tbody>
                <tr>
                    <td>
                      
                        <h1>Register Patient Main Triage</h1>
                        <br>
        <form name="AddPatientMainTeriage" action="displayPatientForm.jsp" method="POST">
            <table border="0">

                <tbody>
                    <tr>
                        <td>Patient ID</td>
                        <td><input type="text" name="PatintID" value="" size="30" /></td>
                    </tr>
                    <tr>
                        <td>HCO3</td>
                        <td><input type="text" name="HCO3" value="" size="30" /></td>
                    </tr> 
                    <tr>
                        <td>Temperature</td>
                        <td><input type="text" name="Temperature" value="" size="30" /></td>
                    </tr> 
                    <tr>
                        <td>CO2</td>
                        <td><input type="text" name="CO2" value="" size="30" /></td>
                    </tr> 
                    <tr>
                        <td>Blood Pressure</td>
                        <td><input type="text" name="BloodPressure" value="" size="30" /></td>
                    </tr> 
                    <tr>
                        <td>Oxygen Saturation</td>
                        <td><input type="text" name="OxygenSaturation" value="" size="30" /></td>
                    </tr> 
                    <tr>
                        <td>Heart Rate</td>
                        <td><input type="text" name="HeartRate" value="" size="30" /></td>
                    </tr> 
                    <tr>
                        <td>SO2</td>
                        <td><input type="text" name="SO2" value="" size="30" /></td>
                    </tr> 
                    <tr>
                        <td>Glucose</td>
                        <td><input type="text" name="Glucose" value="" size="30" /></td>
                    </tr> 
                    <tr>
                        <td>Base Excess</td>
                        <td><input type="text" name="BaseExcess" value="" size="30" /></td>
                    </tr> 
                    <tr>
                        <td>Respiratory Rate</td>
                        <td><input type="text" name="RespiratoryRate" value="" size="30" /></td>
                    </tr> 
                    <tr>
                        <td>ECG</td>
                        <td><input type="text" name="ECG" value="" size="30" /></td>
                    </tr> 
                    <tr>
                        <td>PH</td>
                        <td><input type="text" name="PH" value="" size="30" /></td>
                    </tr> 
                    <tr>
                        <td>PO2</td>
                        <td><input type="text" name="PO2" value="" size="30" /></td>
                    </tr>                       <tr>
                        <td>Chiefcomplain</td>
                        <td><input type="text" name="Chiefcomplain" value="" size="30" /></td>
                    </tr> 
                    <tr>
                        <td>CTAS score</td>
                        <td><input type="text" name="CTASscore" value="" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Is it Covid19 patient?</td>
                        <td><select name="COVIDStatus">
                                <option>No</option>
                                <option>Yes</option>
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
