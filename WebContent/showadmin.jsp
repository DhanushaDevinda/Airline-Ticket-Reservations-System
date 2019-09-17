<%@page import="com.airlinereservation.model.Admin"%>
<%@page import="com.airlinereservation.service.IAdminService"%>
<%@page import="com.airlinereservation.service.AdminServiceImp"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>SHOW ADMIN</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">

<style>
	h3{color:black;font-family: Poppins-Bold;font-size: 18px;}
	h4{margin-bottom: 5px;color:gray;font-family: Poppins-Bold;font-size: 16px;}
	a{text-decoration: none;}
</style>
</head>

<body>
<jsp:include page="WEB-INF/views/header.jsp"/>

	<div style="background-color: #f1f1f1;">
    <br>
        <nav class=adminnavibar>
         <ul class="menu">
         
            <li>
              <a class="activeadminnavibar" href="changepassword.jsp">ADMIN PROFILE</a>
            </li> 
            <li>
              <a href="addadmin.jsp">ADMIN REGISTRATION</a>
            </li>
            <li>
              <a href="deleteadmin.jsp">DELETE ADMIN ACCOUNT</a>
            </li>
            <li>
              <a  href="editadmin.jsp">UPDATE ADMIN ACCOUNT</a>
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
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		
			//HttpSession session = request.getSession();
			Admin admin = (Admin) session.getAttribute("currentSessionAdmin");
			
		
			if(admin == null){
		
		response.sendRedirect("home.html");
			}
	%>
	
	<div class="limiter">
		<div class="container-Reg">
			<div class="wrap-Reg">
				<form class="login-form validate-form" method="POST">
					<span class="login-form-title p-b-26">
						THANK YOU FOR REGISTERING!
					</span>
					<br>
					<%
						if(admin != null) {
															
							IAdminService iAdminServise = new AdminServiceImp();
							ArrayList<Admin> adminArrayList = iAdminServise.getAdmin(admin.getNic());
															
							for(Admin adminlist : adminArrayList){
								
					%>
					
					
					<table>
						<tr>
							<td>
								<h3>First name</h3>
								<h4><%=adminlist.getFname()%></h4>
							</td>
							<td>&emsp; &emsp; </td>
							<td>
								<h3>Last name</h3>
								<h4><%=adminlist.getLname()%></h4>
							</td>
						</tr>

						<tr>
							<td>
								<h3>Date of birth</h3>
								<h4><%=adminlist.getDob()%></h4>
							</td>
	
							<td>&emsp; &emsp; </td>
					
							<td>
								<h3>Gender</h3>
								<h4><%=adminlist.getGender()%></h4>
							</td>
						</tr>
	
						<tr>
							<td>
								<h3>Email</h3>
								<h4><%=adminlist.getEmail()%></h4>					
							</td>
	
							<td>&emsp; &emsp; </td>
					
							<td>							
								<h3>Contact number</h3>
								<h4><%=adminlist.getContactnum()%></h4>			
							</td>
						</tr>	
	
						<tr>
							<td>
								<h3>NIC</h3>
								<h4><%=adminlist.getNic()%></h4>
							</td>
	
							<td>&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp; </td>
					
							<td>
								<h3>Accout Type</h3>
								<h4><%=adminlist.getType()%></h4>
							</td>	
						</tr>	
						
						
					</table>

					<br>
<%}} %>
				</form>
				
					<br>
					<a href="deleteadmin.jsp"> 
					<div class="container-login-form-btn">
						<div class="wrap-submit-form-btn">
							<div class="login-form-bgbtn"></div>
							<button class="submit-form-btn">
								Delete
							</button>
						</div>
					</div>
					</a>


					<a href="editadmin.jsp"> 
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
	
<jsp:include page="WEB-INF/views/footer.jsp"/>
	<div id="dropDownSelect1"></div>
	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="js/main.js"></script>

</body>
</html>