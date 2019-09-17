<%@page import="com.airlinereservation.model.User"%>
<%@page import="com.airlinereservation.service.UserServiceImp"%>
<%@page import="com.airlinereservation.service.IUserService"%>
<%@page import="java.util.ArrayList"%>

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
  
  <title>SHOW USER</title>
  
  <style>
	h3{color:black;font-family: Poppins-Bold;font-size: 18px;}
	h4{margin-bottom: 5px;color:gray;font-family: Poppins-Bold;font-size: 16px;}
	a{text-decoration: none;}
</style>
</head>
<body>
 
 <jsp:include page = "WEB-INF/views/header.jsp"/>
      <div style="background-color: #f1f1f1;">
    <br>

        <div style="background-color: #f1f1f1;">
    <br>
        <nav class=adminnavibar>
         <ul class="menu">
      	    <li>
              <a class="activeadminnavibar" href="showuser.jsp">USER PROFILE</a>
            </li>
            <li>
              <a href="userreg.jsp">USER REGISTRATION</a>
            </li>
            <li>
              <a href="deleteuser.jsp">DELETE USER ACCOUNT</a>
            </li>
            <li>
              <a href="edituser.jsp">UPDATE ADMIN ACCOUNT</a>
            </li>
            
          <ul>
        </nav>

    </div>
 <div class="limiter">
		<div class="container-Reg">
			<div class="wrap-Reg">
				<form class="login-form validate-form" method="POST">
					<span class="login-form-title p-b-26">
						THANK YOU FOR REGISTERING!
					</span>
					<br>

					<%
						response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

						//HttpSession session = request.getSession();
						User user = (User) session.getAttribute("currentSessionUser");

						if (user == null) {

							response.sendRedirect("home.html");
						}
					%>
					<%
						if(user != null) {
															
							IUserService iUserServise = new UserServiceImp();
						
							ArrayList<User> userArrayList = iUserServise.getUser(user.getEmail());
															
							for(User userlist : userArrayList){
								
					%>
					
					
					<table>
						<tr>
							<td>
								<h3>First name</h3>
								<h4><%=userlist.getFname()%></h4>
							</td>
							<td>&emsp; &emsp; </td>
							<td>
								<h3>Last name</h3>
								<h4><%=userlist.getLname()%></h4>
							</td>
						</tr>

						<tr>
							<td>
								<h3>Date of birth</h3>
								<h4><%=userlist.getDob()%></h4>
							</td>
	
							<td>&emsp; &emsp; </td>
					
							<td>
								<h3>Country</h3>
								<h4><%=userlist.getCountry()%></h4>
							</td>
						</tr>
	
						<tr>
							<td>
								<h3>Language</h3>
								<h4><%=userlist.getLanguage()%></h4>					
							</td>
	
							<td>&emsp; &emsp; </td>
					
							<td>							
								<h3>Email</h3>
								<h4><%=userlist.getEmail()%></h4>			
							</td>
						</tr>	
	
						<tr>
							<td>
								<h3>Countrycode</h3>
								<h4><%=userlist.getCountrycode()%></h4>
							</td>
	
							<td>&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp; </td>
					
							<td>
								<h3>Contact Number</h3>
								<h4><%=userlist.getContactnum()%></h4>
							</td>	
						</tr>	
						
						
					</table>

					<br>
<%}} %>
				</form>
				
					<br>
					<a href="deletuser.jsp"> 
					<div class="container-login-form-btn">
						<div class="wrap-submit-form-btn">
							<div class="login-form-bgbtn"></div>
							<button class="submit-form-btn">
								Delete
							</button>
						</div>
					</div>
					</a>


					<a href="edituser.jsp"> 
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