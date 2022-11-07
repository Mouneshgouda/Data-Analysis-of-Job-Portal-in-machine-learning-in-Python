<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New User Registration</title>
</head>
<body>
<%
try
{
String usertype=request.getParameter("usertype");
String username=request.getParameter("username");
String password=request.getParameter("password");
String blank=" ";
 Connection con=null;
 Statement stmt=null;
 ResultSet rs=null;
 ResultSet rs1=null;
 
  Class.forName("com.mysql.jdbc.Driver");
  String url="jdbc:mysql://localhost:3306/job?characterEncoding=latin1";

  con=DriverManager.getConnection(url,"root","Jyothi2001@");
  stmt=con.createStatement();

  stmt.executeUpdate("insert into Login(usertype,username,password) values('"+usertype+"','"+username+"','"+password+"')");
  
  
  session.setAttribute("username",username);
  if(usertype=="jobseeker")
  {
  stmt.executeUpdate("insert into jobseekerprofile values('"+username+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"')");
  rs.close();
  con.close();
  session.setAttribute("usertype","jobseeker");
  response.sendRedirect("jobseekerhome.jsp");  
  }
  else if(usertype=="recruiter")
  {
  stmt.executeUpdate("insert into recruiterprofile values('"+username+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"')");     
  rs.close();
  con.close();
  session.setAttribute("usertype","recruiter");
  response.sendRedirect("recruiterhome.jsp");
  }
  stmt.close();
  con.close();
}
catch(NullPointerException e)
{
	out.print("Please Enter All Required Details");
%>
<jsp:include page="registration.jsp"/>
<%
}
catch(Exception e)
{
	out.print(e);
}
%>
</body>
</html>