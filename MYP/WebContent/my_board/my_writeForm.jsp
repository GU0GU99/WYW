<%@page import="javax.tools.DocumentationTool.Location"%>
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
  <link href="scc/demo.css" rel="stylesheet" />
  <link href="basic/style.css" rel="stylesheet" />
  <link href="scc/default.css" rel="stylesheet" type="text/css">
<link href="scc/subpage.css" rel="stylesheet" type="text/css">
  <link href="navi.css" rel="stylesheet" />
  <link href="login.css" rel="stylesheet" />
  <link
	href="http://netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.css"
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
                        <li class="nav-item"><a class="nav-link" href="myPage/myImfo.jsp"style="font-size:1rem;">MyPage</a></li>
                        <li class="nav-item"><a class="nav-link" href="my_board/my_list.jsp"style="font-size:1rem;">Board</a></li>
                        <li class="nav-item"><a class="nav-link" href="login/dist/logout.jsp"style="font-size:1rem;">LogOut</a></li>
                        
                        
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

								<div class="wizard-header">
									<h3>
										<b style="font-size: 2rem; margin-left: 800px; margin-top: 300px;">Write</b><br> <br>

									</h3>
								</div>



     <nav id="sub_menu">
<ul>
<li><a href="#">공지</a></li>
<li><a href="my_list.jsp">게시판</a></li>
<li><a href="#">Driver Download</a></li>
<li><a href="#">Service Policy</a></li>
</ul>
</nav>

  

  </form>

  <form action="my_writePro.jsp"method="post" enctype="multipart/form-data">
	  글쓴이 : <input type="text"name="name" class="username"><br>
	  비밀번호 :<input type="password"name="pass" class="username"><br>
	  제목 : <input type="text"name="subject" class="username"><br>
	  파일: <input type="file" name="file" class="username"><br>
	  내용:<textarea rows="5" cols="20" name="content"class="username" ></textarea>
	  <!--  textarea태그를 사용할때 열기와 닫기 사이를 띄우면 그만큼의 공백이 생성된다. -->
	  
	 
	 
	 
	 

	  <input type="submit" value="글쓰기" class="btn">
  
       </form>

    </div>
    </div>

    
    


  </div>
   </div>
 </body>
<script src="assets/js/jquery-2.2.4.min.js" type="text/javascript"></script>


<!--  Plugin for the Wizard -->

<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->
<script src="assets/js/jquery.validate.min.js"></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script><script  src="script.js"></script>
</html>