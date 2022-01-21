<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
 <%
 String id=(String)session.getAttribute("id");
 
 if(id==null){
	 response.sendRedirect("../login/dist/loginForm.jsp");
	 
	 
	 
	 
	 
	 
	 
 }
 %>
<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>Get Shit Done Bootstrap Wizard by Creative Tim</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

	<!--     Fonts and icons     -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lato&family=Open+Sans&family=Poppins:ital,wght@0,900;1,500&display=swap" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.css" rel="stylesheet">

	<!-- CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets/css/gsdk-bootstrap-wizard.css" rel="stylesheet" />

	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link href="assets/css/demo.css" rel="stylesheet" />
	<link href="css/default.css" rel="stylesheet" />
	 <link href="assets/css/navi.css" rel="stylesheet" />

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
                    <li class="nav-item"><a class="nav-link" href="#about" style="font-size:1.5rem;"> <%=id %>님  환영합니다.</a></li>
                        <li class="nav-item"><a class="nav-link" href="#about"style="font-size:1.5rem;">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="myPage/myImfo.jsp"style="font-size:1.5rem;">MyPage</a></li>
                        <li class="nav-item"><a class="nav-link" href="my_board/my_list.jsp"style="font-size:1.5rem;">Board</a></li>
                        <li class="nav-item"><a class="nav-link" href="login/dist/logout.jsp"style="font-size:1.5rem;">LogOut</a></li>
                        
                        
                    </ul>
                </div>
            </div>
            </div>
            
        </nav>



    <!--   Big container   -->
    <div class="container">
        <div class="row">
        <div class="col-sm-8 col-sm-offset-2">

            <!--      Wizard container        -->
            <div class="wizard-container">

                <div class="card wizard-card" data-color="orange" id="wizardProfile">
                   
                <!--        You can switch ' data-color="orange" '  with one of the next bright colors: "blue", "green", "orange", "red"          -->

                    	<div class="wizard-header">
                        	<h3>
                        	   <b>My page </b><br>
                        	   <br>
                        	   
                        	</h3>
                    	</div>

						<div >
							<ul>
	                            <li><a href="myImfo.jsp" >정보확인</a></li>
	                            <li><a class="purple_tap" href="my_updateForm.jsp" >정보 수정</a></li>
	                            <li><a href="my_deleteForm.jsp" >회원 정보</a></li>
	                        </ul>

						</div>
						<div class="tab-pane" id="address">
										<div class="row">
											<div class="col-sm-12">
												<h4 class="info-text">탈퇴를 원하시면 비밀번호를 입력하세요</h4>
											</div>
											<div class="col-sm-7 col-sm-offset-1">
												<div class="form-group">

													<form action="my_deletePro.jsp" method="post" onsubmit="return del();">
														<input type="hidden" name="id" class="form-control"
															value="<%=id%>"> <label>비밀번호 </label><input
															type="password" class="form-control" name="pass">
														<br> <input type="submit" value="탈퇴하기 " >



													</form>

												</div>
											</div>
										</div>
									</div>
									    <footer>
<div id="copy">
<hr align="center" style="border: solid 1px white; width: 50%;">
All contents Copyright 2011 FunWeb 2011 FunWeb 
Inc. all rights reserved<br>
Contact mail:nani_na@naver.com Tel +82 010 8415 0096
<div id="social"><img src="img/icons8-night-80.png" width="33" 
height="33" alt="Facebook">
</div></div>

</footer>
</body>
<!--   Core JS Files   -->
<script src="assets/js/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/js/jquery.bootstrap.wizard.js"
	type="text/javascript"></script>

<!--  Plugin for the Wizard -->
<script src="assets/js/gsdk-bootstrap-wizard.js"></script>

<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->
<script src="assets/js/jquery.validate.min.js"></script>

</html>