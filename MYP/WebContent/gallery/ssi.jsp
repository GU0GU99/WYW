<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@page import="java.io.*"%> 
 <%@page import="java.util.*"%> 
 <%@page import="java.sql.*"%> 
 <%@ page import="com.oreilly.servlet.*" %> 
 <%@ page import="com.oreilly.servlet.multipart.*" %> 
 <%@page import="net.utility.*"%> <%@page import="com.pds.*"%>
  <jsp:useBean id="dao" class="net.pds.PdsDAO">
  </jsp:useBean> <jsp:useBean id="dto" class="PdsDTO.PdsDTO">
  </jsp:useBean> <% request.setCharacterEncoding("UTF-8");%>

</body>
</html>