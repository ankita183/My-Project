<BODY background="./images/Back.jpg">
<%@page language="java" session="true" %>
<%
	session.removeAttribute("uname");
	session.invalidate();

%>
<jsp:forward page="login.jsp"/>
</body>