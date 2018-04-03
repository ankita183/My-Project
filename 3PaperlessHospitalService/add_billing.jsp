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
PreparedStatement pst=con.prepareStatement("select count(*) from billing_table");
ResultSet rs=pst.executeQuery();
rs.next();
%>
<form action="add_billing1.jsp" name="form" onsubmit="return valid_billing(this)">
<center>
<table><br>
<th><font color="blue">Billing Department Registration</font></th>
<tr>
<td><br><font color="blue">
Accountant id:</font>
</td>
<td><br>
<input type="Text" name="aid" value="<%=rs.getInt(1)+1%>" readonly>
</td>
</tr>

<tr>
<td><font color="blue">
Accountant Name:</font>
</td>
<td>
<input type="Text" name="aname">
</td>
</tr>

<tr>
<td><font color="blue">
User Name:</font>
</td>
<td>
<input type="Text" name="uname">
</td>
</tr>

<tr>
<td><font color="blue">
Password:</font>
</td>
<td>
<input type="password" name="pwd">
</td>
</tr>

<tr>
<td><font color="blue">
Confirm Password:</font>
</td>
<td>
<input type="password" name="cpwd">
</td>
</tr>


<tr>
<td><font color="blue">
Age:</font>
</td>
<td>
<input type="Text" name="age">
</td>
</tr>

<tr>
<td><font color="blue">
Gender:</font>
</td>
<td>
<input type="radio" name="gender" value="male">male
<input type="radio" name="gender" value="female">female
</td>
</tr>


<tr>
<td><font color="blue">
Contact.No:</font>
</td>
<td>
<input type="Text" name="cno">
</td>
</tr>

<tr>
<td><font color="blue">
Email:</font>
</td>
<td>
<input type="Text" name="email">
</td>
</tr>

<tr>
<td><font color="blue">
Address:</font>
</td>
<td>
<textarea name="addr" rows="5" cols="25"></textarea>
</td>
</tr>

<tr>
<td><br>
<center> 
<input type="submit" name="submit" value="register">
</center>
</td>
</tr>

</table>
</center>
</form>
</body>
</html>