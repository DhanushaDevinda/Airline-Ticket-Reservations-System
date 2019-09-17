
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
               
               
               
	<div class="limiter">
		<div class="container-Reg">
			<div class="wrap-Reg">
				<form class="login-form validate-form" method="POST" action="Userlogin">
					<span class="login-form-title p-b-26">
						SIGN IN 
					</span>
					<br>

								<div class="wrap-input validate-input" data-validate = "User name">
									<input class="input100" type="text" name="username">
									<span class="focus-input" data-placeholder="User name"></span>
								</div>
							
								<div class="wrap-input validate-input" data-validate = "Password">
									<input class="input100" type="password" name="password">
									<span class="focus-input" data-placeholder="Password"></span>
								</div>


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
					<br>
			<div style = "text-align: center;">	
              <a href="userreg.jsp">SIGN IN</a>
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
              <a href="#">FORGOT PASSWORD</a>
            </div>
				</form>
			</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>
	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="js/main.js"></script>

				<script type="text/javascript">
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
					document.getElementById('status').innerHTML = "Passwords Match!";
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