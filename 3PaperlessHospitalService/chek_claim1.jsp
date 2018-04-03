<BODY background="./images/Back.jpg">
<%@ page import="java.sql.*" %>
<%
int id=Integer.parseInt(request.getParameter("id"));

try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","phs","phs");
PreparedStatement pst=con.prepareStatement("select insurance_id from patient_table where patient_id=?");
pst.setInt(1,id);
ResultSet rs=pst.executeQuery();
rs.next();
int i_id=rs.getInt(1);
PreparedStatement pst1=con.prepareStatement("select count(*) from insurance_table where insurance_id=?");
pst1.setInt(1,i_id);
ResultSet rs1=pst1.executeQuery();
rs1.next();
if(rs1.getInt(1)==1)
	{
	  out.println("Insurance ID is Valid");
	}
	else
	{
		 out.println("Insurance ID is InValid");
	}
			 out.println("<a href='insurance_body.jsp'>Home</a>");
}catch(Exception e)
{
	out.print(e);
}
%>
</body>