<html>
<head>
<link rel="stylesheet" href="styles.css" type="text/css"/>
<title> Recruiter - Feedback </title>
</head>
<body>
<style>
body {
	margin: 0;
	padding: 0.5em 0.5em 0.5em 0;
	height: 100vh;
	overflow: hidden;
	font-family: 'Montserrat', sans-serif;
	font-size: 120.5%;
	color: #fff;
	background-color: lightblue;
}
body{
background-image:url("WhatsApp Image 2022-06-23 at 12.05.03 PM.jpeg");
background-repeat:no-repeat;
background-size:cover; 
}
 h1{
position:relative;
left:1300px;
bottom:37px;
}
  img{
position:absolute;
top:35px;

}
</style>
<jsp:include page="header.jsp"/>
<img src="chWo7d.png"><br>
<h1> Recruiter </h1>
<% 
String username=(String)session.getAttribute("username");
String usertype=(String)session.getAttribute("usertype");
if(username==null || usertype!="recruiter") //to check user is logged in, if user is not logged username will be null and page will redirect to index.jsp
{
	 response.sendRedirect("index.jsp");
}
%>
<p style="text-align:right;"> Welcome <%=username %> <a href="logout.jsp"style="color:white"> Logout </a></p>
<jsp:include page="recruitermenu.jsp"/>
<center>
<fieldset>
<legend>Feedback</legend>
<form method="post" action="mailto:ry4761@gmail.com" name="messageform">
<table>
<tr>
<td>Username</td>
<td><input type="text" name="username" value="<%=username%>" disabled></td>
</tr>
<tr>
<td>E-Mail</td>
<td><input type="text" name="email"></td>
</tr>
<tr>
<td>Message</td>
<td><textarea name="message" form="messageform" required></textarea></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Send Message"></td>
</tr>
</table>
</form>
</fieldset>
</center>
<jsp:include page="footer.jsp"/>
</body>
</html>