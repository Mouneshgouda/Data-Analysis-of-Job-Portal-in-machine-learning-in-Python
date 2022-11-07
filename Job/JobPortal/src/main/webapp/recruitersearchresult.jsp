<%@ page import="java.sql.*" %>

<html>
<head>
<link rel="stylesheet" href="styles.css" type="text/css"/>
<title> Recruiter – Search Result </title>
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
<legend>Search Results</legend>
<form action="jobseekersearchresult.jsp">
<input type="search" name="keyword" size="50%"><input type="submit" value="Search">
</form>
<% 
String search=request.getParameter("search");

Connection con=null;
Statement stmt=null;
ResultSet rs=null;

Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/job?characterEncoding=latin1";

con=DriverManager.getConnection(url,"root","Jyothi2001@");
stmt=con.createStatement();

rs=stmt.executeQuery("select * from jobseekerprofile where username='"+search+"' or fname='"+search+"' or lname='"+search+"' or designation='"+search+"' or location='"+search+"' or experience='"+search+"' or email='"+search+"' or mobile='"+search+"' or keyskills='"+search+"' or projects='"+search+"' or itskills='"+search+"' or education='"+search+"' or certifications='"+search+"' or workdetails='"+search+"' or dob='"+search+"' or gender='"+search+"' or hometown='"+search+"' or pin='"+search+"' or maritialstatus='"+search+"' or languagesknown='"+search+"'"); 

while(rs.next())
{
%>

<hr width=30%>
<div class="recruitersearchresult">
<table width=30%>
<tr>
<td><b><a href="recruiterjobseekerprofile.jsp?user=<%=rs.getString("username") %>"><%=rs.getString("fname") %> <%=rs.getString("lname") %></a></b></td>
</tr>
<tr>
<td><%=rs.getString("designation") %></td>
</tr>
<tr>
<td><%=rs.getString("experience") %>Years</td>
</tr>
<tr>
<td><%=rs.getString("location") %></td>
</tr>
<tr>
<td><%=rs.getString("keyskills") %></td>
</tr>
</table>
</div>
<hr width=30%>

<%	
}
rs.close();
stmt.close();
con.close();
%>
</fieldset>
</center>
<jsp:include page="footer.jsp"/>
</body>
</html>