<%@ page import="java.sql.*" %>

<html>
<head>
<link rel="stylesheet" href="styles.css" type="text/css"/>
<title> JobSeeker – Job Details </title>
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

<legend>Job Details</legend>
<% 
String jobid=request.getParameter("jobid");

Connection con=null;
Statement stmt=null;
ResultSet rs=null;

Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/job?characterEncoding=latin1";

con=DriverManager.getConnection(url,"root","Jyothi2001@");
stmt=con.createStatement();

rs=stmt.executeQuery("select * from job where jobid='"+jobid+"'");

while(rs.next())
{
%>

<div class="jobdetails">
<table width=30%>
<tr>
<td><b><%=rs.getString("title") %></b></td>
<td style="text-align:right;">Posted on <%=rs.getString("dateofposting") %></td>
</tr>
<tr>
<td><%=rs.getString("experience") %>&nbsp;Years</td>
<td style="text-align:right;">Posted by <%=rs.getString("recruiter") %></td>
</tr>
<tr>
<td><%=rs.getString("location") %></td>
</tr>
<tr>
<td><%=rs.getString("salary") %> p.a.</td>
</tr>
<tr>
<td>Vacancy-<%=rs.getString("vacancy") %></td>
</tr>
</table>
<hr width=30%>
<table>
<tr>
<td><%=rs.getString("description") %></td>
</tr>
</table>
<hr width=30%>
<table>
<tr>
<td>Functional Area &nbsp; </td>
<td><%=rs.getString("functionalarea") %></td>
</tr>
<tr>
<td>Role &nbsp;</td>
<td><%=rs.getString("role") %></td>
</tr>
<tr>
<td>Key Skills  &nbsp;</td>
<td><%=rs.getString("keyskills") %></td>
</tr>
<tr>
<td>Interview Date  &nbsp;</td>
<td><%=rs.getString("interviewdate") %></td>
</tr>
<tr>
<td>Interview Time  &nbsp;</td>
<td><%=rs.getString("interviewtime") %></td>
</tr>
<tr>
<td>Interview Place  &nbsp;</td>
<td><%=rs.getString("interviewplace") %></td>
</tr>
</table>
</div>
<br>
<a href="jobseekersendmessageaction.jsp?user=<%=rs.getString("recruiter") %>&jobid=<%=jobid %>">Apply for this Job</a>
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