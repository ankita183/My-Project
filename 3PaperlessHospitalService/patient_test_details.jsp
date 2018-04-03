<%@ page import="java.sql.*" %>
<html>
<%
double total=0.0;
int patient_id=Integer.parseInt(request.getParameter("id"));
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","phs","phs");
PreparedStatement pst=con.prepareStatement("select t.test_id,ti.test,ti.cost from patient_table p,tests_table t,test_info_table ti where p.patient_id=? and t.patient_id=p.patient_id and ti.test_info_id=t.test_info_id");
pst.setInt(1,patient_id);
ResultSet rs=pst.executeQuery();

PreparedStatement pst1=con.prepareStatement("select patient_id,patient_name,insurance_id from patient_table where patient_id=? ");
pst1.setInt(1,patient_id);
ResultSet rs1=pst1.executeQuery();
rs1.next();
%>
<BODY background="./images/Back.jpg">
<center><h2><u>Patient Test Details</u></h2></center> 
<TABLE BORDER="0" CELLSPACING="2"  CELLPADDING="2" >
<tr><td>Patient_Id:</td><td><%=rs1.getInt(1)%></td></tr>
<tr><td>Patient_Name:</td><td><%=rs1.getString(2)%></td></tr>
<tr><td>Insurance_Id:</td><td><%=rs1.getInt(3)%></td>
</tr>
</table>
<center>
<table width="60%">
<tr>
<th>Test_id</th>
<th>Test</th>
<th>Cost</th>
</tr>
<%
while(rs.next())
{
%>
<tr>
<td align="center"><%=rs.getInt(1)%></td>
<td align="center"><%=rs.getString(2)%></td>
<td align="center"><%=rs.getDouble(3)%></td>
</tr>
<%
	total=total+rs.getDouble(3);
}
%>
<tr><td></td><td></td><td align="center">Total:<%=total%></td></tr>
</table>
</center>
</body>
</html>