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

h2 {
  text-align: center;
  font-size: 16px;
  font-weight: 600;
  text-transform: uppercase;
  display:inline-block;
  margin: 10px 8px 10px 8px; 
  color:black;
}

.footer img{
  height : 32px ;
  width : 32px;
  margin: 0px 20px 40px 10px;
}

.container-learn{
  position: absolute;
  top: 190px;
  width: 160px; 
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  text-align: center;
  display: flex;
  flex-wrap: wrap;
  margin-left: 40px; 
  background:transparent;  
}

.wrap-learn {
  width: 140px;
  background:#e74c3c;



}
    </style>
    
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <div style="background-image:url(images/backabout.jpg); background-size: 100%; background-repeat: no-repeat;">
    <div style="background-color: rgb(68, 68, 68);">
        <nav class="navibar">
          <ul class="menu">
            &emsp; &emsp;
            </li>
            <li>
                <a href="#">BOOK</a>
            </li>
            <li>
              <a href="#">MANAGE</a>
            </li>
            <li>
              <a href="#">WHERE WE FLY</a>
            </li>
            <li>
              <a href="#">LOYALTY</a>
            </li>
            <li>
              <a href="#">HELP</a>
            </li>
&emsp; &emsp; &emsp; &emsp; 
  			<i class="fa fa-globe"><a href="#">LK</a></i>      
            <i class="fa fa-user-circle-o"><a href="usersignin.jsp">LOGIN</a></i>          
            
            <ul>
        </nav>
    </div>

    <a href="">
    <div class="container-learn">
      <div class="wrap-learn">
        <h2 style="	font-family:sans-serif;">Learn more</h2>
      </div>
    </div>
    </a>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  </div>

</body>
</html>