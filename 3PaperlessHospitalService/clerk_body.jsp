<BODY background="./images/Back.jpg">
<font color="blue">
<center>
<h1>WELCOME TO CLERK HOME PAGE</h1></center>
<%
String name=(String)session.getAttribute("uname");
%>
Welcome to <%=name%></font>
</body>