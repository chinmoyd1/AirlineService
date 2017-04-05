<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log In</title>
<link href="resources/css/vid.css" rel="stylesheet" type="text/css" media="screen">
<script type="text/javascript" src="javaScript/test.js" ></script>
<style>
body{
	font-family:arial;
	font-size:14px;
}
</style>
</head>
<body>
<div id="bdy">
<div id="logo" ><img src="resources/raw/logo.png" height="100%"/><h1 style="color:white;">JET AIRWAYS</h1></div>
<div class="fullscreen-bg">
    <video loop muted autoplay poster="resources/videos/poster1.jpg" class="fullscreen-bg__video">
        <source src="resources/videos/airline.mp4" type="video/mp4">
        <source src="resources/videos/airline.webm" type="video/webm">
    </video>
</div>


<div id="errors"><%
	if(request.getAttribute("errors") != null){
%>
<div id="errors"> 
<% if(request.getAttribute("uname_error") != null){ %>
	<div id="U">User Name ERROR</div>
<%} %>
<% if(request.getAttribute("pword_error") != null){ %>
    <div id="P">Password ERROR</div>
<%} %>
</div>
<%
}
%>




<div id="textbox">
<h1>Employee Login</h1>	
<form method="POST" action="LogIn">

	<div id="uname">
	<input name="username" type="text" title="Username" style="color:#B6B9BA;" 
    value="User Name" onfocus="inputFocus(this)" onblur="inputBlur(this)"/>
    
    <div id="user"><img src="resources/raw/user.png" height="20px" /></div>
	
	</div>
	<div id="pwd">
	<input name="password" type="password" title="Password" style="color:#B6B9BA;" 
    value="Password" onfocus="inputFocus(this)" onblur="inputBlur(this)"/>
    
    <div id="lock"><img src="resources/raw/lock.png" height="20px" /></div>
    
	</div>
	<div id="forgot"><a href="#">Forgot password?</a><div id="fill"><p style="color:#E32D09 ; font-size:15px;"><b>Contact Your <br>Database Administrator.</b></p></div></div>
	
	
	
	<div id="bton">
	<button type="submit">Login</button>
	</div>
	</form>
	
</div>
</div>	
</body>
</html>