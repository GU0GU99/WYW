<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <%
  //content에서 전달된 파라미터값 저장 (num,re_ref,re_lev,re_seq)
  int num = Integer.parseInt(request.getParameter("num"));
  int re_ref = Integer.parseInt(request.getParameter("re_ref"));
  int re_lev = Integer.parseInt(request.getParameter("re_lev"));
  int re_seq = Integer.parseInt(request.getParameter("re_seq"));
  
  
  
  %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css'>
  <link rel="stylesheet" href="scc/board.css">
  <link href="scc/demo.css" rel="stylesheet" />



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
  <h1>개인프로젝트</h1>
  <h1>WebContent/board/rewriteForm.jsp</h1>
  <h2>답글 쓰기 </h2>
  
  <fieldset>
  <form action="my_rewritePro.jsp"method="post">
  <input type="hidden" name="num"value="<%=num%>">
  <input type="hidden" name="re_ref"value="<%=re_ref%>">
  <input type="hidden" name="re_lev"value="<%=re_lev%>">
  <input type="hidden" name="rs_seq"value="<%=re_seq%>">
  
	  글쓴이 : <input type="text"name="name"><br>
	  비밀번호 : <input type="password"name="pass"><br>
	  제목 : <input type="text"name="subject"value="[답글]"><br>
	  내용:<br> 
	  <textarea rows="5" cols="20" name="content"></textarea>
	  <!--  textarea태그를 사용할때 열기와 닫기 사이를 띄우면 그만큼의 공백이 생성된다. -->
	  
	  <hr>
	  <input type="submit" value="답글쓰기">
  
  </form>
  </fieldset>
  </div>
  </div>
</body>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script><script  src="script.js"></script>
</html>