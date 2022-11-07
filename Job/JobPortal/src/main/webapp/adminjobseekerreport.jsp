<%@ page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="styles.css" type="text/css"/>
<title> Admin – JobSeeker Report </title>
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
background-image:url("WhatsApp Image 2022-06-23 at 12.05.35 PM.jpeg");
background-repeat:no-repeat;
background-size:cover; 
}
 h1{
position:relative;
left:1250px;
bottom:37px;
}
  img{
position:absolute;
top:35px;

}
</style>
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
<fieldset>
<legend>List of Registered JobSeekers</legend>
<div class="adminlist">
<table width=30% border=1>
<b><tr>
<td width=10%>S.No.</td>
<td width=50%>Username</td>
<td width=20%>View Profile</td>
<td width=20%>Remove Profile</td>
</tr></b>
</table>
<%
Connection con=null;
Statement stmt=null;
ResultSet rs=null;
int count=1;
 Class.forName("com.mysql.jdbc.Driver");
 String url="jdbc:mysql://localhost:3306/job?characterEncoding=latin1";

 con=DriverManager.getConnection(url,"root","Jyothi2001@");
 stmt=con.createStatement();
 
 rs=stmt.executeQuery("select * from jobseekerprofile");
 while(rs.next())
 {
%>

<table width=30% border=1>
<tr>
<td width=10%><%=count%>.</td>
<td width=50%><%=rs.getString("username") %></td>
<td width=20%><a href="adminjobseekerprofile.jsp?user=<%=rs.getString("username") %>">View</a></td>
<td width=20%><a href="adminremoveaction.jsp?user=<%=rs.getString("username")%>&type=jobseeker">Remove</a></td>
</tr>
</table>
</div>
<%
count++;
} 
 rs.close();
 stmt.close();
 con.close();
%>
</fieldset>
<jsp:include page="footer.jsp"/>
</body>
</html>