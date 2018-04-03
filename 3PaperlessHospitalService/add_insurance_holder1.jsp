
<BODY background="./images/Back.jpg">
<%@ page import="java.sql.*" %>
<%
int iid=Integer.parseInt(request.getParameter("i_id"));
String type=request.getParameter("i_type");
String sdate=request.getParameter("i_sdate");
String mdate=request.getParameter("i_mdate");
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","phs","phs");
PreparedStatement pst=con.prepareStatement("insert into insurance_table values(?,?,?,?)");
pst.setInt(1,iid);
pst.setString(2,type);
pst.setString(3,sdate);
pst.setString(4,mdate);
pst.executeUpdate();
out.println("Insurance Holder Added Successfully<br>");
out.print("<a href='add_insurance_holder.jsp'>Back</a>");
}catch(Exception e)
{
	out.print(e);
}
%>
</body>