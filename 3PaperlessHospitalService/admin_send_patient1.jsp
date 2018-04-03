 <%@ page import="java.sql.*"%>
<html>
<head>
</head>
<body background="./images/Back.jpg">
<%
int patientId=Integer.parseInt(request.getParameter("PatientId"));
String value=request.getParameter("value");
System.out.println(value);
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","phs","phs");
PreparedStatement pst1=con.prepareStatement("select dept_name from dept_table");
ResultSet rs1=pst1.executeQuery();
%>
<form action="add_patient1.jsp">
<table align="center">
	<tr>
		<td>Patient Id:</td>
		<td><input type="text" name="p_id" value="<%=patientId%>" readonly></td>
	</tr>
	<tr>
<td>
Dept Name:
</td>
<td>
<select name="dept_name">
<option value="">--select--</option>
<%
String dept_name=null;
while(rs1.next())
{
	dept_name=rs1.getString(1);
%>
<option value="<%=dept_name%>"><%=dept_name%></option>

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