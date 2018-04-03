<%@ page import="java.sql.*"%>
<html>
<body background="./images/Back.jpg">
<%
int id=Integer.parseInt(request.getParameter("p_id"));
String dept=request.getParameter("p_dept");
String doctor=request.getParameter("doctor_name");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","phs","phs");
PreparedStatement pst1=con.prepareStatement("select doctor_id from doctor_table where doctor_name=?");
pst1.setString(1,doctor);
ResultSet rs1=pst1.executeQuery();
rs1.next();
int d_id=rs1.getInt(1);
PreparedStatement pst2=con.prepareStatement("insert into assign_doctor values(?,?)");
pst2.setInt(1,id);
pst2.setInt(2,d_id);
pst2.executeUpdate();

PreparedStatement pst=con.prepareStatement("update patient_table set stage=2 where patient_id=?");
pst.setInt(1,id);
pst.executeUpdate();
out.println("<h3><center>Patient successfully sent to Doctor </center></h3>");
%>
<br><a href="admin_send_patient.jsp">Back</a>
</body>
</html>