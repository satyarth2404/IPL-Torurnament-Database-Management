<%-- 
    Document   : studentport
    Created on : 1 Sep, 2017, 2:59:11 AM
    Author     : SATYARTH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Player Portal</title>
        <style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 200px;
    background-color: #f1f1f1;
}

li a {
    display: block;
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
}

/* Change the link color on hover */
li a:hover {
    background-color: #555;
    color: white;
}
</style>
<style type="text/css">
      
      div {
        margin-left:auto;
        margin-right:auto;
        border-radius: 8px;
        display: block;
        margin: auto;
        width: 50%;}
      #slides{
        text-align:center; margin-left:38%; margin-right:auto; padding-top:15px;
        }
	 
			
	  
	</style>
    </head>
    
    <body>
     

        <h1 align="center"><font>Vivo IPL</font><img src="vit.jpg" height="60" width="60"</img></h1>
        <hr color="black" size="15">
 
        <%String name=(String)session.getAttribute("nm");
            out.print("<h3>Hello "+name);
                %>
                
                <% if(name.equalsIgnoreCase("MS Dhoni")) { %>
                
                <div id="slides"> <img src="ms_1.jpg"  height="300" width="500" align="right"></img></div>
                <% } else if(name.equalsIgnoreCase("Virat Kohli")) { %>
                 <div id="slides"> <img src="virat.jpg"  height="300" width="500" align="right"></img></div>
                 <% } else if(name.equalsIgnoreCase("Gautam Gambhir")) { %>
		 <div id="slides"> <img src="gambhir.jpg"  height="300" width="500" align="right"></img></div>
                 <% } else if(name.equalsIgnoreCase("David Warner")) { %>
                 <div id="slides"> <img src="warner.png"  height="300" width="500" align="right"></img></div>
                 <% } %>
<ul>
  <li><a href="#home">Home</a></li>
  <li><a href="attendancepost.jsp">Tournament Fixtures</a></li>
  <li><a href="#news">Team Meeting</a></li>
  <% if(name.equalsIgnoreCase("Virat Kohli")) {%>
  <li><a href="rcbsquad.jpg">Manage Squad</a></li>
  <% } else { %>
  <li><a href="#ss">Manage Squad</a></li>
  <% } %>
  <li><a href="game.jpg">Game Plan</a> <li id="hosteller"><a href="regsearch.jsp" hidden="hidden">Check Roommate Eligibility</a></li></li>
   <li><a href="playerlogin.jsp">Log Out</a></li>
</ul>

    </body>

