<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 27-02-2024
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Response</title>
</head>
<body>
    <%
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String [] allHobbies = request.getParameterValues("hobbies");
        StringBuilder sb =new StringBuilder();
        for(String hobbie: allHobbies){
            sb.append(hobbie);
            sb.append(",");
        }
        String hobbies = sb.toString();
    %>
    <p><strong>Your Name: </strong><%= name%></p>
    <p><strong>Your Gender: </strong><%= gender%></p>
    <p><strong>Your Hobbies: </strong><%= hobbies%></p>
</body>
</html>
