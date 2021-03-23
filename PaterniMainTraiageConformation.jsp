

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Regestier Patient Main Traiage</title>

    </head>
    <body>
        <h1>Regestier Patient Main Traiage</h1>
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

    </body>
</html>
