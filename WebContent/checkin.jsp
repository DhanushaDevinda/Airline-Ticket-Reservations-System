<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="css/login.css">
  <link rel="stylesheet" href="css/signup1.css">
  <link rel="stylesheet" href="css/main1.css">
  <link rel="stylesheet" href="css/util1.css">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>SIGN UP</title>
</head>
<body>
<jsp:include page="WEB-INF/views/header.jsp"/>
	<div class="bodyformContent">
                <div class="wrapper fadeInDown">
                  <div id="formContent">
                    <a href="searchflight.jsp"><button type="button" class = "inactive underlineHover"> Search flights</button></a>
                  	<a href="#"><button type="button" class = "active"> Manage booking or Check in</button></a>
                  	<a href="whatson.jsp"><button type="button" class = "inactive underlineHover"> What's on your flight</button></a>
                  	<a href="flightstatus.jsp"><button type="button" class = "inactive underlineHover"> Flight status</button></a><br><br>
                    <!-- Tabs Titles -->
                      <table>
                        <tr>     
                           <td><br><input type="text" id="bref" class="fadeIn second" name="name"placeholder="Last Name"></td>                   
                           <td><br><input type="text" id="bref" class="fadeIn second" name="refer"placeholder="Booking Reference"></td>
                           <td><input type="button" id="login" class="fadeIn second" name="book" value="Manage Booking" ></td>
                           <td><input type="button" id="password" class="fadeIn second" name="check" value="Check In"></td>

                          
                         </tr>
                     </table>

                  

                 </div>
               </div>
             </div>
       <table>
          	<tr>
          	<td><img src="images/backabout.jpg" width="318px;" height="200px" alt="logo" style="max-width: width auto; margin: 175px;">
          	</td>
          	<td>
          	</td>
          	<td><img src="images/backabout.jpg" width="318px;" height="200px" alt="logo" style="max-width: width auto; margin: 175px;">
          	</td>
          	</tr>
          	<tr>
          	<td><img src="images/backabout.jpg" width="318px;" height="200px" alt="logo" style="max-width: width auto; margin: 175px;">
          	</td>
          	<td>
          	</td>
          	<td><img src="images/backabout.jpg" width="318px;" height="200px" alt="logo" style="max-width: width auto; margin: 175px;">
          	</td>
          	</tr>
          </table>
<jsp:include page="WEB-INF/views/footer.jsp"/>    
</body>
</html>