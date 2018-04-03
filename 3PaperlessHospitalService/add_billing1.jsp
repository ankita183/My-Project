<%@ page import="java.sql.*" %>
<html>
<head>
</head>
<BODY background="./images/Back.jpg">
<%
int id=Integer.parseInt(request.getParameter("aid"));
String c_name=request.getParameter("aname");
String uname=request.getParameter("uname");
String pwd=request.getParameter("pwd");
int age=Integer.parseInt(request.getParameter("age"));
String gender=request.getParameter("gender");
String contact_no=request.getParameter("cno");
String email=request.getParameter("email");
String address=request.getParameter("addr");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","phs","phs");
PreparedStatement pst=con.prepareStatement("insert into billing_table values(?,?,?,?,?,?,?,?,?)");
pst.setInt(1,id);
pst.setString(2,c_name);
pst.setString(3,uname);
pst.setString(4,pwd);
pst.setInt(5,age);
pst.setString(6,gender);
pst.setString(7,contact_no);
pst.setString(8,email);
pst.setString(9,address);
pst.executeUpdate();
out.println("<center><h2>Billing Department added successfully......</h2></center>");

%>
<a href="admin_body.jsp"><img src="./images/backup.jpg">
</a>
</body>
</html>