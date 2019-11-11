<%-- 
    Document   : displayl
    Created on : 6 Jun, 2018, 11:08:44 AM
    Author     : Rewa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
         <style>
         table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 50%;
}

td, th {
    border: 1px solid #000000;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
            input[type=submit], select, textarea {
    width: 25%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}
        .button {
    background-color: lightseagreen;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    margin: 4px 2px;
    cursor: pointer;
}
.button5 {font-size: 24px;}
        input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}
input[type=text], select, textarea {
    width: 50%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}
input[type=submit], select, textarea {
    width: 25%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}
    </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2 align='center'>CHECK EMPLOYEE LEAVE HISTORY</h2><hr><hr><br><br>
        <form action="#sear">
        <h2>ENTER EMPLOYEE ID:</h2>
        <input type="text" name="search"><br><br>
        <input type="submit" value="CHECK LEAVE HISTORY">
        </form>
        <br><br>
<table>
    <tr>
    <th>EMP. ID</th>
    <th>FROM DATE</th>
    <th>TO DATE</th>
    <th>NO. OF DAYS</th>
    <th>REASON</th>
  </tr>
<div id="sear">
<%
String search= request.getParameter("search");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "test";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
statement=connection.createStatement();
String sql ="select * from leavemp where empid="+search+"";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("empid") %></td>
<td><%=resultSet.getString("dt1") %></td>
<td><%=resultSet.getString("dt2") %></td>
<td><%=resultSet.getString("no") %></td>
<td><%=resultSet.getString("reason") %></td>
</tr>
<%    
}
connection.close();
} catch (Exception e){
e.printStackTrace();
}
%>
</div>
</table>
</body>
</html>
