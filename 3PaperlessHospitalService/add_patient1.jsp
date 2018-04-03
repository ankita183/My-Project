 <%@ page import="java.sql.*"%>
 <html>
 <body background="./images/Back.jpg">
 <head>
 </head>
<%
int pId=Integer.parseInt(request.getParameter("p_id"));
String dept=request.getParameter("dept_name");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","phs","phs");
PreparedStatement pst=con.prepareStatement("select d.doctor_name from doctor_table d,dept_table dept where dept.dept_id=d.dept_id and dept.dept_name=?");
pst.setString(1,dept);
ResultSet rs=pst.executeQuery();
%>

<form action="add_patient2.jsp">
<table align="center">
	<tr>
		<td>Patient Id:</td>
		<td><input type="text" name="p_id" value="<%=pId%>" readonly></td>
	</tr>

	<tr>
		<td>Department:</td>
		<td><input type="text" name="p_dept" value="<%=dept%>" readonly></td>
	</tr>

<tr>
<td>
Doctor Name:
</td>
<td>
<select name="doctor_name">
<option value="">--select--</option>
<%
while(rs.next())
{
%>
<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
<%
}
%>
</select>
</td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="send">
</td>
</tr>
</table>
</form>
</body>
</html>
