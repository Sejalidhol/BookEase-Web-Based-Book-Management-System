<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="test.AdminBean, test.BookBean, java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin - View Books</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #8360c3, #2ebf91);
        color: white;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh; /* Full viewport height */
        flex-direction: column;
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
    .container {
        background: white;
        color: black;
        padding: 20px;
        border-radius: 10px;
        width: 80%;
        max-width: 800px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        text-align: center;
        margin-top: 50px; /* Prevent overlap with top-bar */
    }
    h2 {
        margin-bottom: 15px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    table, th, td {
        border: 1px solid black;
    }
    th, td {
        padding: 10px;
        text-align: center;
    }
    th {
        background: #2ebf91;
        color: white;
    }
</style>
</head>
<body>

<!-- Logout Button in Top-Right Corner -->
<div class="top-bar">
    <a href="logout.jsp" class="logout-btn">Logout</a>
</div>

<div class="container">
    <%
        AdminBean ab = (AdminBean) session.getAttribute("abean");
        ArrayList<BookBean> al = (ArrayList<BookBean>) session.getAttribute("alist");

        if (ab == null) {
            out.println("<h2>Session Expired! Please log in again.</h2>");
        } else {
            out.println("<h2>Welcome, Admin: " + ab.getAfname() + "</h2>");

            if (al == null || al.size() == 0) {
                out.println("<h3>No Books Available...</h3>");
            } else {
    %>

    <table>
        <tr>
            <th>Book ID</th>
            <th>Name</th>
            <th>Author</th>
            <th>Price</th>
            <th>Quantity</th>
        </tr>
        
        <%
            for (BookBean pb : al) {
        %>
        <tr>
            <td><%= pb.getBid() %></td>
            <td><%= pb.getBname() %></td>
            <td><%= pb.getBauthor() %></td>
            <td><%= pb.getBprice() %></td>
            <td><%= pb.getBqty() %></td>
        </tr>
        <% } %>

    </table>

    <% 
            } // End of book list check
        } // End of admin session check
    %>

</div>

</body>
</html>