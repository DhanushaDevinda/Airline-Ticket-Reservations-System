<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.sun.net.httpserver.Authenticator.Result"%>
<%@page import="com.airlinereservation.conn.*"%>
<%@page import="com.airlinereservation.model.*"%>
<%@page import="com.airlinereservation.service.*"%>
<%@page import ="java.sql.PreparedStatement"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
	<title>Edit flight</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/edit.css">
</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		
		Flight flight = (Flight) session.getAttribute("currentSessionFlight");
		
			if(flight == null){
		
		response.sendRedirect("home.html");
			}
			
			if(flight != null)
	%> 
	
	<jsp:include page="WEB-INF/views/header.jsp"/>
	
	<div style="background-color: #f1f1f1;">
    <br>
        <nav class=adminnavibar>
         <ul class="menu">
      	    <li><a href="showallflights.jsp">FLIGHT DETAILS</a></li>
            <li><a href="addflight.jsp">ADD NEW FLIGHT</a></li>
            <li><a href="deleteflight.jsp">DELETE FLIGHT DETAILS</a></li>
            <li><a class="activeadminnavibar" href="editflight.jsp">UPDATE FLIGHT DETAILS</a></li>     
          <ul>
        </nav>
    </div>
    
	<div class="limiter">
		<div class="container-Reg">
			<div class="wrap-Reg">
			
				<form class="login-form validate-form" method="POST" action="UpdateFlight">
					<span class="login-form-title">UPDATE FLIGHT</span><br>
					<table style="margin-left: 25px;">
					
						<tr>
						<td><div class="wrap-input">
								<input class="input100" type="text" name="flightid"  value="<%=flight.getFlightID()%>">
								<span class="focus-input" data-placeholder="Flight ID"></span>
								</div>
							</td>
			
							<td>&emsp; &emsp; </td>
						
						<td>
							<div class="wrap-input">
							<input class="input100" type="text" name="flightname" value="<%=flight.getFlightname()%>" required>
							<span class="focus-input" data-placeholder="Flight name"></span>
							</div>
						</td></tr>
						
						<tr><td>
							<div style ="border: none;"class="wrap-input">
							<select class="input100"  name="leave" <%=flight.getLeaving()%>>
							<span class="focus-input" data-placeholder="leave"></span>
			  					<option value="leave1">leave1</option>
			 					<option value="leave2">leave2</option>
			  				</select>  
							</div>
						</td>
						
							<td>&emsp; &emsp; </td>
							
						<td>
							<div style ="border: none;"class="wrap-input">
							<select class="input100"  name="going" value="<%=flight.getGoing()%>">
							<span class="focus-input" data-placeholder="going"></span>
			  					<option value="going1">going1</option>
			 					 <option value="going2">going2</option>
			  				</select>  
							</div>
						</td></tr>		
	
							
						<tr><td>
							<div class="wrap-input">
								<input class="input100" type="text" name="departure"  value="<%=flight.getDdate()%>" required>
								<span class="focus-input" data-placeholder="Departure date"></span>
							</div>
						</td></tr>
	
						<tr><td>
							<div class="wrap-input">
							<input class="input100" type="text" name="dtime" value="<%=flight.getDtime()%>" required>
							<span class="focus-input" data-placeholder="Departure time"></span>
							</div>
						</td>
						
							<td>&emsp; &emsp; </td>
					
						<td>
							<div class="wrap-input">
							<input class="input100" type="text" name="atime"  value="<%=flight.getAtime()%>" required>
							<span class="focus-input" data-placeholder="Arrival time"></span>
							</div>
						</td></tr>	

						<tr><td></td>
							<td>
							<span class="login-form-title">Fare</span></td><td>
						</td></tr>
						
						<tr><td>
							<div class="wrap-input">
								<input class="input100" type="text" name="First"  value="<%=flight.getFirst()%>" required>
								<span class="focus-input" data-placeholder="First class price"></span>
							</div>
						</td>
	
						<td></td>
							 <td>
							<div class="wrap-input">
								<input class="input100" type="text" name="business"  value="<%=flight.getBusiness()%>"required>
								<span class="focus-input" data-placeholder="Business class price"></span>
							</div>
						</td></tr>	
						
						<tr><td>
							<div class="wrap-input">
								<input class="input100" type="text" name="economy"  value="<%=flight.getEcon()%>" required>
								<span class="focus-input" data-placeholder="Economy class price"></span>
							</div>
						</td></tr>
						
					</table>

					<br>
					<h4 id="status" class ="login-form-title;" style="text-align: center;"></h4>

					<div class="container-login-form-btn">
						<div class="wrap-submit-form-btn">
							<div class="login-form-bgbtn"></div>
							<button class="submit-form-btn">Confirm</button>
						</div>
					</div>
				</form>
				
			</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>
	
		<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src=""></script>

				<script type="text/javascript">

				(function ($) {
				    "use strict";

				    $('.input100').each(function(){
				        $(this).on('blur', function(){
				            if($(this).val().trim() != "") {
				                $(this).addClass('has-val');
				            }
				            else {
				                $(this).removeClass('has-val');
				            }
				        })    
				    })
				  
				})(jQuery);
			
			</script>

<jsp:include page="WEB-INF/views/footer.jsp"/>
</body>
</html>