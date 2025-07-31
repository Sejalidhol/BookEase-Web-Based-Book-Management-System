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
    // Invalidate the session
    if (session != null) {
        session.invalidate(); // Destroy session
    }
%>
<script>
    alert("Logout Successful!");
    window.location.href = "home.html"; // Redirect to login page
</script>

</body>
</html>