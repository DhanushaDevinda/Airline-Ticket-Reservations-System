<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Add flight</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	
	
	
	
	<script type="text/javascript">
		function checkPrice() {
			var first = document.getElementById('first').value;
			var business = document.getElementById('business').value;
			var economy = document.getElementById('economy').value;
			
			if ((First == null && business == null && economy == null) || (First == "" && business == "" && business == "")){
				document.getElementById('status').innerHTML = "Price is empty ";
				return false;
			}
			else if (First!==business && business!==economy && First!==economy) {
				document.getElementById('status').innerHTML = "Price is Correct!";
				return true;
			}
			else {
				document.getElementById('status').innerHTML = "Price is invalid!!!!";
				return false;
			}
		}
	</script>
</head>
<body>
	<jsp:include page="WEB-INF/views/header.jsp"/> 
	
	<div style="background-color: #f1f1f1;">
    <br>
        <nav class=adminnavibar>
         <ul class="menu">
      	    <li><a href="showallflights.jsp">FLIGHT DETAILS</a></li>
            <li><a class="activeadminnavibar" href="addflight.jsp">ADD NEW FLIGHT</a></li>
            <li><a href="deleteflight.jsp">DELETE FLIGHT DETAILS</a></li>
            <li><a href="editflight.jsp">UPDATE FLIGHT DETAILS</a></li>
            
          <ul>
        </nav>
    </div>
    
	<div class="limiter">
		<div class="container-Reg">
			<div class="wrap-Reg">
				<form name="myform" class="login-form validate-form" method="POST" action="AddFlight" onsubmit="return validateForm()" onsubmit="return checkPrice()">
					<span class="login-form-title">ADD FLIGHT</span>
					<br>
					
					<table style="margin-left: 25px;">
					
						<tr><td><div class="wrap-input"><h6 style = "position: absolute; top: 1px; left:51px; font-size: 13px; color:red;" id = "fi"></h6>
								<input class="input100" type="text" name="flightid" id="flightid" >
								<span class="focus-input" data-placeholder="Flight ID"></span>
								</div>
							</td>
			
							<td>&emsp; &emsp; </td>
						
						<td><div class="wrap-input"><h6 style = "position: absolute; top: 1px; left:51px; font-size: 13px; color:red;" id = "fn"></h6>
								<input class="input100" type="text" name="flightname" id="flightname" >
								<span class="focus-input" data-placeholder="Flight name"></span>
								</div>
						</td></tr>
						
						<tr><td><div style ="border: none;"class="wrap-input">
								<select class="input100"  name="leave">
									<span class="focus-input" data-placeholder="leave"></span>
			  						<option value="leave1">leave1</option>
			 						<option value="leave2">leave2</option>
			  					</select>  
								</div>
							</td>
			
							<td>&emsp; &emsp; </td>
							
							<td><div style ="border: none;"class="wrap-input">
								<select class="input100"  name="going">
									<span class="focus-input" data-placeholder="going"></span>
			  						<option value="going1">going1</option>
			 						<option value="going2">going2</option>
			  						</select>  
								</div>
							</td></tr>		
							
						<tr><td><div class="wrap-input"><h6 style = "position: absolute; top: 1px; left:51px; font-size: 13px; color:red;" id = "dda"></h6>
									<input class="input100" type="text" name="departure" id="departure" >
									<span class="focus-input" data-placeholder="Departure date"></span>
								</div>
						</td></tr>
	
						<tr><td><div class="wrap-input"><h6 style = "position: absolute; top: 1px; left:51px; font-size: 13px; color:red;" id = "dti"></h6>
									<input class="input100" type="text" name="dtime" id="dtime" >
									<span class="focus-input" data-placeholder="Departure time"></span>
								</div>
							</td>
	
							<td>&emsp; &emsp; </td>
					
							<td><div class="wrap-input"><h6 style = "position: absolute; top: 1px; left:51px; font-size: 13px; color:red;" id = "ati"></h6>
									<input class="input100" type="text" name="atime" id="atime" >
									<span class="focus-input" data-placeholder="Arrival time"></span>
								</div>
						</td></tr>	

						<tr><td></td><td>
							<span class="login-form-title">
								Fare
							</span></td>
						<td></td></tr>	

						<tr><td><div class="wrap-input"><h6 style = "position: absolute; top: 1px; left:51px; font-size: 13px; color:red;" id = "fc"></h6>
									<input class="input100" type="text" name="First" id="first" onKeyUp="checkPrice()">
									<span class="focus-input" data-placeholder="First class price"></span>
								</div>
								
						</td><td></td>
					
						<td><div class="wrap-input"><h6 style = "position: absolute; top: 1px; left:51px; font-size: 13px; color:red;" id = "bc"></h6>
									<input class="input100" type="text" name="business" id="business" onKeyUp="checkPrice()">
									<span class="focus-input" data-placeholder="Business class price"></span>
							</div>
								
						</td></tr>
							
						<tr><td><div class="wrap-input"><h6 style = "position: absolute; top: 1px; left:51px; font-size: 13px; color:red;" id = "ec"></h6>
									<input class="input100" type="text" name="economy" id="economy" onKeyUp="checkPrice()">
									<span class="focus-input" data-placeholder="Economy class price"></span>
								</div>		
						</td>
						
						<td></td>
						
						
						<tr><td colspan="2" style="text-align: center;">
								<span id="status" style="color: red;"></span>
								<br> &nbsp;
								</td>
						</tr>
						<tr><td></td><td>
							<span class="login-form-title">
								UPLOAD FLIGHT IMAGE
							</span></td>
						<td></td></tr>	
						
						<tr><td>
						<form method="POST" action="UploadImage" enctype="multipart/form-data">
							<div class="wrap-input"><h6 style = "position: absolute; top: 1px; left:51px; font-size: 13px; color:red;" id = "img"></h6>
									<input class="input100" type="file" name="img" id="img" >
									<span class="focus-input"></span>
							</div>
						</form>
						</td></tr>
					</table>

					<br><h4 id="status" class ="login-form-title;" style="text-align: center;"></h4>

					<div class="container-login-form-btn">
						<div class="wrap-submit-form-btn">
							<div class="login-form-bgbtn"></div>
								<button class="submit-form-btn">Confirm</button>
					</div></div>
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
			
			<script>
			function validateForm() {
  			
				var f = document.forms["myform"]["flightname"] .value;
 					 if (f == "") {
   							 alert("Name must be filled out");
    				return false;
 				 }
			}
			</script>

<jsp:include page="WEB-INF/views/footer.jsp"/> 
</body>
</html>