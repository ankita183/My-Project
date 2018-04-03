<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>Login Form </TITLE>
<script language="javascript" src="validation.js">
</script>

</HEAD>

<BODY background="./images/Back.jpg">
<%
if(session.getAttribute("msg")!=null)
{
String msg=(String)session.getAttribute("msg");
out.print(msg);
session.removeAttribute("msg");
}
%>
<center><font color="blue">
<h3>Login Form</h3></font>
<a href="welcome.html"><font color="blue">Home</font></a>
<form action="login1.jsp" onsubmit="return valid_login(this)">
<table>
<tr>
	<td><font color="blue">User Name:</font></td><td><input type="text" name="uname"></td>
</tr>
<tr>
	<td><font color="blue">Password:</font></td><td><input type="password" name="pwd"></td>
</tr>
<tr>
	<td><font color="blue">User Type:</font></td><td><select name="type">
	<option>select</option>
	<option value="clerk">Clerk</option>
	<option value="admin">Admin</option>
	<option value="doctor">Doctor</option>
	<option value="bill">Billing Department</option>
	<option value="insurance">Insurance Provider</option>
	</select></td>
</tr>
<tr>
	<td colspan="2" align="center"><input type="submit" value="Login"></td>
</tr>
</table>
</form>
</center>
</BODY>
</HTML>
