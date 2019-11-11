<%-- 
    Document   : leave1
    Created on : 6 Jun, 2018, 10:56:40 AM
    Author     : Rewa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
Date date1,date2;
String empid=request.getParameter("empid");
String dt1=request.getParameter("dt1");
date1=Date.valueOf(dt1);
String dt2=request.getParameter("dt2");
date2=Date.valueOf(dt2);
int no=Integer.parseInt(request.getParameter("no"));
String reason=request.getParameter("reason");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into leavemp(empid,dt1,dt2,no,reason)values('"+empid+"','"+date1+"','"+date2+"','"+no+"','"+reason+"')");
out.println("Leave applied succesfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <br>
        <a href="leave.jsp">BACK</a>
    </body>
</html>
