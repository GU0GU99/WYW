<%@page import="com.member.board.BoardBean"%>
<%@page import="com.member.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
//전달된 파라미터값 저장 (num,pageNum)
int num =Integer.parseInt(request.getParameter("num"));
String pageNum=request.getParameter("pageNum");
// 파라미터로만 데이터 움직이기 때문에 형변환할 필요 없음 리스트 페이지에서 자동으로 형변환해서 사용중
// num에 해당하는 글내용을 DB에서 가져오기 

// BoardDAO 객체 생성 
BoardDAO bdao =new BoardDAO();
//글 조회수를 1증가 updateReadCount(num); // 어떤글을 읽었는지 알아야 조회수를 늘리기때문에 num를 넣는다
    bdao.updateReadcount(num);

//num 에 해당하는 글내용을 DB에서 가져오기 - getBoard(num) // num를 가져가는 값은 pk,uk 여야 한다.

 BoardBean bb = bdao.getBoard(num); // 정보를 가져왔으니 bb에 저장 

//System.out.println(bb);

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



</head>
<body>
<a href="../main.jsp">
         <div class="logo-container">
            <div class="logo">
                <img src="img/icons8-night-80.png">
            </div>
            <div class="brand">
                WYW
            </div>
        </div>
    </a>
    <div class="container">
    <div class="c2">

					<div class="wizard-container">

						<div class="card wizard-card" data-color="orange"
							id="wizardProfile">
							<form action="" method="">
								<!--        You can switch ' data-color="orange" '  with one of the next bright colors: "blue", "green", "orange", "red"          -->

								<div class="wizard-header">
									<h3>
										<b style="font-size: 2rem; margin-left: 800px; margin-top: 300px;">content</b><br> <br>


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



  
   <h2> 글 본문 내용 확인 </h2>
   <table border="1" width="650px" height="300px">
     <tr>
        <td>글번호</td>
        <td><%=bb.getNum() %></td>
        <td>조회수</td>
        <td><%=bb.getReadcount() %></td>
     </tr>
     <tr>
        <td>글쓴이</td>
        <td><%=bb.getName() %></td>
        <td>작성일</td>
        <td><%=bb.getDate() %></td>
     </tr>
     <tr>
       <td>글 제목</td>
       <td colspan="3"><%=bb.getSubject() %></td>
     </tr>
     <tr>
       <td>첨부파일</td>
       <td colspan="3">
       <a href="../upload/<%=bb.getFile() %>"><%=bb.getFile() %></a>
         <hr>
       <a href="filedown.jsp?file_name=<%=bb.getFile() %>"><%=bb.getFile() %></a>
       </td>
     </tr>
     <tr>
       <td>글 내용</td>
       <td colspan="3"><%=bb.getContent() %></td>
     </tr>
     <tr>
       <td colspan="4">
         <input type="button"  class="babon"value="수정하기" onclick="location.href='my_updateForm.jsp?num=<%=bb.getNum() %>&pageNum=<%=pageNum %>';">
         <input type="button" class="babon" value="삭제하기" onclick="location.href='my_deleteForm.jsp?num=<%=bb.getNum() %>&pageNum=<%=pageNum %>';">
         <input type="button" class="babon" value="답글쓰기" onclick="location.href='my_rewriteForm.jsp?num=<%=bb.getNum() %>&re_ref=<%=bb.getRe_ref() %>&re_lev=<%=bb.getRe_lev() %>&re_seq=<%=bb.getRe_seq() %>';">
         <input type="button" class="babon" value="목록으로" onclick="location.href='my_list.jsp?pageNum=<%=pageNum%>';">
       </td>
     </tr>
   
   </table>
   </div>
</nav>
   </div>
   </div>
   </div>
   

</body>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script><script  src="script.js"></script>
</html>