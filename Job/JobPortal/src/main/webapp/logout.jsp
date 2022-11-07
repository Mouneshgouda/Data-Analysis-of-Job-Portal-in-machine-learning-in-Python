<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>


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
</style>
<body>
<%
try{
	String username=request.getParameter("username");
	System.out.println("qwertyuiop"+username);
Connection con=null;
  Statement stmt=null;
  ResultSet rs=null;
  Class.forName("com.mysql.jdbc.Driver");
 String url="jdbc:mysql://localhost:3306/job?characterEncoding=latin1";
 con=DriverManager.getConnection(url,"root","Jyothi2001@");
 stmt=con.createStatement();
/*  rs=stmt.executeQuery("select * from time1 ");     */
String sql="update time1 set logout_time=now() where username='"+username+"'";
System.out.println("\ntimeend");
stmt.executeUpdate(sql);
}catch(Exception e)
{
	out.print(e);
}
%>
<%
request.getSession();
session.removeAttribute("username");
session.removeAttribute("usertype");
session.invalidate();
%>
You are successfully logged out!
<jsp:include page="index.jsp"/>
</body>
</html>