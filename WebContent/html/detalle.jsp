<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.ResultSet"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<% 
ResultSet rs = (ResultSet)(request.getAttribute(""));
if(rs.next()){
%>
	<p><%= rs.getString("nombre")  %></p>
	<p><%=rs.getString("localidad") %></p>
	<p><%=rs.getString("categoria") %></p>
	<img src="img/<%= rs.getString("imagen") %>">
	
	
	
<%	
}
%>

</body>
</html>