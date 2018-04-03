<%@ page import="java.sql.*"%>
<html>
<html>
<script language="javascript" src="validation.js">
</script>
</html>
<BODY background="./images/Back.jpg">
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","phs","phs");
PreparedStatement pst=con.prepareStatement("select count(*) from doctor_table");
ResultSet rs=pst.executeQuery();
rs.next();
PreparedStatement pst1=con.prepareStatement("select dept_name from dept_table");
ResultSet rs1=pst1.executeQuery();
%>
<form action="add_doctor1.jsp" name="form" onsubmit="return add_doctor(this)">
<center>
<table><br>
<th>Doctor Registration Form</th>
<tr>
<td><br>
Doctor id:
</td>
<td><br>
<input type="Text" name="did" value="<%=rs.getInt(1)+1%>" readonly>
</td>
</tr>

<tr>
<td>
Doctor Name:
</td>
<td>
<input type="Text" name="dname">
</td>
</tr>

<tr>
<td>
User Name:
</td>
<td>
<input type="Text" name="uname">
</td>
</tr>

<tr>
<td>
Password:
</td>
<td>
<input type="password" name="pwd">
</td>
</tr>

<tr>
<td>
Confirm Password:
</td>
<td>
<input type="password" name="cpwd">
</td>
</tr>

<tr>
<td>
Dept Name:
</td>
<td>
<select name="dept_name">
<option>--select--</option>
<%
while(rs1.next())
{
%>
<option value="<%=rs1.getString(1)%>"><%=rs1.getString(1)%></option>
<%
}
%>
</select>
</td>
</tr>

<tr>
<td>
Qualification:
</td>
<td>
<input type="Text" name="qua">
</td>
</tr>

<tr>
<td>
Experience:
</td>
<td>
<input type="Text" name="exp">
</td>
</tr>


<tr>
<td>
D.O.B:
</td>
<td>
<input type="Text" name="dob">
</td>
</tr>

<tr>
<td>
Gender:
</td>
<td>
<input type="radio" name="gender" value="male">male
<input type="radio" name="gender" value="female">female
</td>
</tr>

<tr>
<td>
Contact.No:
</td>
<td>
<input type="Text" name="cno">
</td>
</tr>

<tr>
<td>
Email:
</td>
<td>
<input type="Text" name="email">
</td>
</tr>

<tr>
<td>
Address:
</td>
<td>
<textarea name="addr" rows="5" cols="25"></textarea>
</td>
</tr>


<tr>
<td><br>
<center> 
<input type="submit" name="submit" value="Register">
</center>
</td>
</tr>

</table>
</center>
</form>
</body>
</html>