<%@ page import="java.util.*, com.airline.models.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Ticket List</title>
<link href="resources/css/styles.css" rel="stylesheet" type="text/css" media="screen">

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
	height: 100%; 
	background-image: url(resources/raw/e12.jpg);
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


<a href="airlineforms"><div id="logo" ><img src="resources/raw/logo.png" height="100%"/><h1 style="color:white;">JET AIRWAYS</h1></div></a>

<div id="girl" class="girl"><div id="g0"><img src="resources/raw/girl.png" height="100%"/></div><div id="g1"><h3>Logged In as<br>${user.getFirstName()}</h3></div></div>
<div id="g3" class="g3"><div id="g0"><img src="resources/raw/logout.png" height="100%"/></div><div id="g4"><a href="logout">Log out</a></div></div>

<div id="window" ><img src="resources/raw/window.png"/></div>
<div id="win" ><img src="resources/raw/wing.png"/></div> 
<div id="box">
<div id="addFlightAndAirplane"><h2>List of Tickets</h2>
<table>
<tr>
<th>Id</th>
<th>First Name</th>
<th>Last Name</th>
<th>Date Of Birth</th>
<th>Gender</th>
<th>Flight Origin</th>
<th>Flight Destination</th>
<th>Flight Time</th>
<th>Price</th>
</tr>
<%
List<Ticket> tList = (List<Ticket>)request.getAttribute("ticket_list");
for(Integer i=0;i < tList.size();i++){
%>	

	<tr>
	<td><%= tList.get(i).getId()%> </td>
	<td><%= tList.get(i).getPassengerDetail().getFirstName()%> </td>
	<td><%= tList.get(i).getPassengerDetail().getLastName()%> </td>
	<td><%= tList.get(i).getPassengerDetail().getDob()%> </td>
	<td><%= tList.get(i).getPassengerDetail().getGender()%> </td>
	<td><%= tList.get(i).getFlightDetail().getFlightOrigin()%> </td>
	<td><%= tList.get(i).getFlightDetail().getFlightDestinations()%> </td>
	<td><%= tList.get(i).getFlightDetail().getFlightTime()%> </td>
	<td><%= tList.get(i).getFlightDetail().getPrice()%> </td>
	</tr>
<%
	} 
%>
</table>
</div>
</div>
<div id="dp">
<ul>
    <li class="dropdown">
    <a href="#" class="dropbtn" style="color: #363636;">Add</a>
    <div class="dropdown-content">
      <a href="AddFlightAndAirplane" >Add Flight</a>
     
       <a href="PilotAdd">Add Pilot</a>
    
      <a href="PassengerAdd" >Add Passenger</a>
    </div>
     </li>
     <li><a href="BookTicket" style="color: #363636;">Booking</a></li>
  <li><a class="active" href="TicketCancel" style="color: #363636;">Cancelation</a></li>


 
</ul>
</div>
</body>
</html>