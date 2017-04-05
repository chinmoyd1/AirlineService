<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Flight</title>
<link href="resources/css/styles.css" rel="stylesheet" type="text/css" media="screen">
<script type="text/javascript" src="javaScript/test.js" ></script>
<style>
body{
	font-family:arial;
	font-size:14px;
}

@keyframes animatedBackground {
	0% { background-position: -554px 0; }
	100% {background-position: 0 0;  }
}
@-moz-keyframes animatedBackground {
	0% { background-position: -554px 0; }
	100% {background-position: 0 0;  }
}
@-webkit-keyframes animatedBackground {
	0% { background-position: -554px 0; }
	100% {background-position: 0 0;  }
}
@-ms-keyframes animatedBackground {
	0% { background-position: -554px 0; }
	100% {background-position: 0 0;  }
}
@-o-keyframes animatedBackground {
	0% { background-position: -554px 0; }
	100% {background-position: 0 0;  }
}

#animate-area { 
	width: 100%; 
	height: 677px; 
	background-image: url(resources/raw/e9.jpg);
	background-position: 0px 0px;

	animation: animatedBackground 70s linear infinite;
	-moz-animation: animatedBackground 70s linear infinite;
	-webkit-animation: animatedBackground 70s linear infinite;
	-ms-animation: animatedBackground 70s linear infinite;
	-o-animation: animatedBackground 70s linear infinite;
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

<div id="box">

<div id="addFlightAndAirplane"><h2>Add Flights And Airplane</h2></div>
<form method="POST" action="AddFlight">
<div id="lbox">
<div id="from">
	<select name="from" title="From" style="color:#E3E7E8;" 
   onfocus="inputFocus(this)" onblur="inputBlur(this)">
   <option disabled selected value>From </option>
	<option value="San_Francisco">San Francisco</option>
	<option value="Los_Angeles">Los Angeles</option>
	<option value="New_York">New York</option>
	<option value="London">London</option>
	<option value="Rome">Rome</option>
	<option value="Amsterdam">Amsterdam</option>
	</select>
</div>	

<div id="tof">	<h4>Time of Flight</h4></div>
	
	<div id="year">	
	<select name="year"title="Year" style="color:#E3E7E8;" 
   onfocus="inputFocus(this)" onblur="inputBlur(this)">
	<option value="2016">2016</option>
	<option value="2017">2017</option>
	<option value="2018">2018</option>
	<option value="2019">2019</option>
	<option value="2020">2020</option>
	</select>
	</div>
	
	<div id="month">
	<select name="month" title="Month" style="color:#E3E7E8;" 
    onfocus="inputFocus(this)" onblur="inputBlur(this)">
	<option value="0">January</option>
	<option value="1">February</option>
	<option value="2">March</option>
	<option value="3">April</option>
	<option value="4">May</option>
	<option value="5">June</option>
	<option value="6">July</option>
	<option value="7">August</option>
	<option value="8">September</option>
	<option value="9">October</option>
	<option value="10">November</option>
	<option value="11">December</option>
	</select>
	</div>
	<div id="day">
	<input name="day" type="text" title="Day of Month" style="color:#E3E7E8;" 
    value="Day of Month" onfocus="inputFocus(this)" onblur="inputBlur(this)"></input>
	</div>
	
	<div id="hour">
	<input name="hour" type="text" title="Hour of Day" style="color:#E3E7E8;" 
    value="Hour of Day(0-23)" onfocus="inputFocus(this)" onblur="inputBlur(this)"></input>
	</div>
	
	<div id="minute">
	<input name="minute" type="text" title="Minute" style="color:#E3E7E8;" 
    value="Minute(0-59)" onfocus="inputFocus(this)" onblur="inputBlur(this)"></input>
	</div>
	
	</div>
	
<div id="rbox">
<div id="to">
	<select name="to" title="To" style="color:#E3E7E8;" 
   onfocus="inputFocus(this)" onblur="inputBlur(this)">
<!--	<option value="0">January</option>
	<option value="1">February</option>
	<option value="2">March</option>
	<option value="3">April</option>
	<option value="4">May</option>
	<option value="5">June</option>
	<option value="6">July</option>
	<option value="7">August</option>
	<option value="8">September</option>
	<option value="9">October</option>-->
	<option disabled selected value>To </option>
	<option value="San_Francisco">San Francisco</option>
	<option value="Los_Angeles">Los Angeles</option>
	<option value="New_York">New York</option>
	<option value="London">London</option>
	<option value="Rome">Rome</option>
	<option value="Amsterdam">Amsterdam</option>
	</select>
	</div>	

	<div id="airplane">	<h4>Airplane</h4></div>
	<div id="planeSeating">
	<input name="airplane_seating" type="text" title="Airplane Seating" style="color:#E3E7E8;" 
    value="Airplane Seating" onfocus="inputFocus(this)" onblur="inputBlur(this)"	></input>
	</div>
	<div id="planeMake">
	<input name="airplane_make" type="text" title="Plane Make" style="color:#E3E7E8;" 
    value="Plane Make" onfocus="inputFocus(this)" onblur="inputBlur(this)"></input>
    </div>
	
	<div id="planeModel">
	<input name="airplane_model" type="text" title="Model Name" style="color:#E3E7E8;" 
    value="Model Name" onfocus="inputFocus(this)" onblur="inputBlur(this)"></input>
	</div>
	
	<div id="price">
	<input name="price" type="text" title="Ticket Price" style="color:#E3E7E8;" 
    value="Ticket Price" onfocus="inputFocus(this)" onblur="inputBlur(this)"></input>
	</div>
</div>	

	
	<div id="bton">
	<button type="submit">Add Flight And Airplane</button>
	</div>
	
	</form>
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