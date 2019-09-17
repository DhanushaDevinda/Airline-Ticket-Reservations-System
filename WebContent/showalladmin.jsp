<%@page import="java.sql.ResultSet"%>
<%@page import="com.airlinereservation.conn.DBConnection"%>
<%@page import="com.airlinereservation.model.Admin"%>
<%@page import="com.airlinereservation.service.IAdminService"%>
<%@page import="com.airlinereservation.service.AdminServiceImp"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.util.ArrayList"%>
<%@page import ="java.sql.PreparedStatement"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SHOW ALL ADMIN</title>
<link rel="stylesheet" type="text/css" href="css/table.css">
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
              <a href="editadmin.jsp">UPDATE ADMIN ACCOUNT</a>
            </li>
            <li>
              <a class="activeadminnavibar" href="showalladmin.jsp">SHOW ADMIN</a>
            </li> 
            <li>
              <a href="changepassword.jsp">UPDATE PASSWORD</a>
            </li>     
          <ul>
        </nav>
    </div>

		<% 
		ResultSet resultset = null;
		String getAdminQuery = "SELECT * FROM admin";
		PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(getAdminQuery);
		resultset = ps.executeQuery();
		%>
	
	
								

	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
					<span class="login-form-title">
						ADMIN DETAILS
					</span>	
					
					<br><br>
					<table>
						<thead>
							<tr class="table100-head">
							
								<th class="column1">Admin ID</th>
								<th class="column2">First Name</th>
								<th class="column3">Last Name</th>
								<th class="column4">Date Of Birth</th>
								<th class="column5">Gender</th>
								<th class="column6">Email</th>
								<th class="column7">Contact Number</th>
								<th class="column8">Password</th>
								<th class="column9">NIC</th>
								<th class="column10">Type</th>
								
								
							</tr>
						</thead>
						<tbody>
								
								<%while(resultset.next()) {%>
								<tr>
									<th class="column1"><%=resultset.getString(1)%></th>
									<th class="column2"><%=resultset.getString(2)%></th>
									<th class="column3"><%=resultset.getString(3)%></th>
									<th class="column4"><%=resultset.getString(4)%></th>
									<th class="column5"><%=resultset.getString(5)%></th>
									<th class="column6"><%=resultset.getString(6)%></th>
									<th class="column7"><%=resultset.getString(7)%></th>
									<th class="column8"><%=resultset.getString(8)%></th>
									<th class="column9"><%=resultset.getString(9)%></th>
									<th class="column10"><%=resultset.getString(10)%></th>
							</tr>
									<% } %>
							

								
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>	

<jsp:include page="WEB-INF/views/footer.jsp"/>			
<body>
</html>