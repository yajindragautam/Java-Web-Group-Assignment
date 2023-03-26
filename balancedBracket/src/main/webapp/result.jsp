<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bracket Balancer Result</title>
</head>
<body>
    <h1>Bracket Balancer Checker Result</h1>
    <%
        String message = (String) request.getAttribute("message");
        out.println(message);
    %>
    <br><br>
    <a href="index.jsp">Try again</a>
</body>
</html>
