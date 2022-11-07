<%@page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="css/styles.css" type="text/css"/>
<script type="text/javascript" src="jquery-3.5.1.js"></script>
<script type="text/javascript" src="chat.js"></script>
<title> JobSeeker - Home </title>
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
<style type = "text/css">
  a:visited{
  color:red;
  }
  a:hover{
  color:red;
  }
  a:active{
  color:red;
  }
  p{
  font-size:20px;
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
   <script defer src="index2.js"></script>
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
<jsp:include page="footer.jsp"/>
<div> job seeker home visit count:</div>
    <div class="website-counter2"></div>

<!-- Hitsteps TRACKING CODE - Manual 2022-06-27 - DO NOT CHANGE -->
<script type="text/javascript">(function(){var hstc=document.createElement('script'); hstc.src='https://cdnhst.xyz/code?code=fc8d92209456ba22d3dc030e75cd1d71';hstc.async=true;var htssc = document.getElementsByTagName('script')[0];htssc.parentNode.insertBefore(hstc, htssc);})();
</script><noscript><a href="http://www.hitsteps.com/"><img src="//cdnhst.xyz/code?mode=img&amp;code=fc8d92209456ba22d3dc030e75cd1d71" alt="Realtime blog tracking" width="1" height="1" />website tracking</a></noscript>
<!-- Hitsteps TRACKING CODE - DO NOT CHANGE -->
<script src="https://fobi.io/embed.js"></script>
<div id="embed-fobi"  data-fobi-id="83dyUj5" data-bot-title= "Chat" data-hd-bg= "#2980B9" data-hd-ti-clr= "#FFF" data-ct-pm= "#2980B9" data-ct-sc= "#FFF" data-ct-bot-img= "https://fobi.io/head.png" data-btn-offset= "Right: 30px" data-cb-offset= "Right: 30px" data-btn-img= "https://fobi.io/icon.png" data-btn-bg= "#2980B9" data-cb-height= "400px" data-cb-width= "330px" >
</div>
</body>
</html>