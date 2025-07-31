<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Management</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #8360c3, #2ebf91); /* Purple to Teal Gradient */
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .container {
        background: white;
        padding: 25px;
        border-radius: 10px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        width: 350px;
        text-align: center;
    }
    h2 {
        color: #5a2d82; /* Dark Purple */
        margin-bottom: 15px;
    }
    .message {
    font-size: 18px;
    font-weight: bold;
    padding: 12px;
    border-radius: 5px;
    margin-bottom: 15px;
    text-align: center;
    transition: all 0.3s ease-in-out;
    animation: slideIn 0.8s ease-out;
	}

    .success {
    background: #d4edda;
    color: #155724;
    border: 1px solid #c3e6cb;
    box-shadow: 0px 0px 5px rgba(21, 87, 36, 0.3);
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


/* Keyframe for sliding in effect */
@keyframes slideIn {
    from {
        transform: translateX(-100px);
        opacity: 0;
    }
    to {
        transform: translateX(0);
        opacity: 1;
    }
}
.success:hover {
    background: #c3e6cb; /* Lighter green on hover */
    color: #0f3d2e; /* Darker green text */
    box-shadow: 0px 0px 8px rgba(21, 87, 36, 0.7); /* Green glow effect */
    transform: scale(1.05); /* Slight zoom effect */
}
    .error {
        background: #f8d7da;
        color: #721c24;
        border: 1px solid #f5c6cb;
    }
    .button {
        display: block;
        text-decoration: none;
        background: #2ebf91;
        color: white;
        padding: 12px;
        margin: 10px 0;
        border-radius: 5px;
        font-size: 16px;
        transition: 0.3s;
    }
    .button:hover {
        background: #249f7a;
    }
		    .go-back {
		    background: #b38bfa; /* Soft Lavender */
		}
		.go-back:hover {
		    background: #9b6ef3; /* Darker Lavender on Hover */
		}

</style>
</head>
<body>
<div class="top-bar">
    <a href="logout.jsp" class="logout-btn">Logout</a>
</div>

<div class="container">
    <h2>Book Management System</h2>
    
    <div class="message">
        <%
        String temp = (String) session.getAttribute("msg");
        if (temp != null) {
            out.println(temp);
            session.removeAttribute("msg"); // Clear message after displaying once
        }
        %>
    </div>

    
    <!-- Go Back button with new soft pink color -->
    <a href="loginsuccess.jsp" class="button go-back"> Go Back</a>
</div>

</body>
</html>