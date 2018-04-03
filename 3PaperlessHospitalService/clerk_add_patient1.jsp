<%@ page import="java.sql.*"%>
<html>
<head>
</head>
<BODY background="./images/Back.jpg">
<%
int pid=Integer.parseInt(request.getParameter("p_id"));
String pname=request.getParameter("p_name");
int p_age=Integer.parseInt(request.getParameter("p_age"));
String gender=request.getParameter("p_gender");
double weight=Double.parseDouble(request.getParameter("p_weight"));
String city=request.getParameter("p_city");
String blood_group=request.getParameter("p_bg");
int percent=Integer.parseInt(request.getParameter("p_precent"));
String join_date=request.getParameter("p_date");
int insurance_id=Integer.parseInt(request.getParameter("p_insurance"));
String contact_no=request.getParameter("p_contact");
String email=request.getParameter("p_email");
String problem=request.getParameter("p_problem");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","phs","phs");
PreparedStatement pst=con.prepareStatement("insert into patient_table values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
pst.setInt(1,pid);
pst.setString(2,pname);
pst.setInt(3,p_age);
pst.setString(4,gender);
pst.setDouble(5,weight);
pst.setString(6,city);
pst.setString(7,blood_group);
pst.setInt(8,percent);
pst.setString(9,join_date);
pst.setInt(10,insurance_id);
pst.setString(11,contact_no);
pst.setString(12,email);
pst.setString(13,problem);
pst.setInt(14,0);
pst.executeUpdate();
out.println("<center><h2>Patient added successfully......</h2></center>");

%>
<a href="clerk_body.jsp">
<img src="./images/backup.jpg"></a>
</body>
<html>