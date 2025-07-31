<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>System Message</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
    }
    body {
        background: linear-gradient(to right, #8360c3, #2ebf91);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        text-align: center;
    }
    .container {
        background: white;
        padding: 25px;
        border-radius: 10px;
        box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
        max-width: 400px;
        animation: fadeIn 0.8s ease-in-out;
    }
    h1 {
        color: #333;
        font-weight: 600;
        margin-bottom: 10px;
    }
    .message {
        font-size: 18px;
        color: #007bff;
        font-weight: bold;
        margin-top: 10px;
        padding: 10px;
        border-radius: 5px;
        background: rgba(0, 123, 255, 0.1);
    }
    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: scale(0.9);
        }
        to {
            opacity: 1;
            transform: scale(1);
        }
    }
</style>
</head>
<body>
    <div class="container">
        <h1>System Message</h1>
        <div class="message">
            <%
            String msg = (String) request.getAttribute("msg");
            if (msg != null) {
                out.println(msg);
            } else {
                out.println("No message available.");
            }
            %>
        </div>
    </div>
</body>
</html>