<%@ page import="java.sql.*" %>
<html>
<head>
</head>
<BODY background="./images/Back.jpg">
<%
int id=Integer.parseInt(request.getParameter("did"));
String c_name=request.getParameter("dname");
String uname=request.getParameter("uname");
String pwd=request.getParameter("pwd");
String dept_name=request.getParameter("dept_name");
String qual=request.getParameter("qua");
int exp=Integer.parseInt(request.getParameter("exp"));
String dob=request.getParameter("dob");
String gender=request.getParameter("gender");
String contact_no=request.getParameter("cno");
String email=request.getParameter("email");
String address=request.getParameter("addr");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","phs","phs");
PreparedStatement pst1=con.prepareStatement("select dept_id from dept_table where dept_name=?");
pst1.setString(1,dept_name);
ResultSet rs1=pst1.executeQuery();
rs1.next();
int dept_id=rs1.getInt(1);
PreparedStatement pst=con.prepareStatement("insert into doctor_table values(?,?,?,?,?,?,?,?,?,?,?,?)");
pst.setInt(1,id);
pst.setString(2,c_name);
pst.setString(3,uname);
pst.setString(4,pwd);
pst.setInt(5,dept_id);
pst.setString(6,qual);
pst.setInt(7,exp);
pst.setString(8,dob);
pst.setString(9,gender);
pst.setString(10,contact_no);
pst.setString(11,email);
pst.setString(12,address);
pst.executeUpdate();
out.println("<center><h2>Doctor added successfully......</h2></center>");

%>
<a href="admin_body.jsp"><img src="./images/backup.jpg">
</a>
</body>
</html>