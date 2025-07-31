<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Book Result</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #8360c3, #2ebf91);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .container {
        background: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        width: 350px;
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
    
    .message {
        font-size: 16px;
        font-weight: bold;
        padding: 10px;
        border-radius: 5px;
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

<div class="container">
    <h2>Delete Book Result</h2>
    <div class="message">
        <%
            String temp = (String) request.getAttribute("msg");
            if (temp != null) {
                if (temp.contains("successfully")) {
                    out.println("<p class='message success'>" + temp + "</p>");
                } else {
                    out.println("<p class='message error'>" + temp + "</p>");
                }
            }
        %>
    </div>
    <br>
    <a href="Delete.html">Go Back</a>
</div>

</body>
</html>