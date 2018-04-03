<%@ page import="java.sql.*"%>
<html>
<head>
<script language="javascript" src="validation.js">

</script>
</head>
<BODY background="./images/Back.jpg">
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","phs","phs");
PreparedStatement pst=con.prepareStatement("select count(*) from patient_table");
ResultSet rs=pst.executeQuery();
rs.next();
int id=rs.getInt(1);
%>
<h3><center>Patient Registration Form</center></h3>
<form action="clerk_add_patient1.jsp" onsubmit="return add_patient(this)">
<table align="center">
	<tr>
		<td>Patient Id:</td>
		<td><input type="text" name="p_id" value="<%=id+1%>" readonly></td>
	</tr>
	<tr>
		<td>Patient name:</td>
		<td><input type="text" name="p_name"></td>
	</tr>
	<tr>
		<td>Age:</td>
		<td><input type="text" name="p_age"></td>
	</tr>
	<tr>
		<td>Gender:</td>
		<td><input type="radio" name="p_gender" value="male" checked>male<input type="radio" name="p_gender" value="female">female</td>
	</tr>
	<tr>
		<td>Weight:</td>
		<td><input type="text" name="p_weight"></td>
	</tr>
	<tr>
		<td>City/Village:</td>
		<td><input type="text" name="p_city"></td>
	</tr>
	<tr>
		<td>Blood Group:</td>
		<td><input type="text" name="p_bg"></td>
	</tr>
	<tr>
		<td>Percent:</td>
		<td><input type="text" name="p_precent" size="5">%</td>
	</tr>
	
	<tr>
		<td>Insurance Id:</td>
		<td><input type="text" name="p_insurance"></td>
	</tr>
	<tr>
		<td>Admition Date:</td>
		<td><input type="text" name="p_date"></td>
	</tr>
	<tr>
		<td>Contact No:</td>
		<td><input type="text" name="p_contact"></td>
	</tr>
	<tr>
		<td>Email-id:</td>
		<td><input type="text" name="p_email"></td>
	</tr>
	<tr>
		<td>Problem:</td>
		<td><input type="text" name="p_problem"></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit" value="register"></td>
	</tr>
</table>
</form>
</body>
</html>