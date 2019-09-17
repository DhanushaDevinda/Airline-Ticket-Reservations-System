<%@page import="java.sql.ResultSet"%>
<%@page import="com.airlinereservation.conn.DBConnection"%>
<%@page import="com.airlinereservation.model.Searchflight"%>
<%@page import="com.airlinereservation.service.ISearchflight"%>
<%@page import="com.airlinereservation.service.SearchflightServise"%>



<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.util.ArrayList"%>
<%@page import ="java.sql.PreparedStatement"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/table.css">
<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
<jsp:include page="WEB-INF/views/header.jsp"/>



		<% 
		ResultSet resultset = null;
		String getSearchflightQuery = "SELECT * FROM Searchflight";
		PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(getSearchflightQuery);
		resultset = ps.executeQuery();
		%>
	
	
								

	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
					<span class="login-form-title">
						Ticket DETAILS
					</span>	
					
					<br><br>
					<table>
						<thead>
							<tr class="table100-head">
							
								<th class="column1">Ticket no</th>
								<th class="column2">Email</th>
								<th class="column3">Departure Airport</th>
								<th class="column4">Return Airport</th>
								<th class="column5">Departure Date</th>
								<th class="column6">Return Date</th>
								<th class="column7">Adult</th>
								<th class="column8">Child</th>
								<th class="column9">Infant</th>
								<th class="column10">classes</th>
								
								
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
					<a href="deletecustomer.jsp">
					<div class="container-login-form-btn">
						<div class="wrap-submit-form-btn">
							<div class="login-form-bgbtn"></div>
							<button class="submit-form-btn">
								Delete
							</button>
						</div>
					</div>
					</a>						
					
					<a href="update.jsp">
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
	</div>	

<jsp:include page="WEB-INF/views/footer.jsp"/>			
<body>
</html>