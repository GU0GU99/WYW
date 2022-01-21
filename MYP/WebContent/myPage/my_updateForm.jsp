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
<% String id=(String)session.getAttribute("id");
if(id==null){
	 response.sendRedirect("loginForm.jsp");// 자바스크립트는 이용 불가
	 
}

final String DRIVER="com.mysql.jdbc.Driver";
final String DBURL ="jdbc:mysql://localhost:3306/jspdb";
final String DBID="root";
final String DBPW="1234";


Class.forName(DRIVER);

Connection conn=DriverManager.getConnection(DBURL, DBID, DBPW);

String sql="select * from my_member where id=?";
		
		PreparedStatement pstmt=conn.prepareStatement(sql);

pstmt.setString(1,id);

ResultSet rs=pstmt.executeQuery();

//데이터 처리

String name=" ";
int age=0;
String gender="";
String email="";

if(rs.next()){
	name=rs.getString("name");
   age=rs.getInt("age");
   gender=rs.getString("gender");
   email=rs.getString("email");
}
if(gender == null){
	gender="남자";
}
	// 성별의 정보가 없을 경우 기본값 설정


 %>
<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>Get Shit Done Bootstrap Wizard by Creative Tim</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

	<!--     Fonts and icons     -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lato&family=Open+Sans&family=Poppins:ital,wght@0,900;1,500&display=swap" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.css" rel="stylesheet">

	<!-- CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets/css/gsdk-bootstrap-wizard.css" rel="stylesheet" />

	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link href="assets/css/demo.css" rel="stylesheet" />
	 <link href="assets/css/navi.css" rel="stylesheet" />
</head>

<body>
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
                    <li class="nav-item"><a class="nav-link" href="#about" style="font-size:1.5rem;"> <%=id %>님  환영합니다.</a></li>
                        <li class="nav-item"><a class="nav-link" href="#about"style="font-size:1.5rem;">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="my_board/my_list.jsp"style="font-size:1.5rem;">Board</a></li>
                        <li class="nav-item"><a class="nav-link" href="login/dist/logout.jsp"style="font-size:1.5rem;">LogOut</a></li>
                        
                        
                    </ul>
                </div>
            </div>
            </div>
            
        </nav>


    <!--   Big container   -->
    <div class="container">
        <div class="row">
        <div class="col-sm-8 col-sm-offset-2">

            <!--      Wizard container        -->
            <div class="wizard-container">

                <div class="card wizard-card" data-color="orange" id="wizardProfile">
                   
                <!--        You can switch ' data-color="orange" '  with one of the next bright colors: "blue", "green", "orange", "red"          -->

                    	<div class="wizard-header">
                        	<h3>
                        	   <b>My page </b><br>
                        	   <br>
                        	   
                        	</h3>
                    	</div>

						<div >
							<ul>
	                            <li><a href="myImfo.jsp" >정보확인</a></li>
	                            <li><a class="purple_tap" href="my_updateForm.jsp" >정보 수정</a></li>
	                            <li><a href="my_deleteForm.jsp" >회원 정보</a></li>
	                        </ul>

						</div>
						 <div  id="account">
                                <h4 class="info-text"> 수정 하실 정보를 입력하세요 </h4>
                                <div class="row">

                                    <div class="col-sm-10 col-sm-offset-1">
                                       
                                  <form action="my_updatePro.jsp" method="post">
                                        <label>아이디 </label>
                                        <input type="text" name="id" value="<%=id%>" readonly="readonly" class="form-control"><br>
                                         <label>비밀번호</label>
                                         <input type="password" name="pass" placeholder="수정전 비밀번호를 입력하시오"class="form-control">
                                       <label>이름 </label>
                                        <input type="text" name="name" value="<%=name%>"  class="form-control">
                                        <label>이메일 </label>
                                          <input type="text" name="email" value="<%=email%>"class="form-control" >
                                   <label>성별</label>
                                      <input type="radio" name="gender" value="남자" 
											<%if(gender.equals("남")){ %>
											checked="checked"
											<% }%>
											> 남
											     <input type="radio" name="gender" value="여자" 
											     <%if(gender.equals("여")){ %>
											checked="checked"
											<% }%>
											> 여
											<br>
											<select name="age" class="form-control"  >
				  <option value="<%=age %>" ><%=age %></option>
			       <option value="2013">2021</option>
			       <option value="2013">2020</option>
			       <option value="2013">2019</option>
			       <option value="2013">2018</option>
			       <option value="2013">2017</option>
			       <option value="2013">2016</option>
			       <option value="2013">2015</option>
			       <option value="2013">2014</option>
			       <option value="2013">2013</option>				  
			       <option value="2012">2012</option>
			       <option value="2011">2011</option>
			       <option value="2010">2010</option>
			       <option value="2009">2009</option>
			       <option value="2008">2008</option>
			       <option value="2007">2007</option>
			       <option value="2006">2006</option>
			       <option value="2005">2005</option>
			       <option value="2004">2004</option>
			       <option value="2003">2003</option>
			       <option value="2002">2002</option>
			       <option value="2001">2001</option>
			       <option value="2000">2000</option>
			       <option value="1999">1999</option>
			       <option value="1998">1998</option>
			       <option value="1997">1997</option>
			       <option value="1996">1996</option>
			       <option value="1995">1995</option>
			       <option value="1994">1994</option>
			       <option value="1993">1993</option>
			       <option value="1992">1992</option>
			       <option value="1991">1991</option>
			       <option value="1990">1990</option>
			       <option value="1989">1989</option>
			       <option value="1988">1988</option>
			       <option value="1987">1987</option>
			       <option value="1986">1986</option>
			       <option value="1984">1985</option>
			       <option value="1984">1984</option>
			       <option value="1983">1983</option>
			       <option value="1982">1982</option>
			       <option value="1981">1981</option>
			       <option value="1980">1980</option>
			       <option value="1979">1979</option>
			       <option value="1978">1978</option>
			       <option value="1977">1977</option>
			       <option value="1976">1976</option>
			       <option value="1975">1975</option>
			       <option value="1974">1974</option>
			       <option value="1973">1973</option>
			       <option value="1972">1972</option>
			       <option value="1971">1971</option>
			       <option value="1970">1970</option>
			       <option value="1969">1969</option>
			       <option value="1968">1968</option>
			       <option value="1967">1967</option>
			       <option value="1966">1966</option>
			       <option value="1965">1965</option>
			       <option value="1964">1964</option>
			       <option value="1963">1963</option>
			       <option value="1962">1962</option>
			       <option value="1961">1961</option>
			       <option value="1960">1960</option>
			       <option value="1959">1959</option>
			       <option value="1958">1958</option>
			       <option value="1957">1957</option>
			       <option value="1956">1956</option>
			       <option value="1955">1955</option>
			       <option value="1954">1954</option>
			       <option value="1953">1953</option>
			       <option value="1952">1952</option>
			       <option value="1951">1951</option>
			       <option value="1950">1950</option>
</select>
											<input type="submit" value="수정하기">
											</form>
                                    </div>

                                </div>
    <div class="footer">
        <div class="container">
             Made with <i class="fa fa-heart heart"></i> by <a href="http://www.creative-tim.com">Creative Tim</a>. Free download <a href="http://www.creative-tim.com/product/bootstrap-wizard">here.</a>
        </div>
    </div>

</div>

</body>

	<!--   Core JS Files   -->
	<script src="assets/js/jquery-2.2.4.min.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="assets/js/jquery.bootstrap.wizard.js" type="text/javascript"></script>

	<!--  Plugin for the Wizard -->
	<script src="assets/js/gsdk-bootstrap-wizard.js"></script>

	<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->
	<script src="assets/js/jquery.validate.min.js"></script>

</html>