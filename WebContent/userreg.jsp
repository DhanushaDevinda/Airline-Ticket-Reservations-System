<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
  
  <title>SIGN UP</title>
</head>
<body>


    <jsp:include page="WEB-INF/views/header.jsp"/>
    
        <div style="background-color: #f1f1f1;">
    <br>
        <nav class=adminnavibar>
         <ul class="menu">
      	    <li>
              <a href="showuser.jsp">USER PROFILE</a>
            </li>
            <li>
              <a class="activeadminnavibar" href="userreg.jsp">USER REGISTRATION</a>
            </li>
            <li>
              <a href="deletuser.jsp">DELETE USER ACCOUNT</a>
            </li>
            <li>
              <a href="edituser.jsp">UPDATE ADMIN ACCOUNT</a>
            </li>
            
          <ul>
        </nav>

	<div class="limiter">
		<div class="container-Reg">
			<div class="wrap-Reg">
				<form class="login-form validate-form" method="POST" onchange="MyValidation()" onsubmit="MySubmit()" action="AddUser">
					<span class="login-form-title p-b-26">
						SIGN UP 
					</span>
					<br>
					<table style="margin-left: 25px;">
						<tr>
							<td>
								<div class="wrap-input"><h6 style = "position: absolute; top: 1px; left:51px; font-size: 13px; color:red;" id = "fname"></h6>
									<input class="input100" type="text" name="fname" id="firstname" >
									<span class="focus-input" data-placeholder="First name"></span>
								</div>
							</td>
							<td>&emsp; &emsp; </td>
							<td>
								<div class="wrap-input"><h6 style = "position: absolute; top: 1px; left:51px; font-size: 13px; color:red;" id = "lname"></h6>
									<input class="input100" type="text" name="lname" id="lastname" >
									<span class="focus-input" data-placeholder="Last name"></span>
								</div>
							</td>
						</tr>


						<tr>
							<td>
								<div class="wrap-input"><h6 style = "position: absolute; top: 1px; left:39px; font-size: 13px; color:red;" id = "do"></h6>
									<input class="input100" type="text" name="datebirth" id="dob">
									<span class="focus-input" data-placeholder="Date of Birth &nbsp;&nbsp; mm/dd/yy"></span>
								</div>
							</td>
	
							<td>&emsp; &emsp; </td>
					
							<td>
								<div class="wrap-input">
									<input class="input100" type="text" name="country" >
									<span class="focus-input" data-placeholder="Country"></span>
								</div>
							</td>
							
						</tr>
					  
	
						<tr>
							<td>
								<div class="wrap-input">
									<input class="input100" type="text" name="language">
									<span class="focus-input" data-placeholder="Language"></span>
								</div>
							</td>
						
	
							<td>&emsp; &emsp; </td>
							
							<td>
								<div class="wrap-input"><h6 style = "position: absolute; top: 1px; left:81px; font-size: 13px; color:red;" id = "emai"></h6>
									<input class="input100" type="email" name="email" id="email" >
									<span class="focus-input" data-placeholder="Email"></span>
								</div>							
	
							</td>
						</tr>
						
						
						<tr>	
							<td>							
								<div class="wrap-input">
									<input class="input100" type="text" name="countrycode">
									<span class="focus-input" data-placeholder="Country Code"></span>
								</div>
			
							</td>
							<td>&emsp; &emsp; </td>
							
							<td>							
									<div class="wrap-input"><h6 style = "position: absolute; top: 1px; left:51px; font-size: 13px; color:red;" id = "cont"></h6>
											<input class="input100" type="text" name="contactnum" id="contact" >
											<span class="focus-input" data-placeholder="Contact Number"></span>
										</div>
			
							</td>
						</tr>
							
								
						<tr>
							<td>
								<div class="wrap-input"><h6 style = "position: absolute; top: 1px; left:31px; font-size: 13px; color:red;" id = "status"></h6>
									<input class="input100" type="password" name="password1" onkeyup="checkPassword()" id= "pass1" >
									<span class="focus-input" data-placeholder="password"></span>
								</div>
							</td>
	
							<td>&emsp; &emsp; </td>
					
							<td>	
	
								<div class="wrap-input validate-input" data-validate="Enter password">
										<input class="input100" type="password" name="password2" onkeyup="checkPassword()" id= "pass2">
										<span class="focus-input" data-placeholder="Current Password"></span>
									</div>
							</td>	
						</tr>	
						
							
						<td>&emsp; &emsp; </td>
									
					</table>

					<br>
					<h4 id="status" class ="login-form-title;" style="text-align: center;"></h4>

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


	<div id="dropDownSelect1"></div>
	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="js/valid.js"></script>
				
				
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
			function myFunction(){ 
				if($('#check').is(':checked') ==true){
					document.getElementById("flight").style.visibility ="visible";
				}
				else if($('#check').is(':checked') ==false){
					document.getElementById("flight").style.visibility ="hidden";
				}
			} 
			
			function checkPassword() {
				var password1 = document.getElementById('pass1').value;
				var password2 = document.getElementById('pass2').value;
			
				if ((password1 == null && password2 == null) || (password1 == "" && password2 == "")){
					document.getElementById('status').innerHTML = "Password cannot be empty!";
					return false;
				}
				else if (password1==password2) {
					document.getElementById('status').innerHTML = "";
					return true;
				}
				else {
					document.getElementById('status').innerHTML = "Passwords Do Not Match!";
					return false;
				}
			}
			</script>

<jsp:include page="WEB-INF/views/footer.jsp"/>
</body>
</html>