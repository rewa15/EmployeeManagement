<%-- 
    Document   : leave
    Created on : 6 Jun, 2018, 10:18:45 AM
    Author     : Rewa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
.c1{   width: 96%;
    padding: 18px 20px;
    margin: 8px 10px;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;}
.s{   width: 96%;
    background-color: lightslategray;
    color: black;
    padding: 18px 20px;
    margin: 8px 10px;
    border: none;
    border-radius: 4px;
    cursor: pointer;}
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <body bgcolor='WhiteSmoke'>
            <h1 align=center><u>APPLY LEAVE</u></h1><br><br>

<form action=leave1.jsp>
<h2>EMPLOYEE ID:</h2>
<input class='c1' type='text' name='empid'>
<h2>FROM DATE:</h2>
<input class='c1' type='date' name='dt1'>
<h2>TO DATE:</h2>
<input class='c1' type='date' name='dt2'>
<h2>NO. OF DAYS:</h2>
<input class='c1' type='number' name='no'>
<h2>REASON:</h2>
<input class='c1' type='text' name='reason'><br>
<input class='s' type='submit' value='APPLY'>
</form>
    </body>
</html>
