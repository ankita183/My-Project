<BODY background="./images/Back.jpg">
<%@ page import="java.sql.*" %>
<%
int id=Integer.parseInt(request.getParameter("id"));
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","phs","phs");
PreparedStatement pst=con.prepareStatement("select test from test_info_table");
ResultSet rs=pst.executeQuery();
PreparedStatement pst1=con.prepareStatement("select count(*) from tests_table");
ResultSet rs1=pst1.executeQuery();
rs1.next();
%>
<form action="doctor_condect_tests2.jsp">
<table align="center">
	<tr>
		<td>Test Id:</td>
		<td><input type="text" name="test_id" value="<%=rs1.getInt(1)+1%>" readonly></td>
	</tr>

	<tr>
		<td>Patient Id:</td>
		<td><input type="text" name="p_id" value="<%=id%>" readonly></td>
	</tr>
	<tr>
		<td>Required tests:</td>
		<td><select name="test">
		<%
		while(rs.next())
		{
		%>
		<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
		<%}
		%>
		</select></td>
	</tr>

	<tr>
	<td>
		Comments:
	</td>
	<td>
		<textarea name="comment" rows="5" cols="20"></textarea>
	</td>
	</tr>

	<tr>
		
		<td colspan="2" align="center"><input type="submit" value="Test"></td>
	</tr>

</table>
</form>
</body>