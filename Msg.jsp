<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
       <%
           String msg=(String)session.getAttribute("msg");
       %>
       <h1 align="center"><%=msg %></h1>
</body>
</html>