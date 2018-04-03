<BODY background="./images/Back.jpg">
<%@ page import="java.sql.*"%>
<%
int id=Integer.parseInt(request.getParameter("PatientId"));
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","phs","phs");
PreparedStatement pst=con.prepareStatement("update patient_table set stage=1 where patient_id=?");
pst.setInt(1,id);
pst.executeUpdate();
out.println("<h3><center>Patient Details successfully sent to Admin</center></h3>");
%>
</body>