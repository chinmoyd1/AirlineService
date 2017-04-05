<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
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


<div id="textbox1">
<h1>Sign Up</h1>	
<form method="POST" action="AddUser">

	
	<input name="fname" type="text" title="Firstname" style="color:#B6B9BA;" 
    value="First Name" onfocus="inputFocus(this)" onblur="inputBlur(this)"></input>
	
	
	<input name="lname" type="text" title="Lastname" style="color:#B6B9BA;" 
    value="Last Name" onfocus="inputFocus(this)" onblur="inputBlur(this)"></input>
	
	
	<input name="db" type="text" title="Date of Birth" style="color:#B6B9BA;" 
    value="Date of Birth" onfocus="inputFocus(this)" onblur="inputBlur(this)"></input>
	
	
	<select name="gend" title="Gender" style="color:#B6B9BA;" 
    value="Gender" onfocus="inputFocus(this)" onblur="inputBlur(this)">
    <option disabled selected value>Gender</option>
	<option value="Female">Female</option>
	<option value="Male">Male</option>
	</select>


	<input name="desig" type="text" title="Designation" style="color:#B6B9BA;" 
    value="Designation" onfocus="inputFocus(this)" onblur="inputBlur(this)"></input>
	
	
	<input name="uname" type="text" title="User Name" style="color:#B6B9BA;" 
    value="User Name" onfocus="inputFocus(this)" onblur="inputBlur(this)"></input>
	
	
	<input name="pass" type="password" title="Password" style="color:#B6B9BA;" 
    value="Password" onfocus="inputFocus(this)" onblur="inputBlur(this)"></input>
	
	<div id="bton">
	<button type="submit">Sign Up</button>
	</div>
	</form>
	
	</div>
</div>	
</body>
</html>
	
	
	
