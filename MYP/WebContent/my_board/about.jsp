<%@page import="com.member.board.BoardBean"%>
<%@page import="com.member.board.BoardDAO"%>
<%@page import="java.awt.color.CMMException"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

  <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css'>
  <link rel="stylesheet" href="scc/board.css">
  <!-- 로고 -->
  <link href="scc/demo.css" rel="stylesheet" />
  <link href="scc/default.css" rel="stylesheet" type="text/css">
    <link href="navi.css" rel="stylesheet" />
  <!-- 풋터 -->
<link href="scc/subpage.css" rel="stylesheet" type="text/css">
  <link	href="http://netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.css"
	rel="stylesheet">



</head>
    <body id="page-top" >
    <div class="image-container set-full-height" style="background-image: url('assets/img/purpleSky.jpg')">
        <!-- Navigation-->
        <div class="navice">
        <nav class="nbr nbr-expand-lg nbr-light fixed-top" id="mainNav" name="navi">
            <div class="ctn px-4 px-lg-5">
                <a class="nbr-brand" href=".././main.jsp">WYW</a>
                <button class="nbr-toggler nbr-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse nbr-collapse" id="nbrResponsive">
                    <ul class="nbr-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="#about"style="font-size:1rem;">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="../myPage/myImfo.jsp"style="font-size:1rem;">MyPage</a></li>
                        <li class="nav-item"><a class="nav-link" href="my_list.jsp"style="font-size:1rem;">Board</a></li>
                        <li class="nav-item"><a class="nav-link" href="../login/dist/logout.jsp"style="font-size:1rem;">LogOut</a></li>
                        
                        
                    </ul>
                </div>
            </div>
            </div>
            
        </nav>
    <div class="container">
<div class="c2">
					<div class="wizard-container">

						<div class="card wizard-card" data-color="orange"
							id="wizardProfile">
							<form action="" method="">
								<!--        You can switch ' data-color="orange" '  with one of the next bright colors: "blue", "green", "orange", "red"          -->

								<div class="wizard-header">
									<h3>
										<b>게시판</b><br> <br>

									</h3>
								</div>



     <nav id="sub_menu">
<ul>
<li><a href="#">공지</a></li>
<li><a href="mailForm.jsp">mail</a></li>

</ul>
</nav>



    
     </article>
     <br><br>
<footer>
<div id="copy">All contents Copyright 2011 FunWeb 2011 FunWeb 
Inc. all rights reserved<br>
Contact mail:nani_na@naver.com Tel +82 010 8415 0096</div>
</div>
</footer>
    
     </div>
     </div>
     
</form>
</nav>
</div>
</div>



</body>
<script src="assets/js/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Plugin for the Wizard -->

<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->
<script src="assets/js/jquery.validate.min.js"></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script><script  src="script.js"></script>
</html>