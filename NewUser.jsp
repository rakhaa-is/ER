
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        
            <%
            String fName = request.getParameter("fName");
            String sName = request.getParameter("sName");
            String lName = request.getParameter("lName");
            String ID = request.getParameter("ID");
            String email = request.getParameter("Email");
            String password = request.getParameter("password");
            String phoneNumber = request.getParameter("PhoneNumber");
            String role = request.getParameter("role");
            DB.DB_Connection conn = new DB.DB_Connection();
            boolean isAdded = conn.createAccount(role, fName, sName, lName, email, ID, password, phoneNumber);
            if(isAdded){
                %>
                            <script>
    
                        alert("The "+ fName + " " + lName + " has been successfully added as a " + role);
                    
                </script>
                <%
            } else{
                out.print("Error");
            }
            %>
          
    </body>
</html>
