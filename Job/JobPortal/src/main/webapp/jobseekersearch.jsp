<html>
<head>
<link rel="stylesheet" href="styles.css" type="text/css"/>
<title> JobSeeker – Search </title>
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
background-image:url("WhatsApp Image 2022-06-23 at 12.04.44 PM.jpeg");
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
<h1> JobSeeker </h1>
<% 
String username=(String)session.getAttribute("username");
String usertype=(String)session.getAttribute("usertype");
if(username==null || usertype!="jobseeker") //to check user is logged in, if user is not logged username will be null and page will redirect to index.jsp
{
	 response.sendRedirect("index.jsp");
}
%>
<p style="text-align:right;"> Welcome <%=username %> <a href="logout.jsp"style="color:white"> Logout </a></p>
<jsp:include page="jobseekermenu.jsp"/>
<center>
<fieldset>
<legend>Search Jobs</legend>
<form method="get" action="jobseekersearchresult.jsp">
<table>
<!--  <tr>
 <td>Keywords</td>
 </tr>
 <tr>
 <td><input type="text" name="keyword"></td>
 </tr>

 <tr>
 <td>Location</td>
 </tr>
 <tr>
 <td><input type="text" name="location"></td>
 </tr>
 
 <tr>
 <td>Experience</td>
 <td>Expected Salary</td>
 </tr>
 <tr>
 <td><input type="number" name="experience"></td>
 <td><input type="number" name="expectedsalary"></td>
 </tr> -->
 
 <tr>
 <td><input type="submit" name="submit" value="Search Jobs"><h1> clich here to search jobs</h1></td>
 </tr>
</table>
</form>
</fieldset>
</center>
<jsp:include page="footer.jsp"/>
</body>
</html>