<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="jakarta.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.message {
    font-size: 16px;
    font-weight: bold;
    padding: 10px;
    border-radius: 5px;
    margin-bottom: 10px;
    transition: 0.5s ease-in-out;
    text-align: center;
}
.top-bar {
        width: 100%;
        display: flex;
        justify-content: flex-end;
        padding: 10px 20px;
        position: absolute;
        top: 0;
        right: 0;
    }
    .logout-btn {
        background: red;
        color: white;
        padding: 8px 15px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 14px;
        text-decoration: none;
    }
    .logout-btn:hover {
        background: darkred;
    }

.success {
    background: #d4edda;
    color: #155724;
    border: 1px solid #c3e6cb;
}
.error {
    background: #f8d7da;
    color: #721c24;
    border: 1px solid #f5c6cb;
}

</style>
</head>
<body>
<div class="top-bar">
    <a href="logout.jsp" class="logout-btn">Logout</a>
</div>
<%
        HttpSession sessionObj = request.getSession(false);
        if (sessionObj != null && sessionObj.getAttribute("msg") != null) {
            String message = (String) sessionObj.getAttribute("msg");
            String messageClass = message.contains("Success") ? "success" : "error";
    %>
        <div class="message <%= messageClass %>"><%= message %></div>
    <%
            sessionObj.removeAttribute("msg"); 
        }
    %>

</body>
</html>