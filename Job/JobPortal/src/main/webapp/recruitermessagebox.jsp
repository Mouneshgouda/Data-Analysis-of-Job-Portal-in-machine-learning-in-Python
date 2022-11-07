<%@ page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="styles.css" type="text/css"/>
<title> Recruiter – Message Box </title>
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
<legend>Messages</legend>
<%

Connection con=null;
Statement stmt=null;
ResultSet rs=null;

 Class.forName("com.mysql.jdbc.Driver");
 String url="jdbc:mysql://localhost:3306/job?characterEncoding=latin1";

 con=DriverManager.getConnection(url,"root","Jyothi2001@");
 stmt=con.createStatement();

 rs=stmt.executeQuery("select * from message where to_username='"+username+"' order by datetime desc ");
 if(!rs.next())
 {
 %>
 Empty Message Box
 <%
 }
 while(rs.next())
 {
%>

<hr width=30%>
<div class="inbox">
<table width=30%>

<tr>
<td><a href="recruiterjobseekerprofile.jsp?user=<%=rs.getString("from_username") %>"><%=rs.getString("from_username") %></a></td>
<td style="text-align:right;"><%=rs.getString("datetime") %></td>
</tr>

<tr>
<td><%=rs.getString("message") %><a href="recruiterjobdetails.jsp?jobid=<%=rs.getString("forjob")%>"><%=rs.getString("forjob") %></a></td>
<td style="text-align:right;"><a href="recruitersendmessageaction.jsp?user=<%=rs.getString("from_username")%>&jobid=<%=rs.getString("forjob")%>">Accept for Interview</a></td>
</tr>

</table>
</div>
<hr width=30%>
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