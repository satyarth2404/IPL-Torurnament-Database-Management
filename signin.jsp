<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {margin:0;}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
    background-color: #4CAF50;
    color: white;
}
</style>
</head>
<body background="webbg.jpg">
    <%
        String name=(String)session.getAttribute("nm");
        out.println("Hello "+name);
                %>
                
<div class="topnav">
  <a class="active" href="index.jsp">Home</a>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <font color="white"> Hello, <%=name%></font>
  
  <a href="blogpage.jsp">Latest Blogs</a>
  <a href="#contact">Contact</a>
   <a href="feedback.jsp">Feedback</a>
  <a href="index.jsp">Log Out</a>
</div>

                
    <h1 align="center"> Importance of Blogging</h1>
                <hr color="red" size="15">
                <p>While websites are still a mainstay of the Internet, websites have never really enjoyed the kind of popularity that blogs have recently gotten.  Blogging has become a real social phenomenon over the past few years and for good reason too. 

Blogging makes it extremely easy for anyone to become an online publisher with its easy to use publishing platforms.  This means, no more messing around with HTML coding, software problems or web design issues.  There is no technical know-how needed to publish a blog.  If you have something to say, or a story to tell, just login to your blog platform and post your blog entry.  Its then that the magic happens.  Anyone who is subscribed to your blog, will then be immediately alerted to your latest posting.  How  Its called RSS.

RSS, short for Really Simple Syndication, is what makes blogs really useful and unique.  RSS makes it easy for anyone on the Internet to read your blog without even having to visit your blog site.  All your readers require is a blog reader and your blog posts are automatically delivered to your subscribers blog readers via RSS, for them to read at their leisure.  This is important if your blog subscribers are busy professionals with very limited time on their hands.  Instead of having to visit numerous sites to get their information, they only have to fire up their blog reader.

</p>
<h2>Post Your Blogs here</h2>
<form action="signin.jsp" method="post">
    Title<input type="text" name="title"/><br><br>
    &nbsp;&nbsp;<textarea name="mytextbox" align="center" cols="100" rows="100">
        
    </textarea><br><br>
<input type="submit" value="Post" name="post"/>
</form>
    
    
    <% String blogp=request.getParameter("mytextbox");
       String title=request.getParameter("title");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
        Statement st=con.createStatement();
        if(request.getParameter("post")!=null)
        {
            st.executeUpdate("Update Blog set Blog1='"+blogp+"' where FULL_NAME='"+name+"'");
            st.executeUpdate("Update Blog set title='"+title+"' where FULL_NAME='"+name+"'");
            session.setAttribute("btitle",title);
            response.sendRedirect("blogpage.jsp");
        }
            
            
            %>
    

    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">Let's Get In Touch!</h2>
                    <hr class="primary">
                    <p>SATYARTH SHUKLA<br>  </p>
                </div>
                <div class="col-lg-4 col-lg-offset-2 text-center">
                    <i class="fa fa-phone fa-3x sr-contact"></i>
                    <p>SATYARTH SHUKLA-7530000504<br>
                    </p>
                </div>
                <div class="col-lg-4 text-center">
                    <i class="fa fa-envelope-o fa-3x sr-contact"></i>
                    <p><a href="mailto:your-email@your-domain.com">
                    satyarth.shukla2016@vitstudent.ac.in<br>
                    </a></p>
                </div>
            </div>
        </div>
    </section>
</body>
</html>