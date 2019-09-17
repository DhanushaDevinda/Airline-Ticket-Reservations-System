<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/login.css">
  <link rel="stylesheet" href="css/signup1.css">
  <link rel="stylesheet" href="css/util1.css">
  <link rel="stylesheet" href="css/main1.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>What's on your Flight</title>
</head>
<body>
<jsp:include page="WEB-INF/views/header.jsp"/>
	<div class="bodyformContent">
                <div class="wrapper fadeInDown">
                  <div id="formContent">
                  <a href="searchflight.jsp"><button type="button" class = "inactive underlineHover"> Search flights</button></a>
                  <a href="checkin.jsp"><button type="button" class = "inactive underlineHover"> Manage booking or Check in</button></a>
                  <a href="#"><button type="button" class = "active"> What's on your flight</button></a>
                  <a href="flightstatus.jsp"><button type="button" class = "inactive underlineHover"> Flight status</button></a><br><br>
                    <table>
          <tr> 
            <td>Log in to see your trips</td>
            <td>
              <input type="radio" id="test1" name="route" checked>
                           <label for="test1">Route</label>

                           <input type="radio" id="test2" name="flight">
                           <label for="test2">Flight Number</label><br>
            </td>
          </tr>
          <tr>
            <td>
              <br>
              <div class="wrap-input validate-input" data-validate = "Enter last name">
                  <input  class="input100" list="platform" name="depair" placeholder="Departure Airport" required>
                  <span class="focus-input" data-placeholder=""></span>
                  <datalist id="platform">
                    <option value="PC">
                    <option value="PlayStation">
                    <option value="Xbox">
                  </datalist>
                 </div>
            </td>
            <td>
              <br>
              <div class="wrap-input validate-input" data-validate = "Enter last name">
                  <input  class="input100" list="platform" name="retair" placeholder="Return Airport" required>
                  <span class="focus-input" data-placeholder=""></span>
                  <datalist id="platform">
                    <option value="PC">
                    <option value="PlayStation">
                    <option value="Xbox">
                  </datalist>
                 </div>
            </td>
            
            <td>Date
             <input name="date" type="date">
            </td>   

           <td>
            <input type="button" id="login" class="fadeIn second" name="search" value="What's on" >
            </td>
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