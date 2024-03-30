<%-- 
    Document   : populateArray
    Created on : 29 Mar 2024, 9:32:50 pm
    Author     : rynaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Populate Array</title>
</head>
<body>
    
<h1>Read Java array and populate it into HTML's table</h1>

<%
    // Storing the given information into an array
    String[] months = {"Jan", "Feb", "Mar"};
    int[][] sales = {
            {2500, 2100, 2200},
            {2000, 1900, 2400},
            {1800, 2200, 2450}
    };
%>

<table border="1">
    <tr>
        <th><p>Salesman</p></th>
        <th><%= months[0] %></th>
        <th><%= months[1] %></th>
        <th><%= months[2] %></th>
    </tr>

    <%
        // Populating the table with sales data
        for (int i = 0; i < sales.length; i++) {
    %>
    <tr>
        <td>Salesman <%= (i+1) %></td>
        <%
            for (int j = 0; j < sales[i].length; j++) {
        %>
        <td><%= sales[i][j] %></td>
        <%
            }
        %>
    </tr>
    <%
        }
    %>
</table>

</body>
</html>
