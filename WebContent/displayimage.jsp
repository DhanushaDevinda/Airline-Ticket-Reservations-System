<%@page import="com.mysql.jdbc.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<title>Display image</title>
</head>
<body>
<jsp:include page="WEB-INF/views/header.jsp"/> 
		<%
		int flightID =Integer.parseInt(request.getParameter("flightID")); //meeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
		
		String sql = SELECT img FROM flight WHERE = flightID;
		
		%>%>

<jsp:include page="WEB-INF/views/footer.jsp"/> 
</body>
</html>