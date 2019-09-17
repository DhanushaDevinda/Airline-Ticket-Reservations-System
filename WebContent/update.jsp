<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/login.css">
  <link rel="stylesheet" href="css/signup1.css"> 
  <link rel="stylesheet" type="text/css" href="css/util.css">
  <link rel="stylesheet" type="text/css" href="css/main.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Update Book a Ticket</title>
</head>
<body>
<jsp:include page="WEB-INF/views/header.jsp"/>
	<div class="bodyformContent">
    <div class="wrapper fadeInDown">
      <div id="formContent">
        <!-- Tabs Titles -->
        <button type="button" class = "active"> Update Search flights</button>
        <button type="button" class = "inactive underlineHover"> Manage booking or Check in</button>
        <button type="button" class = "inactive underlineHover"> What's on your flight</button> 
        <button type="button" class = "inactive underlineHover"> Flight status</button> <br><br>
        <form class="login-form validate-form" method="POST" action="Updatebookticket">
        <table>
          <tr> 
            <td>Log in to earn and spend Skywards Miles</td>
          </tr>
          <tr>
          	<td>
              <br>
                  <input type="text" id="bref" class="fadeIn second" name="email"placeholder="Email">
            </td>
            <td>
              <br>
              <div class="wrap-input validate-input" data-validate = "Enter last name">
                  <input  class="input100" list="platform" name="airport1" placeholder="Departure Airport" required>
                  <span class="focus-input" data-placeholder=""></span>
                  <datalist id="platform">
                    <option value="Srilanka">
                    <option value="America">
                    <option value="London">
                  </datalist>
                 </div>
            </td>
            <td>
              <br>
              <div class="wrap-input validate-input" data-validate = "Enter last name">
                  <input  class="input100" list="platform" name="airport2" placeholder="Return Airport" required>
                  <span class="focus-input" data-placeholder=""></span>
                  <datalist id="platform">
                    <option value="Srilanka">
                    <option value="America">
                    <option value="London">
                  </datalist>
                 </div>
            </td>

            <td>Departure Date
             <input name="depdate" type="date">
            </td>   

           <td>Return Date
            <input name="retdate" type="date">
            </td>
          </tr>
          <tr>
            <td>
              <br>
              <div class="wrap-input validate-input" data-validate = "Enter last name">
                  <input  class="input100" list="platform" name="adult" placeholder="Adults" required>
                  <span class="focus-input" data-placeholder=""></span>
                  <datalist id="platform">
                    <option value="Srilanka">
                    <option value="America">
                    <option value="London">
                  </datalist>
                 </div>
            </td>
            <td>
              <br>
              <div class="wrap-input validate-input" data-validate = "Enter last name">
                  <input  class="input100" list="platform" name="child" placeholder="Child" required>
                  <span class="focus-input" data-placeholder=""></span>
                  <datalist id="platform">
                    <option value="Srilanka">
                    <option value="America">
                    <option value="London">
                  </datalist>
                 </div>
            </td>
            <td>
              <br>
              <div class="wrap-input validate-input" data-validate = "Enter last name">
                  <input  class="input100" list="platform" name="infant" placeholder="Infant" required>
                  <span class="focus-input" data-placeholder=""></span>
                  <datalist id="platform">
                    <option value="Srilanka">
                    <option value="America">
                    <option value="London">
                  </datalist>
                 </div>
            </td>
            <td>
              <br>
              <div class="wrap-input validate-input" data-validate = "Enter last name">
                  <input  class="input100" list="platform" name="classes" placeholder="class" required>
                  <span class="focus-input" data-placeholder=""></span>
                  <datalist id="platform">
                    <option value="Srilanka">
                    <option value="America">
                    <option value="London">
                  </datalist>
                 </div>
            </td>
            
            <td>
            
              <button id="login" class="fadeIn second">SEARCH FLIGHT</button>
            </td>
          </tr>
          </table>
          </form>



        </div>
      </div>
    </div> 
<jsp:include page="WEB-INF/views/footer.jsp"/>   
</body>
</html>