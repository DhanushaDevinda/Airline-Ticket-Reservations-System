<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.airlinereservation.model.Flight"%>
<%@page import="com.airlinereservation.service.IFlightService"%>
<%@page import="com.airlinereservation.service.FlightServiceImp"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
	<title>Show flight details</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">

<style>
	h3{color:black;font-family: Poppins-Bold;font-size: 18px;}
	h4{margin-bottom: 5px;color:gray;font-family: Poppins-Bold;font-size: 16px;}
	a{text-decoration: none;}
</style>
</head>
<body>
	<jsp:include page="WEB-INF/views/header.jsp"/>
	
		<div style="background-color: #f1f1f1;">
    	<br>
        <nav class=adminnavibar>
         <ul class="menu">
      	   <li><a class="activeadminnavibar" href="showallflights.jsp">FLIGHT DETAILS</a></li>
            <li><a href="addflight.jsp">ADD NEW FLIGHT</a></li>
            <li><a href="deleteflight.jsp">DELETE FLIGHT DETAILS</a></li>
            <li><a href="editflight.jsp">UPDATE FLIGHT DETAILS</a></li>  
          <ul>
        </nav>
    </div>
    
    	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		
			//HttpSession session = request.getSession();
			Flight flight = (Flight) session.getAttribute("currentSessionFlight");
			
		
			if(flight == null){
		
		response.sendRedirect("home.html");
			}
	%>
	
		<div class="limiter">
			<div class="container-Reg">
				<div class="wrap-Reg">
					<form class="login-form validate-form" method="POST">
						<span class="login-form-title p-b-26">Successfully Added</span><br>
					<%
						if(flight != null) {
															
							IFlightService iFlightService = new FlightServiceImp();
							ArrayList<Flight> flightArrayList = iFlightService.getFlight(flight.getFlightID());
															
							for(Flight flightlist : flightArrayList){
								
					%>
					
					<table>
						<tr><td>
								<h3>Flight Name</h3>
								<h4><%=flightlist.getFlightname()%></h4>
							</td>
							
							<td>&emsp; &emsp; </td>
							
							<td>
								<h3>Leaving from</h3>
								<h4><%=flightlist.getLeaving()%></h4>
						</td></tr>

						<tr><td>
								<h3>Going to</h3>
								<h4><%=flightlist.getGoing()%></h4>
							</td>
	
							<td>&emsp; &emsp; </td>
					
							<td>
								<h3>Departure date</h3>
								<h4><%=flightlist.getDdate()%></h4>
						</td></tr>
	
						<tr><td>
								<h3>Departure time</h3>
								<h4><%=flightlist.getDtime()%></h4>					
							</td>
	
							<td>&emsp; &emsp; </td>
					
							<td>							
								<h3>Arrival time</h3>
								<h4><%=flightlist.getAtime()%></h4>			
						</td></tr>	
	
						<tr><td>
								<h3>First class price</h3>
								<h4><%=flightlist.getFirst()%></h4>
							</td>
	
							<td>&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp; </td>
					
							<td>
								<h3>Business class price</h3>
								<h4><%=flightlist.getBusiness()%></h4>
						</td></tr>
						
						<tr><td>
								<h3>Economy class price</h3>
								<h4><%=flightlist.getEcon()%></h4>
							</td>
	
								
						</tr>	
						
						
					</table>

					<br>
<%}} %>
				</form>
				
					<br>
					<a href="deleteflight.jsp"> 
					<div class="container-login-form-btn">
						<div class="wrap-submit-form-btn">
							<div class="login-form-bgbtn"></div>
							<button class="submit-form-btn">Delete</button>
						</div>
					</div>
					</a>


					<a href="editflight.jsp"> 
					<div class="container-login-form-btn">
						<div class="wrap-submit-form-btn">
							<div class="login-form-bgbtn"></div>
							<button class="submit-form-btn">Edit</button>
						</div>
					</div>
					</a>
					
			</div>
		</div>
	</div>
	
	<jsp:include page="WEB-INF/views/footer.jsp"/>
	<div id="dropDownSelect1"></div>
	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>