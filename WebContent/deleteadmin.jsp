<!DOCTYPE html>
<html lang="en">
<head>
	<title>DELETE ADMIN</title>
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
              <a class="activeadminnavibar" href="deleteadmin.jsp">DELETE ADMIN ACCOUNT</a>
            </li>
            <li>
              <a href="editadmin.jsp">UPDATE ADMIN ACCOUNT</a>
            </li>
            <li>
              <a href="showalladmin.jsp">SHOW ADMIN</a>
            </li> 
            <li>
              <a href="changepassword.jsp">UPDATE PASSWORD</a>
            </li>     
          <ul>
        </nav>
    </div>
	<div class="limiter">
		<div class="container-Reg">
			<div class="wrap-Reg">
				<form class="login-form validate-form" method="POST" action="DeleteAdmin">
					<span class="login-form-title p-b-26">
						Delete Admin Account
					</span>
					
					
					<div class="wrap-input validate-input" data-validate = "Enter first name">
						<input class="input100" type="text" name="password">
						<span class="focus-input" data-placeholder="Password"></span>
					</div>

					<div class="container-login-form-btn">
						<div class="wrap-submit-form-btn">
							<div class="login-form-bgbtn"></div>
							<button class="submit-form-btn">
								Delete
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
	  
	})(jQuery);</script>

</body>
</html>