<html>
<head>
<title>Feedback </title>
</head>
<body>
<%@ page import="java.util.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>
<form>
    From<input type="text" name="from"/><br>
    <p>Type your feedback here</p><br>
    <text area name="feedbck"><textarea><br>
</form>

    
<%
String host = "yourmailhost";
String to ="satyarth.shukla2016@vitstudent.ac.in";
String from =request.getParameter("from");
String subject = request.getParameter("subject");
String messageText = request.getParameter("body");
boolean sessionDebug = false;
// Create some properties and get the default Session.
Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol", "smtp");
Session mailSession = Session.getDefaultInstance(props, null);
 
// Set debug on the Session
// Passing false will not echo debug info, and passing True will.
 
mailSession.setDebug(sessionDebug);
 
// Instantiate a new MimeMessage and fill it with the 
// required information.
 
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setSentDate(new Date());
msg.setText(messageText);
 
// Hand the message to the default transport service
// for delivery.
 
Transport.send(msg);
out.println("Mail was sent to " + to);
out.println(" from " + from);
out.println(" using host " + host + ".");
%>
</table>
</body>
</html>