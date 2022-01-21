<%@page import="com.member.board.BoardBean"%>
<%@page import="com.member.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
   <%
     // 전달된 정보 (num,pageNum) 파라미터를 저장
     int num = Integer.parseInt(request.getParameter("num"));
     String pageNum = request.getParameter("pageNum");
     
     // 기존의 글정보를 DB에서 가져와서 화면에 출력(비밀번호 출력 X)
     BoardDAO bdao = new BoardDAO();
     
     BoardBean bb = bdao.getBoard(num);
   %>
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
                        <li class="nav-item"><a class="nav-link" href="mailForm.jsp"style="font-size:1rem;">About</a></li>
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
										<b style="font-size: 2rem; margin-left: 800px; margin-top: 300px;">Update</b><br> <br>

									</h3>
								</div>






     <nav id="sub_menu">
<ul>
<li><a href="#">공지</a></li>
<li><a href="my_list.jsp">게시판</a></li>

</ul>
</nav>

     <form action="my_updatePro.jsp?pageNum=<%=pageNum %>" method="post">
       <input type="hidden" name="num" value="<%=num%>" class="username">
      	글쓴이 : <input type="text" name="name" value="<%=bb.getName()%>" class="username"><br>
      	비밀번호 : <input type="password" name="pass" placeholder="비밀번호를 입력하세요." class="username"><br>
      	제목 : <input type="text" name="subject" value="<%=bb.getSubject()%>"class="username"><br>
      	<label>내용</label> :<br>
      	&nbsp &nbsp<textarea rows="5" cols="20" name="content" class="tname"><%=bb.getContent() %></textarea>
      	
		<input type="submit" value="수정하기" class="btn">     
     </form>
   </div>
   </div>

   </div>
   </div>
   

   </body>
   
   
   
   
   
   
   
   
   
   

    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script><script  src="script.js"></script>
</html>