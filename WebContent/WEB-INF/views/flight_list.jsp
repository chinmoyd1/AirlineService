<%@ page import="java.util.*, com.airline.models.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Flights List</title>
<link href="resources/css/styles.css" rel="stylesheet" type="text/css" media="screen">

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
	height: 100%; 
	background-image: url(resources/raw/e10.jpg);
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
<div id="addFlightAndAirplane"><h2>List of Flights</h2></div>


<div style="overflow-x:auto;">
<table>
<tr>
<th>Id</th>
<th>From</th>
<th>To</th>
<th>Time</th>
<th>Price</th>
<th>Airplane</th>
<th>Seating</th>
<th>Number of Pilots</th>
<th>Pilot Names</th>
</tr>
<%
List<Flight> fList = (List<Flight>)request.getAttribute("flight_list");
for(Integer i=0;i < fList.size();i++){
%>	

	<tr>
	<td><%= fList.get(i).getId()%> </td>
	<td><%= fList.get(i).getFlightOrigin()%> </td>
	<td><%= fList.get(i).getFlightDestinations()%> </td>
	<td><%= fList.get(i).getFlightTime()%> </td>
	<td><%= fList.get(i).getPrice()%> </td>
	
	<td><%= fList.get(i).getAirplaneDetail().getPlaneMake() +" "+ fList.get(i).getAirplaneDetail().getModelName()%></td>
	<td><%=fList.get(i).getAirplaneDetail().getSeatingCapacity()%></td>
	
	<td>
		<%
			if(fList.get(i).getPilots()!= null ){
		%>		
			<%=fList.get(i).getPilots().size()%> pilots
		<%	
		}else{
		%>
			No Pilots Yet
		<%  
		}
		%>
	</td>
	<td>
			<%
			if(fList.get(i).getPilots()!= null ){
				List<Pilot> pList = (List<Pilot>) fList.get(i).getPilots();
				for(Integer j=0;j < pList.size();j++){
		%>	
			<%=
				(j+1)+") "+ pList.get(j).getFirstName()+" "+pList.get(j).getLastName()
				+" ("+pList.get(j).getPilotRank()+")"+"</br>"
			%>	
			
		<%	
			}
		}
		%>
	</td>
	</tr>
	<tr>
		<td colspan="9">
		<%	if(fList.get(i).getTickets().size() > 0){
				List<Ticket> ticketList = (List<Ticket>) fList.get(i).getTickets();
				
				for(Integer k = 0; k < ticketList.size(); k++){
		%>
			<%= k+1 +") "+(String)ticketList.get(k).getPassengerDetail().getFirstName()+" "+(String)ticketList.get(k).getPassengerDetail().getLastName() %><br/>
		<%
				 }
		   }else{
		%>
		No Passengers on this flight yet.
		<% } %>
		</td>
	</tr>
	<%} %>
</table>
</div>
</div>
<div id="dp">
<ul>
    <li class="dropdown">
    <a href="#" class="dropbtn" style="color: #4B4C4D;">Add</a>
    <div class="dropdown-content">
      <a href="AddFlightAndAirplane" >Add Flight</a>
     
       <a href="PilotAdd">Add Pilot</a>
    
      <a href="PassengerAdd" >Add Passenger</a>
    </div>
     </li>
     <li><a href="BookTicket" style="color: #4B4C4D;">Booking</a></li>
  <li><a class="active" href="TicketCancel" style="color: #4B4C4D;">Cancelation</a></li>


 
</ul>
</div>
</div>
</body>
</html>