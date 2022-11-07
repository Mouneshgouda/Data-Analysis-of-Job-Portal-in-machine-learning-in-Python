<%@ page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="styles.css" type="text/css"/>
<title> JobSeeker - Profile </title>
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
<legend>Profile Details</legend>
<table>
<%
Connection con=null;
Statement stmt=null;
ResultSet rs=null;

 Class.forName("com.mysql.jdbc.Driver");
 String url="jdbc:mysql://localhost:3306/";
 
 con=DriverManager.getConnection(url,"root","Jyothi2001@");
 stmt=con.createStatement();
 
 rs=stmt.executeQuery("select * from jobseekerprofile where username='"+username+"'");
 while(rs.next())
 {
%>

<tr>
<td>Basic Details</td>
</tr>
<tr>
<td>Name</td>
<td><%=rs.getString("FNAME") %> <%=rs.getString("LNAME") %></td>
</tr>
<tr>
<td>Designation</td>
<td><%=rs.getString("DESIGNATION") %></td>
</tr>
<tr>
<td>Location</td>
<td><%=rs.getString("LOCATION") %></td>
</tr>
<tr>
<td>Experience</td>
<td><%=rs.getString("EXPERIENCE") %></td>
</tr>
<tr>
<td>Contact Details</td>
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
<td>Key Skills</td>
</tr>
<tr align=center>
<td colspan=2><%=rs.getString("KEYSKILLS") %></td>
</tr>
<tr>
<td>Projects</td>
</tr>
<tr align=center>
<td colspan=2><%=rs.getString("PROJECTS") %></td>
</tr>
<tr>
<td>IT Skills</td>
</tr>
<tr align=center>
<td colspan=2><%=rs.getString("ITSKILLS") %></td>
</tr>
<tr>
<td>Education</td>
</tr>
<tr align=center>
<td colspan=2><%=rs.getString("EDUCATION") %></td>
</tr>
<tr>
<td>Certifications</td>
</tr>
<tr align=center>
<td colspan=2><%=rs.getString("CERTIFICATIONS") %></td>
</tr>
<tr>
<td>Work Details</td>
</tr>
<tr align=center>
<td colspan=2><%=rs.getString("WORKDETAILS") %></td>
</tr>
<tr>
<td>Personal Details</td>
</tr>
<tr>
<td>DOB</td>
<td><%=rs.getString("DOB") %></td>
</tr>
<tr>
<td>Gender</td>
<td><%=rs.getString("GENDER") %></td>
</tr>
<td>Hometown</td>
<td><%=rs.getString("HOMETOWN") %></td>
</tr>
<td>PIN</td>
<td><%=rs.getString("PIN") %></td>
</tr>
<td>Maritial Status</td>
<td><%=rs.getString("MARITIALSTATUS") %></td>
</tr>
<td>Languages Known</td>
<td><%=rs.getString("LANGUAGESKNOWN") %></td>
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
<td colspan="2" align="center"><a href="jobseekerupdateprofile.jsp">Edit</a></td>
</tr>
</table>
</fieldset>
</center>
<jsp:include page="footer.jsp"/>
</body>
</html>