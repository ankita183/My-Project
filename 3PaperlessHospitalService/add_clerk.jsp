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
PreparedStatement pst=con.prepareStatement("select count(*) from clerk_table");
ResultSet rs=pst.executeQuery();
rs.next();
%>
<form action="add_clerk1.jsp" name="form" onsubmit="return valid_clerk(this)">
<center>
<table><br>
<th><font color="blue">Clerk Registration Form</font></th>
<tr>
<td><br><font color="blue">
Clerk id:</font>
</td>
<td><br>
<input type="Text" name="cid" value="<%=rs.getInt(1)+1%>" readonly>
</td>
</tr>

<tr>
<td><font color="blue">
Clerk Name:</font>
</td>
<td>
<input type="Text" name="cname">
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
<input type="radio" name="gender" value="male"><font color="blue">male</font>
<input type="radio" name="gender" value="female"><font color="blue">female</font>
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
<td>
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