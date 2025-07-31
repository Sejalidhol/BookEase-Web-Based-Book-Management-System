<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="test.AdminBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<style>
    /* Full Page Styling */
    body {
        font-family: 'Arial', sans-serif;
        background: linear-gradient(to right, #8360c3, #2ebf91); /* Vibrant gradient */
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    /* Dashboard Container */
    .container {
        background: white;
        padding: 30px 40px;
        border-radius: 12px;
        box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.3);
        text-align: center;
        width: 400px;
    }

    /* Heading Styling */
    h1 {
        font-size: 28px;
        font-weight: bold;
        color: #444;
        margin-bottom: 20px;
        text-transform: uppercase;
        letter-spacing: 1.5px;
    }

    h1 span {
        color: #2ebf91; /* Green from gradient */
        font-size: 32px;
    }

    /* Success Message */
    .success-message {
        font-size: 18px;
        font-weight: bold;
        color: #00a86b;
        margin-bottom: 10px;
    }

    /* Welcome Text */
    .welcome {
        font-size: 16px;
        color: #555;
        margin-bottom: 20px;
        font-weight: 500;
    }

    /* Stylish Buttons */
    .btn {
        display: block;
        width: 100%;
        text-decoration: none;
        background: linear-gradient(to right, #3a7bd5, #00d2ff); /* Teal-Blue */
        color: white;
        padding: 12px;
        border-radius: 8px;
        font-size: 18px;
        font-weight: bold;
        margin: 12px 0;
        text-align: center;
        transition: 0.3s ease-in-out;
        border: none;
        cursor: pointer;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.3);
    }

    /* Button Hover Effect */
    .btn:hover {
        background: linear-gradient(to right, #00d2ff, #3a7bd5); /* Reverse gradient */
        transform: scale(1.05);
        box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.4);
    }
</style>
</head>
<body>

<div class="container">
    <h1> <span>Admin Panel</span></h1>

    <%
    AdminBean ab = (AdminBean) session.getAttribute("abean");
    if (ab != null) {
    %>
        <p class="success-message"> Login Successful!</p>
        <p class="welcome">Welcome, <strong><%= ab.getAname() %></strong></p>
    <%
    } else {
        response.sendRedirect("login.html"); // Redirect to login if session is expired
    }
    %>
	
    <a href="AddBook.html" class="btn"> Add Book</a>
    <a href="Delete.html" class="btn"> Delete Book</a>
    <a href="Update.html" class="btn"> Update Book</a>
    <a href="view" class="btn"> View All Books</a>
</div>

</body>
</html>