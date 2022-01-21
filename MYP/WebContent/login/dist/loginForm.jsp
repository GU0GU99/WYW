<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>개인프로젝트 로그인폼</title>
  <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css'>
  <link rel="stylesheet" href="insertcss.css">
    <link href="default.css" rel="stylesheet" type="text/css">
  <link href="demo.css" rel="stylesheet" />
  <link href="navi.css" rel="stylesheet" />


</head>

</head>
<body id="page-top" >
    <div class="image-container set-full-height" style="background-image: url('assets/img/purpleSky.jpg')">
        <!-- Navigation-->
        <div class="navice">
        <nav class="nbr nbr-expand-lg nbr-light fixed-top" id="mainNav" name="navi">
            <div class="ctn px-4 px-lg-5">
                <a class="nbr-brand" href="../../main.jsp">WYW</a>
                <button class="nbr-toggler nbr-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse nbr-collapse" id="nbrResponsive">
                    <ul class="nbr-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="#about"style="font-size:1rem;">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="loginForm.jsp"style="font-size:rem;">login</a></li>
                        
                        
                    </ul>
                </div>
                
                </div>
                </nav>
            </div>
            </div>

<!-- partial:index.partial.html -->
<div class="container">
   <div class="c1">
            <div class="c11">
         <h1 class="mainhead">what's your weather</h1>
         <p class="mainp">Just click the buttons below to toggle between SignIn & SignUp</p>
      </div>
            <div ><h1 class="s1class"><span>Login</span><span class="su"></span></h1></div>
           <div ><h1 class="s2class" onclick="location.href='insertForm.jsp';"><span>Signup</span><span class="su"></span></h1></div>
   </div>
   <div class="c2">
      <form  action="loginPro.jsp" method="post" class="signup" >
         
         <h1 class="signup1">SIGN IN</h1>
         <br><br><br><br>
         <input name="id" type="text" placeholder="id*" class="username"/>
			
			<input name="pass" type="password" placeholder="Password*" class="username"/>
         
         <input type="submit" value="LOGIN" class="btn"></button>
              </form>

      
   </div>
</div>

    <footer>
<div id="copy">
<hr align="center" style="border: solid 1px white; width: 50%;">


All contents Copyright 2021 what'syour weatherInc. all rights reserved<br>
Contact mail:nani_na@naver.com Tel +82 010 8415 0096
<div id="social"><img src="img/icons8-night-80.png" width="33" 
height="33" alt="Facebook">
</div>
</div>
</footer>

<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script><script  src="./script.js"></script>


</body>
</html>