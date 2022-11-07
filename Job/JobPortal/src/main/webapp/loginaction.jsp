<%@ page import="java.sql.*" %>

<html>
<head>
<title>Login</title>
</head>
<body>
<%
try
{
String username=request.getParameter("username");
String password=request.getParameter("password");
String usertype=request.getParameter("usertype");


  if(username.equals("admin") && password.equals("admin") && usertype.equals("admin"))
   {
   session.setAttribute("username",username);
   session.setAttribute("usertype","admin");
   response.sendRedirect("adminhome.jsp");
   }

  
  Connection con=null;
  Statement stmt=null;
  ResultSet rs=null;
 /*   ResultSet rs1=null;  */
/*   ResultSet rs2=null;  */

 Class.forName("com.mysql.jdbc.Driver");
 String url="jdbc:mysql://localhost:3306/job?characterEncoding=latin1";
 
 con=DriverManager.getConnection(url,"root","Jyothi2001@");
 stmt=con.createStatement();
 
 rs=stmt.executeQuery("select * from Login where username='"+username+"' and password='"+password+"' and usertype='"+usertype+"'");    
/*   rs1=stmt.executeQuery(" insert into time1 (username,login_time) values('aa',now())"); */


/*  rs2=stmt.executeQuery("update Login set login_time=now() where username='username'");  */
System.out.print(username);
/* String sql="update Login set login_time=now() where username='"+username+"'";
stmt.executeUpdate(sql); */
System.out.println("done"+username);
   if(rs.next())
	  System.out.println(username);  
  {
	  session.setAttribute("username",username);
	 
	  if(usertype.equals("jobseeker"))
	   {  
	   session.setAttribute("usertype","jobseeker");
	   /* session.setMaxInactiveInterval(int 50); */
	   response.sendRedirect("jobseekerhome.jsp");
	   
	   }
	  else if(usertype.equals("recruiter"))
	   {
	   session.setAttribute("usertype","recruiter");
       response.sendRedirect("recruiterhome.jsp");
	   }
  } 
 /*  else 
  { 

Invalid User name or Password or User Type

<jsp:include page="adminhome.jsp"/>


 }  */
}
catch(NullPointerException e)
{
	out.print("Please Enter Login Details");
%>
<jsp:include page="index.jsp"/>
<%
}
catch(Exception e)
{
	out.print(e);
}
%>
</body>
</html>