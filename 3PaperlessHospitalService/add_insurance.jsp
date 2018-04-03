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
PreparedStatement pst=con.prepareStatement("select count(*) from insurance_provider_table");
ResultSet rs=pst.executeQuery();
rs.next();
%>
<form action="add_insurence1.jsp" name="form" onsubmit="return valid_insurance(this)">
<center>
<table><br>
<th>Insurence Provider </th>
<tr>
<td><br>
Insurence Id:
</td>
<td><br>
<input type="Text" name="inid" value="<%=rs.getInt(1)+1%>">
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
Age:
</td>
<td>
<input type="Text" name="age">
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