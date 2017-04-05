<%@ page import="java.util.*, com.airline.models.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Passengers List</title>
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
	background-image: url(resources/raw/e11.jpg);
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
<div id="addFlightAndAirplane"><h2>List of Passengers</h2>
<table>
<tr>
<th>Id</th>
<th>First Name</th>
<th>Last Name</th>
<th>Date Of Birth</th>
<th>Gender</th>
</tr>
<%
List<Passenger> pList = (List<Passenger>)request.getAttribute("passenger_list");
for(Integer i=0;i < pList.size();i++){
%>	

	<tr>
	<td><%= pList.get(i).getId()%> </td>
	<td><%= pList.get(i).getFirstName()%> </td>
	<td><%= pList.get(i).getLastName()%> </td>
	<td><%= pList.get(i).getDob()%> </td>
	<td><%= pList.get(i).getGender()%> </td>
	</tr>
	<tr>
		<td colspan="4">
			<%
				if(pList.get(i).getTickets().size()>0){
					
					List<Ticket> fList =(List<Ticket>) pList.get(i).getTickets();
					
					for(Integer k=0;k < pList.get(i).getTickets().size(); k++){
			%>
			<%= k+1 %>)<%= fList.get(k).getFlightDetail().getFlightOrigin() %> to <%= fList.get(k).getFlightDetail().getFlightDestinations()%> @<%= fList.get(k).getFlightDetail().getFlightTime() %><br />
			<% 	
				}
			}else{
			%>
				No Flight Tickets Yet.
			<%
			}
			%>
		</td> 
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
    <a href="#" class="dropbtn" style="color: #686869;">Add</a>
    <div class="dropdown-content">
      <a href="AddFlightAndAirplane" >Add Flight</a>
     
       <a href="PilotAdd">Add Pilot</a>
    
      <a href="PassengerAdd" >Add Passenger</a>
    </div>
     </li>
     <li><a href="BookTicket" style="color: #686869;">Booking</a></li>
  <li><a class="active" href="TicketCancel" style="color: #686869;">Cancelation</a></li>


 
</ul>
</div>
</body>
</html>