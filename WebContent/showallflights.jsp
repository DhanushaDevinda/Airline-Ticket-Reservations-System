<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.airlinereservation.conn.DBConnection"%>
<%@page import="com.airlinereservation.model.Flight"%>
<%@page import="com.airlinereservation.service.IFlightService"%>
<%@page import="com.airlinereservation.service.FlightServiceImp"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.util.ArrayList"%>
<%@page import ="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show All Flights</title>
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
      	    <li><a class="activeadminnavibar" href="showallflights.jsp">FLIGHT DETAILS</a></li>
            <li><a href="addflight.jsp">ADD NEW FLIGHT</a></li>
            <li><a href="deleteflight.jsp">DELETE FLIGHT DETAILS</a></li>
            <li><a href="editflight.jsp">UPDATE FLIGHT DETAILS</a></li>     
          <ul>
        </nav>
    </div>

		<% 
		ResultSet resultset = null;
		String getFlightQuery = "SELECT * FROM flight";
		PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(getFlightQuery);
		resultset = ps.executeQuery();
		%>
	
	
								

	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
					<span class="login-form-title">
						Flight DETAILS
					</span>	
					
					<br><br>
					<table>
						<thead>
							<tr class="table100-head">
							
								<th class="column1">Flight ID</th>
								<th class="column2">Flight name</th>
								<th class="column3">Leaving from</th>
								<th class="column4">Going to</th>
								<th class="column5">Images</th>
								<th class="column6">Departure date</th>
								<th class="column7">Departure time</th>
								<th class="column8">Arrival time</th>
								<th class="column9">First class </th>
								<th class="column10">Business class </th>
								<th class="column11">Economy class </th>
								
								
								
							</tr>
						</thead>
						<tbody>
								
								<%while(resultset.next()) {%>
								<tr>
									<th class="column1"><%=resultset.getString(2)%></th>
									<th class="column2"><%=resultset.getString(3)%></th>
									<th class="column3"><%=resultset.getString(4)%></th>
									<th class="column4"><%=resultset.getString(5)%></th>
									<th class="column5"><%=resultset.getString(6)%></th>
									<th class="column6"><%=resultset.getString(7)%></th>
									<th class="column7"><%=resultset.getString(8)%></th>
									<th class="column8"><%=resultset.getString(9)%></th>
									<th class="column9"><%=resultset.getString(10)%></th>
									<th class="column10"><%=resultset.getString(11)%></th>
									<th class="column11"><%=resultset.getString(12)%></th>
								</tr>
									<% } %>
							

								
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>	

<jsp:include page="WEB-INF/views/footer.jsp"/>	
</body>
</html>