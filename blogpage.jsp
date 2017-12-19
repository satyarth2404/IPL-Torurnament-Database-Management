<%-- 
    Document   : blogpage
    Created on : 21 Jun, 2017, 11:23:52 PM
    Author     : SATYARTH
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="theme.jpg">
        <h1 align="center"><font color="White">Blog Panel</font> </h1>
        <hr color="blue" size="4">
        
        <%
           
           String name=(String)session.getAttribute("nm");
           Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
           Statement st=con.createStatement();
           String select="Select FULL_NAME,Blog1,Title from Blog";
           ResultSet rs=st.executeQuery(select);
           while(rs.next())
           {
               String name1=rs.getString("FULL_NAME");
               String title1=rs.getString("TITLE");
               String blog1=rs.getString("Blog1");
               if(title1!=null && blog1!=null){
               out.print("<h1> "+title1+"</h1><br>");
               out.print(blog1+"<br>");
               out.print("Posted by: "+name1);  
               }
               }
               
           
%> <br>
            <a href="signin.jsp">Back</a>
    </body>
    
</html>
