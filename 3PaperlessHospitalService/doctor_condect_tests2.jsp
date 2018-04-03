<BODY background="./images/Back.jpg">
<%@ page import="java.sql.*" %>
<%
int test_id=Integer.parseInt(request.getParameter("test_id"));
int p_id=Integer.parseInt(request.getParameter("p_id"));
String test=request.getParameter("test");
String comment=request.getParameter("comment");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","phs","phs");
PreparedStatement pst=con.prepareStatement("select test_info_id from test_info_table where test=?");
pst.setString(1,test);
ResultSet rs=pst.executeQuery();
rs.next();
int test_info_id=rs.getInt(1);
PreparedStatement pst1=con.prepareStatement("insert into tests_table values(?,?,?,?)");
pst1.setInt(1,test_id);
pst1.setInt(2,p_id);
pst1.setInt(3,test_info_id);
pst1.setString(4,comment);
pst1.executeUpdate();
out.println("want to do another test?");
%>
<a href="doctor_condect_tests.jsp">Back</a>
<a href="doctor_body.jsp">Home</a>