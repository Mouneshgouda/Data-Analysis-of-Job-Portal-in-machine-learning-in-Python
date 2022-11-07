<%@ page import="java.sql.*" %>

<html>
<head>
<link rel="stylesheet" href="styles.css" type="text/css"/>
<title> JobSeeker – Search Result </title>
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
<script type="text/javascript" src="jquery-3.5.1.js"></script>
<script type="text/javascript" src="searchresult.js"></script>
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
<legend>Search Results</legend>
<form action="jobseekersearchresult.jsp">
<!-- <input type="search" name="keyword" size="50%"><input type="submit" value="Search"> -->
<select name="search" id="select">
<option value="Agriculture" id="Agriculture">Agriculture</option>
<option value="Animal_Science" id="Animal_Science">Animal_Science</option>
<option value="Business" id="Business">Business</option>
<option value="Engineering" id="Engineering">Engineering</option>
<option value="Marketing" id="Marketing">Marketing</option>

</select>

<button type="button" id="search" value="Search">SEARCH</button>
</form>
<% 
String keyword=request.getParameter("keyword");
String location=request.getParameter("location");
String experience=request.getParameter("experience");
String expectedsalary=request.getParameter("expectedsalary");

Connection con=null;
Statement stmt=null;
ResultSet rs=null;

Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/job?characterEncoding=latin1";

con=DriverManager.getConnection(url,"root","Jyothi2001@");
stmt=con.createStatement();

rs=stmt.executeQuery("select * from job where title='"+keyword+"' or keyskills='"+keyword+"' or role='"+keyword+"' or recruiter='"+keyword+"' or location='"+location+"' or experience<='"+experience+"' or salary>='"+expectedsalary+"' "); 

while(rs.next())
{
%>
<hr width=30%>
<div>
<table width=30%>
<tr>
<td><b><a href="jobseekerjobdetails.jsp?jobid=<%=rs.getString("jobid") %>"><%=rs.getString("title") %></a></b></td>
<td style="text-align:right;">Posted on <%=rs.getString("dateofposting") %></td>
</tr>
<tr>
<td><%=rs.getString("experience") %>&nbsp;Years</td>
</tr>
<tr>
<td><%=rs.getString("location") %></td>
</tr>
<tr>
<td><%=rs.getString("salary") %> p.a.</td>
</tr>
<tr>
<td><%=rs.getString("keyskills") %></td>
</tr>
<tr>
<td>Vacancy-<%=rs.getString("vacancy") %></td>
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