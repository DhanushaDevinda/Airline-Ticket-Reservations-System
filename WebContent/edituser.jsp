

<%@page import="com.airlinereservation.model.User"%>
<%@page import="com.airlinereservation.service.IUserService"%>
<%@page import="com.airlinereservation.service.UserServiceImp"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>EDIT USER</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/edit.css">
</head>
<body>

	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		
			User user = (User) session.getAttribute("currentSessionUser");
		
			if(user == null){
		
		response.sendRedirect("home.html");
			}
			
			if(user != null)
	%>
	<jsp:include page="WEB-INF/views/header.jsp"/>
	
        <div style="background-color: #f1f1f1;">
    <br>
        <nav class=adminnavibar>
         <ul class="menu">
      	    <li>
              <a href="showuser.jsp">USER PROFILE</a>
            </li>
            <li>
              <a href="userreg.jsp">USER REGISTRATION</a>
            </li>
            <li>
              <a href="deleteuser.jsp">DELETE USER ACCOUNT</a>
            </li>
            <li>
              <a class="activeadminnavibar" href="edituser.jsp">UPDATE ADMIN ACCOUNT</a>
            </li>
            
          <ul>
        </nav>
    
	
	

	
	<div class="limiter">
		<div class="container-Reg">
			<div class="wrap-Reg">
				<form class="login-form validate-form" method="POST" action="UpdateUser">
					<span class="login-form-title p-b-26">
						EDIT USER DETAILS
					</span>
					<br>
					<table style="margin-left: 25px;">
						
	<tr>
		
		<td>
			<div class="wrap-input validate-input" data-validate = "First name">
				<input class="input100" type="text" name="fname" value="<%=user.getFname() %>">
				<span class="focus-input" data-placeholder="First name"></span>
			</div>
		</td>

	<td>&emsp; &emsp; </td>

		<td>
			<div class="wrap-input validate-input" data-validate = "Last name">
				<input class="input100" type="text" name="lname"value="<%=user.getLname() %>">
				<span class="focus-input" data-placeholder="Last name"></span>
			</div>

		</td>
	</tr>


	<tr>
	
		<td>
			<div class="wrap-input validate-input" data-validate = "Date of Birth">
				<input class="input100" type="text" name="datebirth"value="<%=user.getDob() %>">
				<span class="focus-input" data-placeholder="Date of Birth &nbsp;&nbsp; mm/dd/yy"></span>
			</div>
		</td>

	<td>&emsp; &emsp; </td>

		<td>
			<div class="wrap-input validate-input" data-validate = "Country">
				<input class="input100" type="text" name="country"value="<%=user.getCountry() %>">
				<span class="focus-input" data-placeholder="Country"></span>
			</div>
		</td>

	</tr>


	<tr>

		<td>
			<div class="wrap-input validate-input" data-validate = "Language">
				<input class="input100" type="text" name="language"value="<%=user.getLanguage() %>">
				<span class="focus-input" data-placeholder="Language"></span>
			</div>
		</td>


	<td>&emsp; &emsp; </td>

		<td>							
			<div class="wrap-input validate-input" data-validate = "Country Code">
				<input class="input100" type="text" name="countrycode"value="<%=user.getCountrycode() %>">
				<span class="focus-input" data-placeholder="Country Code"></span>
			</div>

		</td>
	
	</tr>



	<tr>	

		<td>							
			<div class="wrap-input validate-input" data-validate = "Contact Number">
				<input class="input100" type="text" name="contactnum"value="<%=user.getContactnum() %>">
				<span class="focus-input" data-placeholder="Contact Number"></span>
		</div>

		</td>
	<td>&emsp; &emsp; </td>

	</tr>

											
</table>
					<div class="container-login-form-btn">
						<div class="wrap-submit-form-btn">
							<div class="login-form-bgbtn"></div>
							<button class="submit-form-btn">
								Confirm
							</button>
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

	<script>
			function myFunction(){ 
				if($('#check').is(':checked') ==true){
					document.getElementById("flight").style.visibility ="visible";
				}
				else if($('#check').is(':checked') ==false){
					document.getElementById("flight").style.visibility ="hidden";
				}
			} 
	</script>	

</body>
</html>