<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Airline Form</title>
<link href="resources/css/styles.css" rel="stylesheet" type="text/css" media="screen">

<style>
body{
	font-family:arial;
	font-size:14px;
}

@keyframes animatedBackground {
	0% { background-position: -682px 0; }
	100% {background-position: 0 0;  }
}
@-moz-keyframes animatedBackground {
	0% { background-position: -682px 0; }
	100% {background-position: 0 0;  }
}
@-webkit-keyframes animatedBackground {
	0% { background-position: -682px 0; }
	100% {background-position: 0 0;  }
}
@-ms-keyframes animatedBackground {
	0% { background-position: -682px 0; }
	100% {background-position: 0 0;  }
}
@-o-keyframes animatedBackground {
	0% { background-position: -682px 0; }
	100% {background-position: 0 0;  }
}

#animate-area { 
	width: 100%; 
	height: 100%; 
	background-image: url(resources/raw/e1.jpg);
	background-position: 0px 0px;

	animation: animatedBackground 50s linear infinite;
	-moz-animation: animatedBackground 50s linear infinite;
	-webkit-animation: animatedBackground 50s linear infinite;
	-ms-animation: animatedBackground 50s linear infinite;
	-o-animation: animatedBackground 50s linear infinite;
}
</style>
</head>
<body >


<div id="animate-area" >

<!--<div id="info"><p>${user.getFirstName()}</p></div>  -->


<div id="logo" ><img src="resources/raw/logo.png" height="100%"/><h1 style="color:white;">JET AIRWAYS</h1></div>

<div id="girl" class="girl"><div id="g0"><img src="resources/raw/girl.png" height="100%"/></div><div id="g1"><h3>Logged In as<br>${user.getFirstName()}</h3></div></div>
<div id="g3" class="g3"><div id="g0"><img src="resources/raw/logout.png" height="100%"/></div><div id="g4"><a href="logout">Log out</a></div></div>
<div id="flapper">
 <div id="flight" class="flight"><a href="Flights"><img src="resources/raw/flight.png" height="200px" /></a><div id="f1"><p>Check Flights<p></div></div>
  <div id="pilot" class="pilot"><a href="Flights"><img src="resources/raw/pilot.png" height="200px" /></a><div id="p1"><p>Check Pilots<p></div></div>
   <div id="passenger" class="passenger"><a href="Passengers"><img src="resources/raw/passenger.png" height="200px" /></a><div id="p2"><p>Check Passengers<p></div></div>
    <div id="ticket" class="ticket"><a href="Tickets"><img src="resources/raw/ticket.png" height="200px" /></a><div id="t1"><p>Check Tickets<p></div></div>
    
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
<div id="window" ><img src="resources/raw/window.png"/></div>
<div id="win" ><img src="resources/raw/wing.png"/></div> 
</div>

</body>
</html>