<BODY background="./images/Back.jpg">
<%@ page import="java.sql.*"%>
<%
int id=Integer.parseInt(request.getParameter("id"));
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","phs","phs");
PreparedStatement pst=con.prepareStatement("update patient_table set stage=3 where patient_id=?");
pst.setInt(1,id);
pst.executeUpdate();
out.println("<h3><center>Reports successfully sent to Billing Department</center></h3>");
%>
<br><a href="doctor_send_reports.jsp"><img src="./images/backup.jpg"></a>
</body>