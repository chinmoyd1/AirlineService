<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Pilot To Flight</title>
<link href="resources/css/styles.css" rel="stylesheet" type="text/css" media="screen">
<script type="text/javascript" src="javaScript/test.js" ></script>
<style>
body{
	font-family:arial;
	font-size:14px;
}

@keyframes animatedBackground {
	0% {  background-position: -1194px 0; }
	100% {background-position: 0 0; }
}
@-moz-keyframes animatedBackground {
	0% {  background-position: -1194px 0; }
	100% {background-position: 0 0; }
}
@-webkit-keyframes animatedBackground {
	0% {  background-position: -1194px 0; }
	100% {background-position: 0 0; }
}
@-ms-keyframes animatedBackground {
	0% {  background-position: -1194px 0; }
	100% {background-position: 0 0; }
}
@-o-keyframes animatedBackground {
	0% {  background-position: -1194px 0; }
	100% {background-position: 0 0; }
}

#animate-area { 
	width: 100%; 
	height: 677px; 
	background-image: url(resources/raw/e3.jpg);
	background-position: 0px 0px;

	animation: animatedBackground 170s linear infinite;
	-moz-animation: animatedBackground 170s linear infinite;
	-webkit-animation: animatedBackground 170s linear infinite;
	-ms-animation: animatedBackground 170s linear infinite;
	-o-animation: animatedBackground 170s linear infinite;
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
<div id="addFlightAndAirplane"><h2>Add Pilot To Flight</h2>	</div>
<form method="POST" action="CreatePilotAndAddToFLight">

<div id="lbox">
<div id="fsnme">
	<input name="first_name" type="text" title="First Name" style="color:#E3E7E8;" 
    value="First Name" onfocus="inputFocus(this)" onblur="inputBlur(this)"></input>
</div>
<div id="lsnme">
	<input name="last_name" type="text" title="Last Name" style="color:#E3E7E8;" 
    value="Last Name" onfocus="inputFocus(this)" onblur="inputBlur(this)"></input>
</div>
</div>
<div id="rbox">
<div id="lis">
	<input name="license" type="text" title="License" style="color:#E3E7E8;" 
    value="License" onfocus="inputFocus(this)" onblur="inputBlur(this)"></input>
</div>	
<div id="cap">
	<select name="pilot_rank" title="Pilot Rank" style="color:#E3E7E8;" 
   onfocus="inputFocus(this)" onblur="inputBlur(this)">
   <option disabled selected value>Pilot Rank </option>
	<option value="Captain">Captain</option>
	<option value="First_officer">First Officer</option>
	<option value="Junior_officer">Junior Officer</option>
	</select>
</div>
	<div id="flid">
	<input name="fid" type="text" title="Flight Id" style="color:#E3E7E8;" 
    value="Flight Id" onfocus="inputFocus(this)" onblur="inputBlur(this)"></input>
    </div>
</div>	
<div id="bton1">
	<button type="submit">Add Pilot To Flight</button>
</div>	
	</form>
</div>
<div id="dp">
<ul>
    <li class="dropdown">
    <a href="#" class="dropbtn" style="color: #19191A;">Add</a>
    <div class="dropdown-content">
      <a href="AddFlightAndAirplane" >Add Flight</a>
     
       <a href="PilotAdd">Add Pilot</a>
    
      <a href="PassengerAdd" >Add Passenger</a>
    </div>
     </li>
     <li><a href="BookTicket" style="color: #19191A;">Booking</a></li>
  <li><a class="active" href="TicketCancel" style="color: #19191A;">Cancelation</a></li>


 
</ul>
</div>
</div>
</body>
</html>