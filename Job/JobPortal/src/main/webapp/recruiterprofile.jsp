<%@ page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="styles.css" type="text/css"/>
<title> Recruiter - Profile </title>
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
<legend>Profile Details</legend>
<table>
<%
Connection con=null;
Statement stmt=null;
ResultSet rs=null;
ResultSet rs1=null;

 Class.forName("com.mysql.jdbc.Driver");
 String url="jdbc:mysql://localhost:3306/job?characterEncoding=latin1";

 con=DriverManager.getConnection(url,"root","Jyothi2001@");
 stmt=con.createStatement();
 
 rs=stmt.executeQuery("select * from recruiterprofile where username='"+username+"'");
 while(rs.next())
 {
%>


<tr>
<td>Name</td>
<td><%=rs.getString("FNAME") %> <%=rs.getString("LNAME") %></td>
</tr>

<tr>
<td>Company Name</td>
<td><%=rs.getString("COMPANY") %></td>
</tr>

<tr>
<td>Designation</td>
<td><%=rs.getString("DESIGNATION")%></td>
</tr>

<tr>
<td>Location</td>
<td><%=rs.getString("LOCATION") %></td>
</tr>

<tr>
<td>Email</td>
<td><%=rs.getString("EMAIL") %></td>
</tr>

<tr>
<td>Mobile</td>
<td><%=rs.getString("MOBILE") %></td>
</tr>

<tr>
<td>Gender</td>
<td><%=rs.getString("GENDER") %></td>
</tr>

<tr>
<td>&nbsp</td>
</tr>

<%
 }
 rs.close();
 stmt.close();
 con.close();
 %>
<tr>
<td colspan="2" align="center"><a href="recruiterupdateprofile.jsp">Edit</a></td>
</tr>
</table>
</fieldset>
</center>
<jsp:include page="footer.jsp"/>
</body>
</html>