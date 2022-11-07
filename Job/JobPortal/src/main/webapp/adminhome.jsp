<%@page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="styles.css" type="text/css"/>
<title> Admin - Home </title>
</head>

<link rel="shortcut icon" href="http://www.iconarchive.com/download/i47277/avosoft/warm-toolbar/user.ico">
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
background-image:url("WhatsApp Image 2022-06-23 at 12.05.35 PM.jpeg");
background-repeat:no-repeat;
background-size:cover; 
} h1{
position:relative;
left:1250px;
bottom:37px;
}
  img{
position:absolute;
top:35px;

}
#a{
position:relative;
left:600px;
top:5px;
}
#a{
position:relative;
left:600px;
top:5px;
}
</style>
<script type="text/javascript" src="jquery-3.5.1.js"></script>

    <script defer src="index1.js"></script>
<body>
<jsp:include page="header.jsp"/>
<img src="chWo7d.png"><br>
<h1>Administrator</h1>
<% 
String username=(String)session.getAttribute("username");
String usertype=(String)session.getAttribute("usertype");
if(username==null || usertype!="admin") //to check user is logged in, if user is not logged username will be null and page will redirect to index.jsp
{
	 response.sendRedirect("index.jsp");
}
%>
<p style="text-align:right;"> Welcome <%=username %>    <a href="logout.jsp"style="color:white"> Logout </a></p>
<jsp:include page="adminmenu.jsp"/>
<jsp:include page="footer.jsp"/>

<div id="a">admin home visit count:</div>
    <div id="a" class="website-counter1"></div><br>
<!--     <button id="reset">Reset</button> -->
</body>
</html>