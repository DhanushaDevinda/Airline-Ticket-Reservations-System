<%-- <%@page import="com.airlinereservation.service.FlightSeatsServiceImpl"%> --%>
<%-- <%@page import="com.airlinereservation.service.IFlightSeatsService"%> --%>
<%-- <%@page import="com.airlinereservation.model.FlightSeats"%> --%>
<%-- <%@page import="com.airlinereservation.model.Agent"%> --%>
<%-- <%@page import="com.airlinereservation.service.IAgentService"%> --%>
<%-- <%@page import="com.airlinereservation.service.AgentServiceImpl"%> --%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V2</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

	
	
	<div class="limiter">
		<div class="container-Reg">
			<div class="wrap-Reg">
				<form class="login-form validate-form" method="POST" action="">
					<span class="login-form-title p-b-26">
						THANK YOU FOR REGISTERING!
					</span>
					<br>
					
					
						</form>
						
        			<a href="deletecustomer.jsp">
					<div class="container-login-form-btn">
						<div class="wrap-submit-form-btn">
							<div class="login-form-bgbtn"></div>
							<button class="submit-form-btn">
								Delete
							</button>
						</div>
					</div>
					</a>						
					
					<a href="update.jsp">
					<div class="container-login-form-btn">
						<div class="wrap-submit-form-btn">
							<div class="login-form-bgbtn"></div>
							<button class="submit-form-btn">
								Edit
							</button>
						</div>
					</div>
					</a>
			
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="js/main.js"></script>

</body>
</html>