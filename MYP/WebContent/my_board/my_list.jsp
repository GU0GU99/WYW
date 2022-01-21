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



	<%
		// 테이블에 저장된 글의 총 개수 확인
		// BoardDAO 객체 생성
		BoardDAO bDAO = new BoardDAO();
		// 글의 총개수를 계산하는 메서드 생성
		int cnt = bDAO.getBoardCount();
		
		////////////////////////////////////////////////////////
		// 페이징 처리
		
		// 한 페이지에 출력할 글의 개수
		int pageSize = 5;
		// 현 페이지의 위치정보
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null){
			pageNum = "1";
		}
		
		// 시작행번호 계산  1...11...21...31...
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage-1)*pageSize+1;
		
		// 끝행번호 계산  10...20....30...40....
		int endRow = currentPage * pageSize;
		
		////////////////////////////////////////////////////////
		
		ArrayList boardList = null;
		// 저장된 모든 글의 정보를 가져오는 메서드 생성
		if(cnt > 0){ // cnt != 0
		   //boardList = bDAO.getBoardList();
		   boardList = bDAO.getBoardList(startRow,pageSize); 
		   //System.out.println(boardList.toString());
		}	
		
		
	%>
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
										<b style="font-size: 2rem; margin-left: 800px; margin-top: 300px;">게시판</b><br> <br>

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

     <article>

	<h3><a class="btn" href="my_writeForm.jsp" style="margin-left: 520px;">글쓰기</a></h3>

     [총 : <%=cnt %>개]
    <table id="notice">
      <tr>
		<td class="tno">번호</td>   
		<td class="ttitle">제목</td>       
		<td class="twrite">작성자</td>       
		<td class="tdate">날짜</td>       
		<td class="tread">조회수</td>       
		    
      </tr>
    
     
     
      <%
      // size() : 가변길이 배열의 요소의 수를 리턴하는 메서드
      for(int i=0;i<boardList.size();i++){
    	   BoardBean bb = (BoardBean) boardList.get(i);
      %>
	      <tr>
			<td><%=bb.getNum() %></td>       
			<td>
			<%
			int wid =0;
			if(bb.getRe_lev()>0){ //답글일때
				wid =10*bb.getRe_lev();
			
			%>
				<img src="level.gif" height="15" width="<%=wid%>">
				<img src="re.gif">
		    <% }%>
				<a href='my_content.jsp?num=<%=bb.getNum()%>&pageNum=<%=pageNum%>'>
				<%=bb.getSubject() %>
				</a>
			</td>       
			<td><%=bb.getName() %></td>       
			<td><%=bb.getDate() %></td>       
			<td><%=bb.getReadcount() %></td>       
			     
	      </tr>
      <%
      }
      %>
    
    </table>


 
    
    <%
     ///////////////////////////////////////////////////////////
     // 페이징처리
     if(cnt > 0){
    	 
    	// 한 페이지에서 보여줄 페이지 번호의 개수 
    	int pageBlock = 3;
    	
    	// 전체 페이지 개수 => 전체 글 / 페이지 크기
    	int pageCount = cnt / pageSize + (cnt % pageSize == 0? 0:1);
    	
    	// 페이지 블럭 시작번호 계산    1~10=> 1, 11~20 => 11, 21~30=>21
    	int startPage =((currentPage-1)/pageBlock)*pageBlock+1;
    	
    	// 페이지 블럭 끝번호 계산
    	int endPage = startPage + pageBlock - 1;
    	
    	if(endPage > pageCount){
    		endPage = pageCount;
    	}
    	
    	
    	// [이전]
    	if(startPage > pageBlock){
    		%>
    		  <a href="my_list.jsp?pageNum=<%=startPage-pageBlock%>">[이전]</a>
    		<%
    	}
    	// [1...10] [11...20] [21...30] ....
    	for(int i=startPage;i<=endPage;i++){
    		%>
    		     <a href="my_list.jsp?pageNum=<%=i%>">[<%=i %>]</a>
    		<%
    	}    	
    	// [다음]
    	if(endPage < pageCount){
    		%>
    		 <a href="my_list.jsp?pageNum=<%=startPage+pageBlock%>">[다음]</a>    		
    		<%
    	}
    	 
    	 
     }
     ////////////////////////////////////////////////////////////
    %>






    
     <br><br><br><br><br><br><br><br><br><br>
<footer>

<div id="copy">All contents Copyright 2011 FunWeb 2011 FunWeb 
Inc. all rights reserved<br>
Contact mail:nani_na@naver.com Tel +82 010 8415 0096</div>
<div id="social">
</div>
</footer>
    
     </div>
     </div>
     
</form>
</nav>
</div>
</div>

     </article>


</body>
<script src="assets/js/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Plugin for the Wizard -->

<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->
<script src="assets/js/jquery.validate.min.js"></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script><script  src="script.js"></script>
</html>