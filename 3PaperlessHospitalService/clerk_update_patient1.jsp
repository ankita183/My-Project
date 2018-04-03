<BODY background="./images/Back.jpg">
<%@ page import="java.sql.*" %>
<%
int Patient_id=Integer.parseInt(request.getParameter("patient_id"));
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","phs","phs");
PreparedStatement pst=con.prepareStatement("select * from patient_table where patient_id=?");
pst.setInt(1,Patient_id);
ResultSet rs=pst.executeQuery();
rs.next();
%>
<form action="clerk_update_patient2.jsp">
<center><font color="blue"><h2>Update patient datails</h2></font>
<table align="center">
	<tr>
		<td><font color="blue">Patient Id:</font></td>
		<td><input type="text" name="p_id" value="<%=rs.getInt(1)%>" readonly></td>
	</tr>
	<tr>
		<td><font color="blue">Patient name:</font></td>
		<td><input type="text" name="p_name" value="<%=rs.getString(2)%>"></td>
	</tr>
	<tr>
		<td><font color="blue">Age:</font></td>
		<td><input type="text" name="p_age" value="<%=rs.getInt(3)%>"></td>
	</tr>
	<tr>
		<td><font color="blue">Gender:</font></td>
		<td><input type="radio" name="p_gender" value="male" checked><font color="blue">male</font><input type="radio" name="p_gender" value="female"><font color="blue">female</font></td>
	</tr>
	<tr>
		<td><font color="blue">Weight:</font></td>
		<td><input type="text" name="p_weight" value="<%=rs.getDouble(5)%>"></td>
	</tr>
	<tr>
		<td><font color="blue">City/Village:</font></td>
		<td><input type="text" name="p_city" value="<%=rs.getString(6)%>"></td>
	</tr>
	<tr>
		<td><font color="blue">Blood Group:</font></td>
		<td><input type="text" name="p_bg" value="<%=rs.getString(7)%>"></td>
	</tr>
	<tr>
		<td><font color="blue">Percent:<font></td>
		<td><input type="text" name="p_precent" size="5" value="<%=rs.getInt(8)%>">%</td>
	</tr>
	<tr>
		<td><font color="blue">Admition Date:</font></td>
		<td><input type="text" name="p_date" value="<%=rs.getString(9)%>"></td>
	</tr>
	
	<tr>
		<td><font color="blue">Insurance Id:</font></td>
		<td><input type="text" name="p_insurance" value="<%=rs.getInt(10)%>"></td>
	</tr>
	
	<tr>
		<td><font color="blue">Contact No:</font></td>
		<td><input type="text" name="p_contact" value="<%=rs.getString(11)%>"></td>
	</tr>
	<tr>
		<td><font color="blue">Email-id:</font></td>
		<td><input type="text" name="p_email" value="<%=rs.getString(12)%>"></td>
	</tr>
	<tr>
		<td><font color="blue">Problem:</font></td>
		<td><input type="text" name="p_problem" value="<%=rs.getString(13)%>"></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit" value="Update"></td>
	</tr>
</table>
</form>
</body>