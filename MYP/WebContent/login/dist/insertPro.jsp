<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Webcontent/member/insertPro.jsp</h1>
	<%
	// 한글처리 => post방식으로 넘겼으므로 필요한 작업 
	request.setCharacterEncoding("UTF-8");
	
	// 전달정보 저장(파라미터)
	// id,pass,name,age,gender,email
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	int  age = Integer.parseInt(request.getParameter("age"));
	int  yue = Integer.parseInt(request.getParameter("yue"));
	int  ri = Integer.parseInt(request.getParameter("ri"));
	int post=Integer.parseInt(request.getParameter("member_post"));
	String address=request.getParameter("addr");
		
	// 날짜 정보 생성 -> 현 시스템의 시간정보를 저장 
	Timestamp reg_date = new Timestamp(System.currentTimeMillis());
	
	// DB연결 후 회원 가입
	final String DRIVER = "com.mysql.jdbc.Driver";
	final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
	final String DBID = "root";
	final String DBPW = "1234";
	
	// 1. 드라이버 로드
	Class.forName(DRIVER);
	System.out.println(" 드라이버 로드 성공! ");  //-> 나중에 에러났을때 어디서 났는지 쉽게 알기위해서 출력문작성하는것
	
	// 2. 디비연결
	Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
	System.out.println(" 디비 연결 성공! ");
		
	// 3. sql(insert) & pstmt 객체
	String sql = "insert into my_member values(?,?,?,?,?,?,?,?,?,?,?)"; 
	//->컬럼명 없이 사용하려면 순차적으로 다 넣어야한다 가능하면 insert뒤에 컬럼명을 적어주는게 좋음 
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	pstmt.setString(1,id); //=> 실행하기전에 저장하겠다
	pstmt.setString(2,pass); 
	pstmt.setString(3,name); 
	pstmt.setString(4,gender); 
	pstmt.setString(5,email); 
	pstmt.setInt(6,age); 
	pstmt.setInt(7,yue); 
	pstmt.setInt(8,ri); 
	pstmt.setInt(9,post);
	pstmt.setString(10,address); 
	pstmt.setTimestamp(11, reg_date); 
	
	System.out.println(name);
	System.out.println(gender);
	
	// 4. sql 실행
	pstmt.executeUpdate();
	
	//pstmt = con.prepareStatement(sql);
	
	//System.out.println(pstmt.getst);
	System.out.println("회원가입 성공!");
			
	// 로그인페이지로 이동(loginForm.jsp)	
	%>
	
	<script type="text/javascript">
		alert(" 회원가입 성공! 로그인페이지로 이동! ");
		location.href="loginForm.jsp";
	
	</script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>