<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Delete flight</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
	<jsp:include page="WEB-INF/views/header.jsp"/>
	
		<div style="background-color: #f1f1f1;"><br>
		<nav class=adminnavibar>
         <ul class="menu">
         	<li><a href="showallflights.jsp">FLIGHT DETAILS</a></li>
            <li><a href="addflight.jsp">ADD NEW FLIGHT</a></li>
            <li><a class="activeadminnavibar" href="deleteflight.jsp">DELETE FLIGHT DETAILS</a></li>
            <li><a href="editflight.jsp">UPDATE FLIGHT DETAILS</a></li>   
          <ul>
        </nav>
        </div>
        
	<div class="limiter">
		<div class="container-Reg">
			<div class="wrap-Reg">
				
				<form class="login-form validate-form" method="POST" action="Deletef">
					<span class="login-form-title p-b-26">DELETE FLIGHT</span>
					
					<div class="wrap-input validate-input" data-validate = "Enter first name">
						<input class="input100" type="text" name="flightid">
						<span class="focus-input" data-placeholder="flightid"></span>
					</div>

					<div class="container-login-form-btn">
						<div class="wrap-submit-form-btn">
							<div class="login-form-bgbtn"></div>
							<button class="submit-form-btn">Delete</button>
						</div>
					</div>
				</form>
				
			</div>
		</div>
	</div>
	
	<jsp:include page="WEB-INF/views/footer.jsp"/>
	<div id="dropDownSelect1"></div>
	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>