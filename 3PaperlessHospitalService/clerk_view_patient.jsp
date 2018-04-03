<%@ page import="java.sql.*"%>
<html>
<BODY background="./images/Back.jpg">
<font color="blue">
<h2>View patient details</h2></font>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","phs","phs");
PreparedStatement pst=con.prepareStatement("select * from patient_table where stage=0");
ResultSet rs=pst.executeQuery();
%>
<table width="100%">
<tr style="background-color:green">
<th>Patient Id</th>
<th>Patient Name</th>
<th>Age</th>
<th>Gender</th>
<th>Weight</th>
<th>City</th>
<th>Blood Group</th>
<th>Blood Percent</th>
<th>Admission Date</th>
<th>Insurance Id</th>
<th>Contact No</th>
<th>Email Id</th>
<th>Problem</th>
</tr>
<%
while(rs.next())
{
%>
<tr>
<td><%=rs.getInt(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getInt(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getDouble(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getInt(8)%></td>
<td><%=rs.getString(9)%></td>
<td><%=rs.getInt(10)%></td>
<td><%=rs.getString(11)%></td>
<td><%=rs.getString(12)%></td>
<td><%=rs.getString(13)%></td>
</tr>
<%
}
%>
</body>
</html>