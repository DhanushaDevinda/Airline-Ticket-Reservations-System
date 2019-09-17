<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
        .navibar {
          background-color: rgb(68, 68, 68);
          color: #ffffff;
          border-radius: 4px;
          width: 100vw;
          max-width: 70%;
          margin: 0px auto 0;
          font-family: Poppins-Regular;
        }

        .navibar .menu {
          display: flex;
          position: relative;
        }

        .navibar .menu li {
          flex: 1;
          display: flex;
          text-align: center;
          transition: background-color 0.5s ease;
        }

        .navibar .menu a {
          flex: 1;
          justify-content: center;
          display: inline-flex;
          color: #ffffff;
          text-decoration: none;
          padding: 20px;
          position: relative;
        }

        .navibar .menu li:hover {
          background-color:rgb(43, 43, 43);
        }

        #footerformContent {
         background: rgb(116, 116, 116);
         padding: 30px;
         width: 100%;
         max-width: 100%;
         position: relative;
         padding: 0px;
         -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
         box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
         text-align: center;
       }

       .footerwrapper {
         display:flex;
         align-items: center;
         flex-direction: column; 
         justify-content: center;
         width: 100%;
         min-height: 20%;
       }

       .footer img{
        height : 32px ;
        width : 32px;
        margin: 0px 20px 40px 10px;
      }





body {
  font-family: "Poppins", sans-serif;
  height: 100vh;
}


.footer img{
  height : 32px ;
  width : 32px;
  margin: 0px 20px 40px 10px;
}

    </style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <footer class = "footer">
        <div class="footerwrapper">
          <div id="footerformContent">
            <br>
            <div style = "border-right: 2px solid #9090; max-width: 410px; margin: 20px; float: left;">
              <h2 style = "color:black;">Follow us</h2><br>
              <img src="images\in.png" alt="Smiley face"/>
              <img src="images\u.png" alt="Smiley face"/>
              <img src="images\fb.png" alt="Smiley face"/>
              <img src="images\tw.png" alt="Smiley face"/>
              <p style="text-align: right; margin-right: 30px; color:rgb(116, 116, 116);">Barbie is a fashion doll manufactured by the</p>
      
              <a href=".#"> <h2 class = "inactive underlineHover"> contact</h2> </a>
              <a href="#"> <h2 class = "inactive underlineHover"> Home</h2> </a>
              <a href="aboutus/aboutus.html"> <h2 class = "inactive underlineHover">About</h2> </a><br><br><br>
            </div>


            <br>


            <div style="border-right: 2px solid #9090; max-width: 550px;margin: 20px; float: left;">
              <h2 style="color:black;">About</h2>
              <p style="text-align: center; margin-right: 30px; color:black;">Whether its your first flight or simply your latest, we work to anticipate your every need</p>
              <br><br><br>
              <img src="images/apple.png" alt="logo" style=" width:400px; height:50px; max-width: width auto; margin: 1px; border-radius: 1px;" align="center" />
            </div>
          
            <br>
          
            <div>
              <h2 style="color:black;"> Navigations</h2><br>
              <a href="#"> <h2 class = "inactive underlineHover"> Home</h2> </a>
              <a href=".#"> <h2 class = "inactive underlineHover"> contact</h2> </a>
              <a href="aboutus/aboutus.html"> <h2 class = "inactive underlineHover">About</h2> </a><br><br>
        
              <img src="images/trip-advisor.png" alt="logo" style=" width:100px; height:95px; max-width: width auto; margin: 1px; border-radius: 1px;" align="center" />&emsp;&emsp;&emsp;
              <img src="images/GAWE.png" alt="logo" style=" width:165px; height:90px; max-width: width auto; margin: 1px; border-radius: 1px;" align="center" />
            </div>
        </div>
      </div>
    </footer>
</body>
</html>