<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
ResultSet rs= (ResultSet) (request.getAttribute("alojamientos"));

while(rs.next()){
String id = rs.getString("id");
%>
	
	<p><%=rs.getString("nombre") %></p>
	<a href="DetalleController?id=<%=id%>"> <img width="500" src="img/<%= rs.getString("imagen") %>"></a>
<% 	
}
%>




</body>
</html>