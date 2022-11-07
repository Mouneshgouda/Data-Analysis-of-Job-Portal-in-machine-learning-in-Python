
<%@page import="java.sql.*"%>
<html>
<head>

   
   
    <link rel="stylesheet" href="styles1.css" />
 


<link rel="stylesheet" href="styles.css" type="text/css"/>
<title>Login</title>
</head>

<title>Online Job Portal</title>
<link rel="shortcut icon" href="http://www.iconarchive.com/download/i47277/avosoft/warm-toolbar/user.ico">
<style>
@import
	url("https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900")
	;

*, ::before, ::after {
	box-sizing: border-box;
}

body {
	margin: 0;
	padding: 0.5em 0.5em 0.5em 0;
	height: 100vh;
	overflow: hidden;
	font-family: 'Montserrat', sans-serif;
	font-size: 62.5%;
	color: #fff;
	background-color: ;
}

::-webkit-scrollbar {
	width: 8px;
	height: 6px;
}

::-webkit-scrollbar-track {
	background-color: #1d1e22;
}

::-webkit-scrollbar-thumb {
	border-radius: 1em;
	background-color: #b3b3b3;
}

::-webkit-scrollbar-thumb:hover {
	background-color: #df2359;
}

a {
	text-decoration: none;
	color: #fff;
}

a:hover {
	color: #df2359;
}

h1, h2, header a {
	text-transform: uppercase;
}

.smooth {
	margin: 0 auto;
	height: 100%;
	overflow-x: hidden;
	overflow-y: scroll;
	scroll-behavior: smooth;
}

header, footer {
	position: relative;
	padding: 2em 3em;
	display: flex;
	align-items: center;
	font-size: 1rem;
}

header {
	position: -webkit-sticky;
	position: sticky;
	top: 0;
	z-index: 2;
	height: 10vh;
	background-color: #1d1e22;
}

header h3 {
	position: relative;
	margin: 0;
	font-size: 2rem;
	color: #df2359;
}

header ul {
	list-style-type: none;
	padding: 0;
	margin: 1em 0;
	display: flex;
	width: 100%;
	justify-content: flex-end;
	align-items: center;
}

header ul li {
	position: relative;
	margin: 0 1em;
	transition: all 0.2s linear;
}

header ul li a {
	font-weight: 500;
	color: #fff;
}

header ul li::before {
	position: absolute;
	content: '';
	top: calc(100% + 4px);
	left: 0;
	width: 20px;
	height: 2px;
	background-color: #fff;
	transform-origin: 0 100%;
	transform: rotate(-5deg);
	transition: all 0.2s ease-out;
}

header ul li:hover::before {
	width: 100%;
	background-color: #df2359;
}

section {
	position: relative;
	display: flex;
	min-height: 100vh;
	padding: 2em 3em;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	font-size: 1rem;
	background-color: #191a1d;
}

section:nth-child(odd) {
	background-color: #1d1e22;
}

section#one {
	background-image:
		url("https://www.snapphotography.co.nz/wp-content/uploads/New-Zealand-Landscape-Photography-prints-26.jpg");
	background-position: center;
	background-size: cover;
	color: #fff;
}

section#one::after {
	position: absolute;
	content: '';
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	background-image: linear-gradient(0deg, rgba(29, 30, 34, 0.3), #1d1e22);
}

section#two .blocks, section#four .blocks {
	padding: 2em 0;
	display: flex;
	width: 100%;
	flex-flow: row wrap;
	justify-content: space-around;
	align-items: center;
}

section#two .blocks .block, section#four .blocks .block {
	margin: 0 auto;
	display: flex;
	width: 23%;
	height: 150px;
	justify-content: center;
	align-items: center;
	border-radius: 1em;
	background-color: #191a1d;
	transition: transform 0.2s linear;
}

section#two .blocks .block:hover, section#four .blocks .block:hover {
	transform: translateY(-10px);
}

section#four .blocks .block {
	padding: 0.25em 1em;
	width: 49%;
	height: auto;
	flex-flow: column wrap;
	background-color: #191a1d;
}

section#four .dots {
	margin-top: 1em;
	display: flex;
	width: 25%;
	align-items: center;
	justify-content: space-around;
}

section#four .dot {
	width: 12px;
	height: 12px;
	cursor: pointer;
	border-radius: 50%;
	background-color: #fff;
}

section#four .dot:hover {
	background-color: #df2359;
}

section h2 span {
	color: #df2359;
}

.content {
	position: relative;
	z-index: 1;
	display: flex;
	align-items: center;
}

.content h1 {
	position: relative;
	font-size: 3rem;
}

.content h1::before {
	position: absolute;
	content: '';
	top: calc(100% + 4px);
	left: 0;
	width: 10%;
	height: 2px;
	background-color: #fff;
	transform-origin: 0 100%;
	transform: rotate(-5deg);
	transition: all 0.2s ease-out;
}

.content p.lead {
	font-size: 1.25rem;
}

.content .blur {
	position: relative;
	overflow: hidden;
	margin: auto;
	margin-left: 2em;
	padding: 1em;
	width: 100%;
	height: 350px;
	border-radius: 0.35em;
}

.content .blur::before {
	position: absolute;
	content: '';
	top: -25%;
	left: -25%;
	width: 150%;
	height: 150%;
	box-shadow: inset 0 0 0 600px rgba(255, 255, 255, 0.3);
	filter: blur(10px);
}

form {
	position: relative;
	z-index: 3;
	padding: 1em;
	display: flex;
	width: 100%;
	height: 100%;
	flex-direction: column;
	align-items: center;
	justify-content: space-around;
	border: 2px solid #fff;
	border-radius: 0.35em;
}

form img {
	width: 64px;
	height: 64px;
}

form input {
	margin-bottom: 1em;
	min-height: 3em;
	font-size: 1em;
	color: #fff;
	border: 0;
	border-bottom: 2px solid #fff;
	background: none;
}

form input::placeholder {
	position: relative;
	top: 0;
	color: inherit;
	transition: all 0.2s linear;
}

form input:focus {
	outline: none;
}

form input:focus::placeholder {
	top: -1.25em;
	font-size: 0.825rem;
}

form .button {
	position: relative;
	margin-top: 1em;
	padding: 1em 3em;
	text-transform: uppercase;
	display: block;
	font-size: 1rem;
	cursor: pointer;
	color: #fff;
	border: 0;
	border-radius: 0.35em;
	background-color: #df2359;
}

footer {
	padding-bottom: 1em;
	width: 100%;
	min-height: 35vh;
	flex-direction: column;
	justify-content: space-around;
	background-color: #191a1d;
}

footer h3 {
	position: relative;
}

footer h3::before {
	position: absolute;
	content: '';
	top: calc(100% + 4px);
	left: 0;
	width: 20px;
	height: 2px;
	background-color: #df2359;
	transform-origin: 0 100%;
	transform: rotate(-5deg);
	transition: all 0.2s ease-out;
}

footer h5 {
	text-transform: uppercase;
}

footer h5.follow {
	color: #df2359;
}

footer ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

footer ul li {
	line-height: 1.5;
	transition: transform 200ms ease-in;
	will-change: transform;
}

footer ul li:hover {
	transform: translateX(5px);
}

footer .widgets, footer .copy {
	display: flex;
	width: 100%;
	justify-content: space-between;
	align-items: center;
}

footer .widgets .widget, footer .copy .widget {
	display: flex;
	flex-direction: column;
	align-items: center;
}

footer .copy {
	margin-top: 1em;
	border-top: 2px solid #666;
}

footer .copy p {
	margin: 0.75em 0 0;
}

footer .copy span {
	position: relative;
	display: inline-block;
	color: #df2359;
	animation: hearts 0.6s cubic-bezier(0.18, 0.89, 0.29, 1.05) infinite;
}

@media ( max-width : 991px) {
	.blur {
		display: none;
	}
	.content {
		text-align: center;
	}
	.content h1::before {
		display: none;
	}
}

@
-moz-keyframes hearts { 50% {
	transform: scale(1.4);
}

}
@
-webkit-keyframes hearts { 50% {
	transform: scale(1.4);
}

}
@
-o-keyframes hearts { 50% {
	transform: scale(1.4);
}

}
@
keyframes hearts { 50% {
	transform: scale(1.4);
}
}
img{
position:absolute;
top:15px;
}
legend{
font-size:30px;
}
fieldset{
position:relative;
bottom:80px;
}
</style>
<script type="text/javascript" src="jquery-3.5.1.js"></script>

<!--  <script type="text/javascript" src="index.js"></script> -->
 <script defer src="index.js"></script>
</head>
<body>
  
	<div class="smooth">
		<header>
			<img src="chWo7d.png">
			
			<ul>
				<li><a href="#one">Home</a></li>
				<li><a href="#two">AboutUs</a></li>
				<li><a href="#bottom">ContactUS</a></li>
			</ul>
		</header>
		<section id="one">
			<div class="content">
				<div>
				
				
 <fieldset><legend>Login</legend>
 
<form name="form1" method="post" action="loginaction.jsp">
<table> 
<tr>
 <td align='center' colspan=2><input type="radio" name="usertype" value="jobseeker" required>JobSeeker <input type="radio" name="usertype" value="recruiter" required>Recruiter <input type="radio" name="usertype" value="admin" required>Admin </td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td>Username</td>
<td><input name="username" type="text" placeholder="Username" required></td>
</tr>
<tr>
<td>Password</td>
<td><input name="password" type="password" placeholder="Password" required></td>
</tr>
<tr>
<td></td>
<td  align="center" colspan=2><input type="submit" name="Submit" value="Login" id="login"></td>
</tr>
</table> 
<div> Website visit count:</div>
    <div class="website-counter"></div>
    <!-- <span id="visitCount">visitCount</span> -->
   
   
   <!--  <button id="reset">Reset</button>  -->  
 <%--  <% try{
	  
	 String pagecount= request.getParameter("visitCount"); 
System.out.println("page count"+pagecount);
 String page_name="1logincfgfjhry";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/job?characterEncoding=latin1","root","Jyothi2001@"); //Create connection using your ID and Password
    Statement st1=con1.createStatement();
/*     ResultSet res=null;
  String data;
  data="select * from visitcount";
  
  res=st1.executeQuery(data);
  System.out.println("database"+res);
    /* st1.executeUpdate("insert into visitcount values('"+pagename+"','"+count+"')"); */
  /*(  while(res.next()){
    	System.out.println("databasevalue :"+res.getString(1)); */
  /*   if(page_name.equals(res.getString(1))){
    	System.out.println("databasevaluecompare "+res.getString(1));
   	st1.executeUpdate("update visitcount set pagename='"+page_name+"',pagecount='"+visitCount+"'where pagename='"+page_name+"'");
    }  */
 
   /*  else{*/
    st1.executeUpdate("insert into visitcount values('"+page_name+"','"+pagecount+"')");
    st1.close();
    con1.close();
    /* }
    }  */
    }
catch(Exception error){
    out.println(error);}
%>       --%>                                
</form>
<a href="registration.jsp">Click here to register an Account</a>
</fieldset>
<%-- <jsp:include page="footer.jsp"/>

</center> --%>
					
				</div>
			</div>
		</section>
		<section id="two">
			<h2>
				<span> AboutUs</span>
			</h2>
			<p>WHO WE ARE<br>JobPortal is a global online employment solution for people seeking jobs and the employers who need great people.
			 We've been doing this for more than 20 years, and have expanded from our roots as a "job board" to a global provider of a full array of job seeking, 
			 career management, recruitment and talent management products and services.
			At the heart of our success and our future is innovation: We are changing the way people think about work,
			 and we're helping them actively improve their lives and their workforce performance with new technology, tools and practices</p>
			<div class="blocks">
				<div class="block">
					<p>JobPortal Announces 2018 Best Companies for Veterans List</p>
				</div>
				<div class="block">
					<p>JobPortal Strengthens Staffing Leadership Team Ahead of Staffing World 2018</p>
				</div>
				<div class="block">
					<p>JobPortal Announces RakeshGowda as Chief Technology Officer</p>
				</div>
				<div class="block">
					<p>JobPOrtal returns to HR Tech to preview new and improved offerings</p>
				</div>
			</div>
			<p>WHY JOBPORTAL?<br> We've designed an integrated approach that focuses our more innovative technology and expertise into powerful, easy to use solutions. Why? To help you find not only the best quality candidates, but more of them. To streamline the process so you can save time and money. And to help you make smarter decisions to improve your return on investment.
			Basically, we want to give you the ability to hire like no one else can.</p>
		</section>
		<section id="three">
			<h2><span> Services</span>
			</h2>
			<p>Jobs by Skill-Call Center Jobs | Mechanical Engineering Jobs | Biotechnology Jobs | Nursing Jobs | BPO Jobs | Networking Jobs | MBA Jobs | Java Jobs | SEO Jobs | SAP Jobs<br>
			Jobs by Location-Jobs in Delhi | Jobs in Bangalore | Jobs in Mumbai |  Jobs in Chennai | Jobs in Hyderabad | Jobs in Kolkata | Jobs in Pune | Jobs in Chandigarh | Jobs in Lucknow | Jobs in Coimbatore<br>
			Jobs by Function-Banking Jobs | Biotech Jobs | Airlines Jobs | HR Jobs | Accounts Jobs | Supply Chain Jobs | Legal Jobs | Marketing Jobs | Telecom Jobs | Hotels Jobs<br>
			Jobs by Industry-IT Jobs | Pharmaceuticals Jobs | Travel Jobs | Oil and Gas Jobs | FMCG Jobs | Construction Jobs | Chemicals Jobs | Media Jobs | Retailing Jobs | PR Jobs<br>
			Career Courses-Technology Courses | Management Courses | Accounting Courses | Marketing Courses | Law & Security Courses | Quality Testing Courses | Recruitment Course<br>
			Career Center-Career Management Tips | Interview Tips | Work Life Balanace Tips | Resume Cover & Letters | Salary Negotiation | How to Job Search | Career Tips for Women | How to Save Tax<br>
			Govt. Jobs-Teaching Jobs | Defence Jobs | Bank Jobs | Railway Jobs | UPSC Jobs | SSC Jobs | Law Jobs | Engineering Jobs | Post Graduate Jobs | Ph.D Jobs<br>
			Career Services-Xpress Resume+ | Right Resume | Career Booster | Resume Highlighter<br>
			All Jobs-Walkin Jobs | Contract Jobs | Placement Jobs | Jobs for Women | Startup Jobs | International Jobs</p>
		</section>
		
		<footer id="bottom">
			<div class="widgets">
				<h3>JOB PORTAL</h3>
				<div class="widget">
					<h5 class="follow">Follow me</h5>
					<ul>
						<li><a href=""
							target="blank">Facebook</a></li>
						<li><a href=""
							target="blank">Instagram</a></li>
						<li><a href=""
							target="blank">Twitter</a></li>
						
				</div>
				<div class="widget">
					<h5>Toll Free</h5>
					<ul>1-800-4196666</li>
						<li>
						<li>+91-40-66116611 </li>
						
					</ul>
				</div>
				<div class="widget">
					<h5>Mail-Id</h5>
					<ul>
						<li>info@JobPortal.com</li>
						<li>report@JobPortal.com</li>
						<li>contact@JobPortal.com</li>
						<li>complain@JobPortal.com</li>
					</ul>
				</div>
				<div class="widget">
					<h5>Beware of Fraudsters:  </h5>
					<ul>
						<li>JobPortal does not authorize any agency/partner<br> to collect fees against job offers.</li>
						<li>Report any suspicious activity to  </li>
						<li>info@JobPortal.com</li>
						<li>spam@JobPortal.com</li>
					</ul>
				</div>
			</div>
			<div align="center">
<%-- <%
Integer counter = (Integer)application.getAttribute("counter");
if (counter ==null || counter == 0)
{
out.println("Welcome to my website!");
counter = 1;
}
else
{
out.println("\n Welcome back to my website!");
counter++;
}
application.setAttribute("counter", counter);

out.println("\t Total Number of visitors : \n "+counter);

String pagecount = Integer.toString(counter);
System.out.println("first: "+pagecount);
%> --%>
<%-- <% 
try{
	/* String pagecount= request.getParameter(count); */
	System.out.println("page count"+pagecount);
	String page_name="login";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/job?characterEncoding=latin1","root","Jyothi2001@"); //Create connection using your ID and Password
    Statement st1=con1.createStatement();
    ResultSet res=null;
  String data;
  data="select * from visitcount";
  
  res=st1.executeQuery(data);
  System.out.println("database"+res);
    /* st1.executeUpdate("insert into visitcount values('"+pagename+"','"+count+"')"); */
    while(res.next()){
    	System.out.println("databasevalue :"+res.getString(1));
    if(page_name.equals(res.getString(1))){
    	System.out.println("databasevaluecompare "+res.getString(1));
    	st1.executeUpdate("update visitcount set pagename='"+page_name+"',pagecount='"+pagecount+"'where pagename='"+page_name+"'");
    } 
 
   /*  else{
    st1.executeUpdate("insert into visitcount values('"+page_name+"','"+pagecount+"')");
    st1.close();
    con1.close();
    } */
    } 
    }
    
   
  /*   ResultSet rs1=st1.executeQuery("SELECT * FROM VISIT COUNT");
    while(rs1.next()){

    //-----------------------------Then, Create an InsertQuery using a String:---------------------

    String InsertQuery = "insert into contact_messages (c_name,email,txtmessage) values('"+your_name+"','"+your_Email+"','','"+your_txtMessage+"');";

    //-----------------------------Finally, Execute your Insert Query:-----------------------------

    st1.executeUpdate(InsertQuery);}} */

catch(Exception error){
    out.println(error);}
%> --%>
</div>
			
				<a href="#one">Scroll top &#x2191;</a>
			</div>
		</footer>
	</div>
</body>
</html>