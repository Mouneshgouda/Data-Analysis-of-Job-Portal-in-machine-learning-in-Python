
<%@ page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="styles.css" type="text/css"/>
<title> Recruiter – Updae Profile </title>
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
<jsp:include page="recruitermenu.jsp"/><hr>
<center>
<fieldset>
<legend>Profile Details</legend>
<%
Connection con=null;
Statement stmt=null;
ResultSet rs=null;

 Class.forName("com.mysql.jdbc.Driver");
 String url="jdbc:mysql://localhost:3306/job?characterEncoding=latin1";

 con=DriverManager.getConnection(url,"root","Jyothi2001@");
 stmt=con.createStatement();
 
 rs=stmt.executeQuery("select * from recruiterprofile where username='"+username+"'");
if(!rs.next())
{
%>
	<form method="post" action="recruiterupdateprofileaction.jsp">
	<table>

	<tr>
	<td>Name</td>
	<td><input type="text" name="fname" placeholder="FirstName"></td>
	</tr>

	<tr>
	<td></td>
	<td><input type="text" name="lname" placeholder="LastName"></td>
	</tr>

	<tr>
	<td>Company Name</td>
	<td><input type="text" name="company"></td>
	</tr>

	<tr>
	<td>Designation</td>
	<td><input type="text" name="designation"></td>
	</tr>

	<tr>
	<td>Location</td>
	<td><input type="text" name="location"></td>
	</tr>

	<tr>
	<td>Email</td>
	<td><input type="text" name="email"></td>
	</tr>

	<tr>
	<td>Mobile</td>
	<td><input type="text" name="mobile"></td>
	</tr>

	<tr>
	<td>Gender</td>
	<td><input type="radio" name="gender" value="male" required>Male<input type="radio" name="gender" value="female" required>Female</td>
	</tr>

	<tr>
	<td>&nbsp;</td>
	</tr>

	<tr>
	<td align="center" colspan=2><input type="submit" value="Update"></td>
	</tr>

	</table>
	</form>
	<%
}
 while(rs.next())
 {
%>
<form method="post" action="recruiterupdateprofileaction.jsp">
<table>

<tr>
<td>Name</td>
<td><input type="text" name="fname" placeholder="FirstName" value=<%=rs.getString("fname") %>></td>
</tr>

<tr>
<td></td>
<td><input type="text" name="lname" placeholder="LastName" value=<%=rs.getString("lname") %>></td>
</tr>

<tr>
<td>Company Name</td>
<td><input type="text" name="company" value=<%=rs.getString("company") %>></td>
</tr>

<tr>
<td>Designation</td>
<td><input type="text" name="designation" value=<%=rs.getString("designation") %>></td>
</tr>

<tr>
<td>Location</td>
<td><input type="text" name="location" value=<%=rs.getString("location") %>></td>
</tr>

<tr>
<td>Email</td>
<td><input type="text" name="email" value=<%=rs.getString("email") %>></td>
</tr>

<tr>
<td>Mobile</td>
<td><input type="text" name="mobile" value=<%=rs.getString("mobile") %>></td>
</tr>

<tr>
<td>Gender</td>
<td><input type="radio" name="gender" value="male" required>Male<input type="radio" name="gender" value="female" required>Female</td>
</tr>

<tr>
<td>&nbsp;</td>
</tr>

<tr>
<td align="center" colspan=2><input type="submit" value="Update"></td>
</tr>

</table>
</form>
<%
 }
%>
</fieldset>
</center>
<jsp:include page="footer.jsp"/>
</body>
</html>