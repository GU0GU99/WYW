<%@page import="com.member.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>WebContent/board/deletePro.jsp</h1>


<%

//한글처리
request.setCharacterEncoding("UTF-8");

//전달된 파라미터값 저장
int num=Integer.parseInt(request.getParameter("num"));
String pageNum=request.getParameter("pageNum");
String pass=request.getParameter("pass");
%>
    <jsp:useBean id="bb" class="com.member.board.BoardBean"/>
    <jsp:setProperty property="*" name="bb"/>
<% 
//DAO객체 생성 -> 글 삭제 메서드(deleteBoard())
BoardDAO  bDAO = new BoardDAO();

int check = bDAO.deleteBoard(num, pass);
if(check == 1){
	%>
	 <script type="text/javascript">
	    alert("글 삭제 완료!");
	    location.href='my_list.jsp?pageNum=<%=pageNum%>';
	 </script>    	
	<%
}else if(check == 0){
	%>
	 <script type="text/javascript">
	     alert("비밀번호 오류!");
	     history.back();
	 </script>    	
	<%
}else{ //check == -1
	%>
   	 <script type="text/javascript">
   	     alert("해당 글 없음!");
   	     history.back();
   	 </script>    	
		<%
}
%>




//=>0,-1,1값을 사용하여 페이지 이동


%>










</body>
</html>

