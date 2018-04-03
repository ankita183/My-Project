<%@ page import="java.sql.*"%>
<html>
<head>
</head>
<BODY background="./images/Back.jpg">
<%
String uname=request.getParameter("uname");
String pwd=request.getParameter("pwd");
String type=request.getParameter("type");
System.out.println(type);
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","phs","phs");
if(type.equals("admin"))
{
	PreparedStatement pst=con.prepareStatement("select count(*) from dept_admin_table where username=? and password=?");
	pst.setString(1,uname);
	pst.setString(2,pwd);
	ResultSet rs=pst.executeQuery();
	rs.next();
	if(rs.getInt(1)==1)
	{
		session.setAttribute("uname",uname);
%>
<jsp:forward page="admin_home.jsp"/>
<%
	}
	else
	{
		session.setAttribute("msg","username/password is invalid");
%>
<jsp:forward page="login.jsp"/>
<%
	}
}
if(type.equals("clerk"))
{
	PreparedStatement pst=con.prepareStatement("select count(*) from clerk_table where username=? and password=?");
	pst.setString(1,uname);
	pst.setString(2,pwd);
	ResultSet rs=pst.executeQuery();
	rs.next();
	if(rs.getInt(1)==1)
	{
		session.setAttribute("uname",uname);
%>
<jsp:forward page="clerk_home.jsp"/>
<%
	}
	else
	{
		session.setAttribute("msg","username/password is invalid");
%>
<jsp:forward page="login.jsp"/>
<%
	}
}
if(type.equals("doctor"))
{
	PreparedStatement pst=con.prepareStatement("select count(*) from doctor_table where username=? and password=?");
	pst.setString(1,uname);
	pst.setString(2,pwd);
	ResultSet rs=pst.executeQuery();
	rs.next();
	if(rs.getInt(1)==1)
	{
		session.setAttribute("uname",uname);
%>
<jsp:forward page="doctor_home.jsp"/>
<%
	}
	else
	{
		session.setAttribute("msg","username/password is invalid");
%>
<jsp:forward page="login.jsp"/>
<%
	}
}
if(type.equals("bill"))
{
	PreparedStatement pst=con.prepareStatement("select count(*) from billing_table where username=? and password=?");
	pst.setString(1,uname);
	pst.setString(2,pwd);
	ResultSet rs=pst.executeQuery();
	rs.next();
	if(rs.getInt(1)==1)
	{
		session.setAttribute("uname",uname);
%>
<jsp:forward page="billing_home.jsp"/>
<%
	}
	else
	{
		session.setAttribute("msg","username/password is invalid");
%>
<jsp:forward page="login.jsp"/>
<%
	}
}
if(type.equals("insurance"))
{
	PreparedStatement pst=con.prepareStatement("select count(*) from insurance_provider_table where username=? and password=?");
	pst.setString(1,uname);
	pst.setString(2,pwd);
	ResultSet rs=pst.executeQuery();
	rs.next();
	if(rs.getInt(1)==1)
	{
		session.setAttribute("uname",uname);
%>
<jsp:forward page="insurance_home.jsp"/>
<%
	}
	else
	{
		session.setAttribute("msg","username/password is invalid");
%>
<jsp:forward page="login.jsp"/>
<%
	}
}

%>
</body>
</html>