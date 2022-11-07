<%@ page import="java.sql.*" %>
<html>
<head>
<title>JobSeeker – Update Profile Action</title>
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
</style>
<%
String username=(String)session.getAttribute("username");
String usertype=(String)session.getAttribute("usertype");
if(username==null || usertype!="jobseeker") //to check user is logged in, if user is not logged username will be null and page will redirect to index.jsp
{
	 response.sendRedirect("index.jsp");
}
%>
<% 
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String designation=request.getParameter("designation");
String location=request.getParameter("location");
String experience=request.getParameter("experience");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String keyskills=request.getParameter("keyskills");
String projects=request.getParameter("projects");
String itskills=request.getParameter("itskills");
String education=request.getParameter("education");
String certifications=request.getParameter("certifications");
String workdetails=request.getParameter("workdetails");
String dob=request.getParameter("dob");
String gender=request.getParameter("gender");
String hometown=request.getParameter("hometown");
String pin=request.getParameter("pin");
String maritialstatus=request.getParameter("maritialstatus");
String languagesknown=request.getParameter("languagesknown");

 Connection con=null;
 Statement stmt=null;
 ResultSet rs=null;
 ResultSet rs1=null;
 ResultSet rs2=null;
 ResultSet rs3=null;
 
  Class.forName("com.mysql.jdbc.Driver");
  String url="jdbc:mysql://localhost:3306/patils?characterEncoding=latin1";

  con=DriverManager.getConnection(url,"root","Jyothi2001@");
  stmt=con.createStatement();
  
  rs=stmt.executeQuery("select * from login where username='"+username+"' and usertype='"+usertype+"' ");
  if(rs.next())
  {
	  rs1=stmt.executeQuery("select * from jobseekerprofile where username='"+username+"'");
	  if(rs1.next())
	  {
          stmt.executeUpdate("update jobseekerprofile set username='"+username+"', fname='"+fname+"', lname='"+lname+"', designation='"+designation+"', location='"+location+"', experience='"+experience+"', email='"+email+"', mobile='"+mobile+"', keyskills='"+keyskills+"', projects='"+projects+"', itskills='"+itskills+"', education='"+education+"', certifications='"+certifications+"', workdetails='"+workdetails+"', dob='"+dob+"', gender='"+gender+"', hometown='"+hometown+"', pin='"+pin+"', maritialstatus='"+maritialstatus+"', languagesknown='"+languagesknown+"' where username='"+username+"' ");     // toLowerCase() is used to store data into table in LowerCase to remove case senstivity of fields except password. Password is case sensitive for security reasons.
	  }
	  else
	  {
	  stmt.executeUpdate("insert into jobseekerprofile values('"+username+"','"+fname+"','"+lname+"','"+designation+"','"+location+"','"+experience+"','"+email+"','"+mobile+"','"+keyskills+"','"+projects+"','"+itskills+"','"+education+"','"+certifications+"','"+workdetails+"','"+dob+"','"+gender+"','"+hometown+"','"+pin+"','"+maritialstatus+"','"+languagesknown+"')");     // toLowerCase() is used to store data into table in LowerCase to remove case senstivity of fields except password. Password is case sensitive for security reasons.  
	  }
	  rs.close();
	  stmt.close();
	  con.close();
  }
  response.sendRedirect("jobseekerprofile.jsp");
  
%>
</body>
</html>