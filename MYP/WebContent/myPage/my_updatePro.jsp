<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Set"%>
<%@page import="org.apache.catalina.filters.SetCharacterEncodingFilter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
//세션값 제어
String id=(String)session.getAttribute("id");

if(id==null){
	response.sendRedirect("../login/dist/loginForm.jsp");
}
// 한글 처리
request.setCharacterEncoding("UTF-8");
//전달되는 파라미터값 모두 저장
//(pass,name,age,gender,email)
String pass=request.getParameter("pass");
String name=request.getParameter("name");
int age =Integer.parseInt(request.getParameter("age"));
String gender =request.getParameter("gender");
System.out.println("gender"+gender);
String email =request.getParameter("email");

//전달받은 정보를 DB에 저장후 페이지 이동
final String DRIVER="com.mysql.jdbc.Driver";
final String DBURL ="jdbc:mysql://localhost:3306/jspdb";
final String DBID="root";
final String DBPW="1234";

//1) 드라이버 로드
Class.forName(DRIVER);
//2) 디비 연결 
Connection con=DriverManager.getConnection(DBURL, DBID, DBPW);

String sql="select pass from my_member where id=?";

PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setString(1, id);

ResultSet rs=pstmt.executeQuery();
	
	if(rs.next()){
		if(pass.equals(rs.getString("pass"))){
			// 본인
          
          
          //3 sql작성 & pstmt 잭체 생성
         sql = "update my_member set name=?,age=?,gender=?,email=? where id=?";
			 pstmt = con.prepareStatement(sql);
			 
			 pstmt.setString(1, name);
			 pstmt.setInt(2, age);
			 pstmt.setString(3, gender);
			 pstmt.setString(4, email);
			 pstmt.setString(5, id);
			 
			
          
          pstmt.executeUpdate();
          %>
          <script type="text/javascript">
          alert("회원정보 수정완료 ");
          
          location.href="../main.jsp";
          
          </script>
          <%
		}else{
			//회원정보 o,비밀번호 오류 
			%>
		<script type="text/javascript">
		alert("회원정보 오류 - 수정 x");
		history.back();		
		</script>
    <% 
		}
		
	}else{
		// 회원정보가 없음
		
	}


   %>


</body>
</html>