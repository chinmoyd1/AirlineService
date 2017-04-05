<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cancel Ticket</title>
<link href="resources/css/styles.css" rel="stylesheet" type="text/css" media="screen">
<script type="text/javascript" src="javaScript/test.js" ></script>
<style>
body{
	font-family:arial;
	font-size:14px;
}

@keyframes animatedBackground {
	0% { background-position: -1034px 0; }
	100% {background-position: 0 0;  }
}
@-moz-keyframes animatedBackground {
	0% { background-position: -1034px 0; }
	100% {background-position: 0 0;  }
}
@-webkit-keyframes animatedBackground {
	0% { background-position: -1034px 0; }
	100% {background-position: 0 0;  }
}
@-ms-keyframes animatedBackground {
	0% { background-position: -1034px 0; }
	100% {background-position: 0 0;  }
}
@-o-keyframes animatedBackground {
	0% { background-position: -1034px 0; }
	100% {background-position: 0 0;  }
}

#animate-area { 
	width: 100%; 
	height: 677px; 
	background-image: url(resources/raw/e6.jpg);
	background-position: 0px 0px;

	animation: animatedBackground 90s linear infinite;
	-moz-animation: animatedBackground 90s linear infinite;
	-webkit-animation: animatedBackground 90s linear infinite;
	-ms-animation: animatedBackground 90s linear infinite;
	-o-animation: animatedBackground 90s linear infinite;
}
</style>
</head>
<body >


<div id="animate-area" >

<!--<div id="info"><p>${user.getFirstName()}</p></div>  -->


<a href="airlineforms"><div id="logo" ><img src="resources/raw/logo.png" height="100%"/><h1 style="color:white;">JET AIRWAYS</h1></div></a>

<div id="girl" class="girl"><div id="g0"><img src="resources/raw/girl.png" height="100%"/></div><div id="g1"><h3>Logged In as<br>${user.getFirstName()}</h3></div></div>
<div id="g3" class="g3"><div id="g0"><img src="resources/raw/logout.png" height="100%"/></div><div id="g4"><a href="logout">Log out</a></div></div>


<div id="window" ><img src="resources/raw/window.png"/></div>
<div id="win" ><img src="resources/raw/wing.png"/></div> 
<div id="bigBox">


<div id="box0">
<div id="addFlightAndAirplane"><h2>Cancel Flight</h2></div>	
<form method="POST" action="CancelFlight">

<div id="cant">
	<input name="fid" type="text"title="Cancel a Flight with Id of" style="color:#E3E7E8;" 
    value="	Cancel a Flight with Id of" onfocus="inputFocus(this)" onblur="inputBlur(this)"></input>
</div>
	<button type="submit">Cancel Flight</button>
	

	</form>
</div>	

<div id="box1">
<div id="addFlightAndAirplane"><h2>Cancel Ticket</h2></div>	
<form method="POST" action="CancelTicket">

<div id="cant">
	<input name="tid" type="text"title="Cancel a Ticket with Id of" style="color:#E3E7E8;" 
    value="	Cancel a ticket with Id of" onfocus="inputFocus(this)" onblur="inputBlur(this)"></input>
</div>
	<button type="submit">Cancel Ticket</button>
	

	</form>
</div>	

<div id="box2">
<div id="addFlightAndAirplane"><h2>Cancel Passenger</h2></div>	
<form method="POST" action="CancelPassenger">

<div id="cant">
	<input name="pid" type="text"title="Cancel a Passenger with Id of" style="color:#E3E7E8;" 
    value="	Cancel a Passenger with Id of" onfocus="inputFocus(this)" onblur="inputBlur(this)"></input>
</div>
	<button type="submit">Cancel Passenger</button>
	

	</form>
</div>	

</div>

<div id="dp">
<ul>
    <li class="dropdown">
    <a href="#" class="dropbtn" style="color: #878B8C;">Add</a>
    <div class="dropdown-content">
      <a href="AddFlightAndAirplane" >Add Flight</a>
     
       <a href="PilotAdd">Add Pilot</a>
    
      <a href="PassengerAdd" >Add Passenger</a>
    </div>
     </li>
     <li><a href="BookTicket" style="color: #878B8C;">Booking</a></li>
  <li><a class="active" href="TicketCancel" style="color: #878B8C;">Cancelation</a></li>


 
</ul>
</div>
</div>
</body>
</html>