<%-- 
    Document   : Reg1
    Created on : 1 Jun, 2018, 10:58:16 AM
    Author     : Rewa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!Doctype HTML>
<html>
    <head>
        <style>
            .button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
</style>
    </head>
    <body>
<%
String empid=request.getParameter("empid");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String gender=request.getParameter("gender");
String bplace=request.getParameter("bplace");
String ms=request.getParameter("ms");
String dob=request.getParameter("dob");
String bg=request.getParameter("bg");
String rel=request.getParameter("rel");
String doj=request.getParameter("doj");
String dept=request.getParameter("dept");
String cemail=request.getParameter("cemail");
String pos=request.getParameter("pos");
String cabin=request.getParameter("cabin");
String contact=request.getParameter("contact");
String email=request.getParameter("email");
String addr=request.getParameter("addr");
String psw=request.getParameter("psw");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into employee(empid,fname,lname,gender,bplace,ms,dob,bg,rel,doj,dept,cemail,pos,cabin,contact,email,addr,psw)values('"+empid+"','"+fname+"','"+lname+"','"+gender+"','"+bplace+"','"+ms+"','"+dob+"','"+bg+"','"+rel+"','"+doj+"','"+dept+"','"+cemail+"','"+pos+"','"+cabin+"','"+contact+"','"+email+"','"+addr+"','"+psw+"')");
int j=st.executeUpdate("insert into dep(empid,dept)values('"+empid+"','"+dept+"')");
%>
<h2>REGISTERED SUCCESSFULLY!</h2>
<a href="index.html" class=button">BACK</a>
<%
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
//ALTER TABLE child_table_name
//ADD FOREIGN KEY (P_ID)
//REFERENCES parent_table_name (P_ID)
%>
</body>
</html>