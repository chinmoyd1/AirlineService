<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Passenger</title>
<link href="resources/css/styles.css" rel="stylesheet" type="text/css" media="screen">
<script type="text/javascript" src="javaScript/test.js" ></script>
<style>
body{
	font-family:arial;
	font-size:14px;
}

@keyframes animatedBackground {
	0% {  background-position: -634px 0; }
	100% {background-position: 0 0; }
}
@-moz-keyframes animatedBackground {
	0% {  background-position: -634px 0; }
	100% {background-position: 0 0; }
}
@-webkit-keyframes animatedBackground {
	0% {  background-position: -634px 0; }
	100% {background-position: 0 0; }
}
@-ms-keyframes animatedBackground {
	0% {  background-position: -634px 0; }
	100% {background-position: 0 0; }
}
@-o-keyframes animatedBackground {
	0% {  background-position: -634px 0; }
	100% {background-position: 0 0; }
}

#animate-area { 
	width: 100%; 
	height: 677px; 
	background-image: url(resources/raw/e8.jpg);
	background-position: 0px 0px;

	animation: animatedBackground 70s linear infinite;
	-moz-animation: animatedBackground 70s linear infinite;
	-webkit-animation: animatedBackground 70s linear infinite;
	-ms-animation: animatedBackground 70s linear infinite;
	-o-animation: animatedBackground 70s linear infinite;
}
</style>
</head>
<body>
<div id="animate-area" >

<!--<div id="info"><p>${user.getFirstName()}</p></div>  -->


<a href="airlineforms"><div id="logo" ><img src="resources/raw/logo.png" height="100%"/><h1 style="color:white;">JET AIRWAYS</h1></div></a>

<div id="girl" class="girl"><div id="g0"><img src="resources/raw/girl.png" height="100%"/></div><div id="g1"><h3>Logged In as<br>${user.getFirstName()}</h3></div></div>
<div id="g3" class="g3"><div id="g0"><img src="resources/raw/logout.png" height="100%"/></div><div id="g4"><a href="logout">Log out</a></div></div>


<div id="window" ><img src="resources/raw/window.png"/></div>
<div id="win" ><img src="resources/raw/wing.png"/></div> 

<div id="box">
<form method="POST" action="AddPassenger" >
	<div id="addFlightAndAirplane"><h2>Add Passenger</h2></div>
	<div id="lbox">
	<div id="fn">
	<input name="first_name" type="text" title="First Name" style="color:#E3E7E8;" 
    value="First Name" onfocus="inputFocus(this)" onblur="inputBlur(this)"></input>

	<div id="d1">
    <input name="dob" type="text" title="Date of Birth" style="color:#E3E7E8;" 
    value="Date of Birth" onfocus="inputFocus(this)" onblur="inputBlur(this)"></input>
	</div>
	</div>
	
	</div>
	<div id="rbox">
	<div id="ln">
	<input name="last_name" type="text" title="Last Name" style="color:#E3E7E8;" 
    value="Last Name" onfocus="inputFocus(this)" onblur="inputBlur(this)"></input>
	</div>
	
	<div id=gendre>
	<select name="gender" type="text" title="Gender" style="color:#E3E7E8;" 
    value="Gender" onfocus="inputFocus(this)" onblur="inputBlur(this)">
    <option disabled selected value>Gender </option>
	<option value="Female">Female</option>
	<option value="Male">Male</option>
	</select>
	</div>
	</div>
	<div id="bton1">
	<button type="submit">Add Passenger</button>
	</div>
	</form>
</div>
</div>



	
</body>
</html>