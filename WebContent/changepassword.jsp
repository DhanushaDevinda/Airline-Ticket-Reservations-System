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

	<jsp:include page="WEB-INF/views/header.jsp"/>
	
<div style="background-color: #f1f1f1;">
    <br>
        <nav class=adminnavibar>
         <ul class="menu">
            <li>
              <a href="showadmin.jsp">ADMIN PROFILE</a>
            </li>
            <li>
              <a href="addadmin.jsp">ADMIN REGISTRATION</a>
            </li>
            <li>
              <a href="deleteadmin.jsp">DELETE ADMIN ACCOUNT</a>
            </li>
            <li>
              <a href="showalladmin.jsp">SHOW ADMIN</a>
            </li>
            <li>
              <a href="changeemail.jsp">ADD NEW EMAIL</a>
            </li> 
            <li>
              <a class="activeadminnavibar" href="changepassword.jsp">UPDATE PASSWORD</a>
            </li>     
          <ul>
        </nav>
    </div>
	
	<div class="limiter">
		<div class="container-Reg">
			<div class="wrap-Reg">
				<form class="login-form validate-form" method="POST" action="UpdatePassword">
					<span class="login-form-title p-b-26">
						Change Password
					</span>
					
					
					<div class="wrap-input validate-input" data-validate = "Valid email is: a@b.c">
									<input class="input100" type="email" name="email">
									<span class="focus-input" data-placeholder="Email"></span>
					</div>		
					
					<div class="wrap-input validate-input" data-validate = "Valid email is: a@b.c">
									<input class="input100" type="password" name="curpassword">
									<span class="focus-input" data-placeholder="Current Password"></span>
					</div>	
					
					<div class="wrap-input validate-input" data-validate = "Enter first name">
						<input class="input100" type="password" name="newpassword" onkeyup="checkPassword()" id= "pass1" >
						<span class="focus-input" data-placeholder="New Password"></span>
					</div>

					<div class="wrap-input validate-input" data-validate = "Enter first name">
						<input class="input100" type="password" name="confirmpassword" onkeyup="checkPassword()" id= "pass2">
						<span class="focus-input" data-placeholder="Confirm Password"></span>
					</div>
					
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
	<jsp:include page="WEB-INF/views/footer.jsp"/>

	<div id="dropDownSelect1"></div>
	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	
	
	<script>
	function checkPassword() {
		var password1 = document.getElementById('pass1').value;
		var password2 = document.getElementById('pass2').value;
	
		if ((password1 == null && password2 == null) || (password1 == "" && password2 == "")){
			document.getElementById('status').innerHTML = "Password cannot be empty!";
			return false;
		}
		else if (password1==password2) {
			document.getElementById('status').innerHTML = "Passwords Match!";
			return true;
		}
		else {
			document.getElementById('status').innerHTML = "Passwords Do Not Match!";
			return false;
		}
	}
	
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

</body>
</html>