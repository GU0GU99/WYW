<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

  <%
  //연결된 정보 저장 (num,pageNUm <-- content.jsp에서 받은 정보 )
  int num = Integer.parseInt(request.getParameter("num"));
  String pageNum= request.getParameter("pageNum");
  

  
  %>
   <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css'>
  <link rel="stylesheet" href="scc/board.css">
  <!-- 로고 -->
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

     <nav id="sub_menu">
<ul>
<li><a href="#">공지</a></li>
<li><a href="my_list/jsp">게시판</a></li>
</ul>
</nav>


  

  </form>
  
  <form action="my_deletePro.jsp?pageNum=<%=pageNum %>" method="post">
  <input type="hidden" name="num" value="<%=num%>">
  비밀번호 :<input type="password" name="pass" class="username">
  <input type="submit" value="글삭제">
  </form>
   

   </div>
   </div>
   
   
   
   
   
</body>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script><script  src="script.js"></script>
</html>