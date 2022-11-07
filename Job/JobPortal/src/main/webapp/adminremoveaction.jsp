<%@ page import="java.sql.*" %>
<html>
<head>
<title>Admin Remove Action</title>
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
</style>
<%
String username=(String)session.getAttribute("username");
String usertype=(String)session.getAttribute("usertype");
if(username==null || usertype!="admin") //to check user is logged in, if user is not logged username will be null and page will redirect to index.jsp
{
	 response.sendRedirect("index.jsp");
}
%>
<% 
String user=request.getParameter("user");
String type=request.getParameter("type");

 Connection con=null;
 Statement stmt=null;
 ResultSet rs=null;
 ResultSet rs1=null;
 ResultSet rs2=null;
 
  Class.forName("com.mysql.jdbc.Driver");
  String url="jdbc:mysql://localhost:3306/job?characterEncoding=latin1";

  con=DriverManager.getConnection(url,"root","Jyothi2001@");
  stmt=con.createStatement();
  
  if(type=="jobseeker")
  {
  rs=stmt.executeQuery("select * from jobseekerprofile where username='"+user+"' ");
  if(rs.next())
  {
	  
	  rs1=stmt.executeQuery("delete from jobseekerprofile where username='"+user+"' ");
	  rs2=stmt.executeQuery("delete from login where username='"+user+"' and usertype='"+type+"' ");
	  rs.close();
	  stmt.close();
	  con.close();
  }
  response.sendRedirect("adminjobseekerreport.jsp");
  }
  else if(type=="recruiter")
  {	  
  rs=stmt.executeQuery("select * from recruiterprofile where username='"+user+"' ");
  if(rs.next())
  {
	  
	  rs1=stmt.executeQuery("delete from recruiterprofile where username='"+user+"' ");
	  rs2=stmt.executeQuery("delete from login where username='"+user+"' and usertype='"+type+"' ");
	  rs.close();
	  stmt.close();
	  con.close();
  }
  response.sendRedirect("adminrecruiterreport.jsp");
  }
  
%>
</body>
</html>