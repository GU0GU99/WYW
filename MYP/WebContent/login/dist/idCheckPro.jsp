<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="text-align: center">
</div> 
<h3>* 아이디 중복 확인 결과 *</h3> 
<% //1) 사용가능한 아이디일 경우, 아이디 입력 폼에 넣기 위함
request.setCharacterEncoding("UTF-8");
String id=request.getParameter("id");

int cnt=0;

final String DRIVER = "com.mysql.jdbc.Driver";
final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
final String DBID = "root";
final String DBPW = "1234";

// 1. 드라이버 로드

	Class.forName(DRIVER);
	Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
	//아이디 중복 확인 
//	sql.append(" SELECT count(id) as cnt ");
//	sql.append(" FROM member "); sql.append(" WHERE id = ? ");
	String sql = "select count(id) as cnt from my_member where id=?";
	
	PreparedStatement pstmt=con.prepareStatement(sql);
	pstmt.setString(1, id);
	ResultSet rs=pstmt.executeQuery();
// 	if(rs.next()){ cnt=rs.getInt("cnt");}
// 	else {System.out.println("아이디 중복 확인 실패 : " );}
	
	
	if(rs.next())
	{
		cnt=rs.getInt("cnt");
	}
	else
	{
		
	}



if(cnt==1)
{
%>
<b><font color="red"> <%=id%> </font>는 이미 사용중인 아이디입니다.</b>
<form name="checkForm" method="post" action="member.jsp">
<b>다른 아이디를 선택하세요. </b> <br/> <br/>
<input type="text" name="id" />
<input type="submit" value="ID중복확인"/>
</form>
<%
}
else
{
%><center>
<b>입력하신 <font color="red"><%=id%></font>는 <br/>
사용하실 수 있는 ID입니다.
<input type="button" value="닫기" onclick="setid();"></center>

<script language="javascript">
<%
}
%>
function setid()
{
	opener.document.is.id.value="<%=id%>";
	window.self.close();
}


	
	
</script>

	














</body>
</html>