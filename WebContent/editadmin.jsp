
<%@page import="com.airlinereservation.model.Admin"%>
<%@page import="com.airlinereservation.service.IAdminService"%>
<%@page import="com.airlinereservation.service.AdminServiceImp"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>EDIT ADMIN</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/edit.css">
</head>
<body>

	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		
			Admin admin = (Admin) session.getAttribute("currentSessionAdmin");
		
			if(admin == null){
		
		response.sendRedirect("home.html");
			}
			
			if(admin != null)
	%>
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
              <a class="activeadminnavibar" href="editadmin.jsp">UPDATE ADMIN ACCOUNT</a>
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
				<form class="login-form validate-form" method="POST" action="UpdateAgent">
					<span class="login-form-title p-b-26">
						EDIT ADMIN DETAILS
					</span>
					<br>
					<table style="margin-left: 25px;">
						<tr>
							<td>
								<div class="wrap-input validate-input" data-validate = "Enter first name">
									<input class="input100" type="text" name="fname" value="<%=admin.getFname() %>">
									<span class="focus-input" data-placeholder="First name"></span>
								</div>
							</td>
							<td>&emsp; &emsp; </td>
							<td>
								<div class="wrap-input validate-input" data-validate = "Enter last name">
									<input class="input100" type="text" name="lname" value="<%=admin.getLname() %>">
									<span class="focus-input" data-placeholder="Last name"></span>
								</div>
							</td>
						</tr>


						<tr>
							<td>
								<div class="wrap-input validate-input" data-validate = "Enter date of birth">
									<input class="input100" type="text" name="dob" value="<%= admin.getDob() %>">
									<span class="focus-input" data-placeholder="Date of Birth"></span>
								</div>
							</td>
	
							<td>&emsp; &emsp; </td>
					
							<td>
									<n style="color: #999999">Gender &nbsp;</n>
									
									<%if(admin.getGender().equals("Male")) { %>
									<input type="radio" name="gender" value="Male" checked="checked" required><n style="color: #999999">Male</n>
									<input type="radio" name="gender" value="Female" required><n style="color: #999999">Female</n>
									<%}else{ %>
									<input type="radio" name="gender" value="Male">Male
									<input type="radio" name="gender" value="Female" checked="checked">Female<br/>&nbsp;
									<%} %>	
							</td>
						</tr>
	
						<tr>
							<td>
								<div class="wrap-input validate-input" data-validate = "Enter contact no">
										<input class="input100" type="text" name="contactnum" value="<%= admin.getContactnum() %>">
										<span class="focus-input" data-placeholder="Contact Number"></span>
								</div>					
	
							</td>
	
							<td>&emsp; &emsp; </td>
	
					
							<td>							
								<div class="wrap-input validate-input" data-validate = "Enter NIC no">
									<input class="input100" type="text" name="nic" value="<%= admin.getNic() %>">
									<span class="focus-input" data-placeholder="NIC"></span>
								</div>
							</td>

						</tr>	
						<tr>
							<td>
								<div style ="border: none;"class="wrap-input">
									<%if(admin.getType().equals("Admin")) { %>	
									<select class="input100"  name="type">
										<span class="focus-input"></span>
											<option value="Admin">Admin</option>
											<option value="Editor">Editor</option>
									<%}%>
									
									<%if(admin.getType().equals("Editor")) { %>	
									<select class="input100"  name="type">
										<span class="focus-input"></span>
											<option value="Editor">Editor</option>
											<option value="Admin">Admin</option>					
									<%}%>
									</select>  
								</div>
							
							</td>
						
						</tr>
						

					

				</div>
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