<%@page import="java.io.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.sun.net.httpserver.Authenticator.Result"%>
<%@page import="com.airlinereservation.conn.*"%>
<%@page import="com.airlinereservation.model.*"%>
<%@page import="com.airlinereservation.service.*"%>
<%@page import ="java.sql.PreparedStatement"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>ADD ADMIN</title>
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
              <a href="showadmin.jsp">USER PROFILE</a>
            </li>
            <li>
              <a class="activeadminnavibar" href="addadmin.jsp">USER REGISTRATION</a>
            </li>
            <li>
              <a href="deleteadmin.jsp">DELETE USER ACCOUNT</a>
            </li>
            <li>
              <a href="editadmin.jsp">UPDATE USER ACCOUNT</a>
            </li>
            <li>
              <a href="showalladmin.jsp">SHOW ADMIN</a>
            </li> 
            <li>
              <a href="changepassword.jsp">UPDATE PASSWORD</a>
            </li>
             <li>
             <a href="addflight.jsp">FLIGHT DETAILS</a>
             </li>     
          <ul>
        </nav>
        
       
        
    </div>
	<div class="limiter">
		<div class="container-Reg">
			<div class="wrap-Reg">
				<form class="login-form validate-form" onchange="MyValidation()" onsubmit="MySubmit()" method="POST" action="AddAdmin">
					<span class="login-form-title">
						ADMIN REGISTRATION FORM
					</span>
					<br>
					<table style="margin-left: 25px;">
						<tr>
							<td>
							
								<div class="wrap-input"><h6 style = "position: absolute; top: 1px; left:51px; font-size: 13px; color:red;" id = "fname"></h6>
									<input class="input100" type="text" name="fname" id="firstname" required>
									<span class="focus-input" data-placeholder="First name"></span>
								</div>
								
							</td>
							<td>&emsp; &emsp; </td>
							<td>
								<div class="wrap-input"><h6 style = "position: absolute; top: 1px; left:51px; font-size: 13px; color:red;" id = "lname"></h6>
									<input class="input100" type="text" name="lname" id="lastname" required>
									<span class="focus-input" data-placeholder="Last name"></span>
								</div>
							</td>
						</tr>


						<tr>
							<td>
								<div class="wrap-input"><h6 style = "position: absolute; top: 1px; left:39px; font-size: 13px; color:red;" id = "do"></h6>
									<input class="input100" type="text" name="dob" id="dob" required>
									<span class="focus-input" data-placeholder="Date of Birth &nbsp;&nbsp; mm/dd/yy"></span>
								</div>
							</td>
	
							<td>&emsp; &emsp; </td>
					
							<td>
									<n style="color: #999999">Gender &nbsp;</n>
									<input type="radio" name="gender" value="Male" required><n style="color: #999999">Male</n>
									<input type="radio" name="gender" value="Female" required><n style="color: #999999">Female</n>
							</td>
						</tr>
	
						<tr>
							<td>
								<div class="wrap-input"><h6 style = "position: absolute; top: 1px; left:81px; font-size: 13px; color:red;" id = "emai"></h6>
									<input class="input100" type="email" name="email" id="email" required>
									<span class="focus-input" data-placeholder="Email"></span>
								</div>							
	
							</td>
	
							<td>&emsp; &emsp; </td>
					
							<td>							
									<div class="wrap-input"><h6 style = "position: absolute; top: 1px; left:51px; font-size: 13px; color:red;" id = "cont"></h6>
											<input class="input100" type="text" name="contactnum" id="contact" required>
											<span class="focus-input" data-placeholder="Contact Number"></span>
										</div>
			
							</td>
						</tr>	
	
						<tr>
							<td>
								<div class="wrap-input"><h6 style = "position: absolute; top: 1px; left:31px; font-size: 13px; color:red;" id = "passw"></h6>
									<input class="input100" type="password" name="pass" onkeyup="checkPassword()" id= "pass1" required>
									<span class="focus-input" data-placeholder="Password"></span>
								</div>
							</td>
	
							<td>&emsp; &emsp; </td>
					
							<td>	
	
								<div class="wrap-input">
										<input class="input100" type="password" name="pass" onkeyup="checkPassword()" id= "pass2"required>
										<span class="focus-input" data-placeholder="Current Password"></span>
									</div>
							</td>	
						</tr>	
						<tr>
							<td>
								<div class="wrap-input"><h6 style = "position: absolute; top: 1px; left:51px; font-size: 13px; color:red;" id = "ni" required></h6>
										<input class="input100" type="text" name="nic" id ="nicno">
										<span class="focus-input" data-placeholder="NIC"></span>
									</div>
							</td>	
						<td>&emsp; &emsp; </td>
							<td>

			<div style ="border: none;"class="wrap-input">
			<select class="input100"  name="type">
			<span class="focus-input" data-placeholder="NIC"></span>
			  <option value="Admin">Admin</option>
			  <option value=Editor>Editor</option>
			  </select>  
			</div>
							</td>	
							
							
						<tr>
						
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

			
			</script>

<jsp:include page="WEB-INF/views/footer.jsp"/>
</body>
</html>