<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<%
 
 String id=(String)session.getAttribute("id");
 if(id==null){
	 response.sendRedirect("../login/dist/loginForm.jsp");// 자바스크립트는 이용 불가
	 
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
int yue=0;
int ri=0;
int post=0;
String address="";
 
if(rs.next()){
	name=rs.getString("name");
    age=rs.getInt("age");
    gender=rs.getString("gender");
    email=rs.getString("email");
    yue=rs.getInt("yue");
    ri=rs.getInt("ri");
    post=rs.getInt("post");
    address=rs.getString("gender");
    
}
if(gender == null){
	gender="남자";
}
	// 성별의 정보가 없을 경우 기본값 설정


 %>
<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="assets/img/icons8-night-16.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Get Shit Done Bootstrap Wizard by Creative Tim</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />

<!--     Fonts and icons     -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lato&family=Open+Sans&family=Poppins:ital,wght@0,900;1,500&display=swap" rel="stylesheet">
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
<link
	href="http://netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.css"
	rel="stylesheet">

<!-- CSS Files -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="assets/css/gsdk-bootstrap-wizard.css" rel="stylesheet" />

<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="assets/css/demo.css" rel="stylesheet" />
 <link href="assets/css/navi.css" rel="stylesheet" />
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
                    <li class="nav-item"><a class="nav-link" href="#about" style="font-size:1.5rem;"> <%=id %>님  환영합니다.</a></li>
                        <li class="nav-item"><a class="nav-link" href="#about"style="font-size:1.5rem;">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="myPage/myImfo.jsp"style="font-size:1.5rem;">MyPage</a></li>
                        <li class="nav-item"><a class="nav-link" href="my_board/my_list.jsp"style="font-size:1.5rem;">Board</a></li>
                        <li class="nav-item"><a class="nav-link" href="login/dist/logout.jsp"style="font-size:1.5rem;">LogOut</a></li>
                        
                        
                    </ul>
                </div>
            </div>
            </div>
            
        </nav>


		<!--  Made With Get Shit Done Kit  -->

		<!--   Big container   -->
		<div class="container">
			<div class="row">
				<div class="col-sm-8 col-sm-offset-2">

					<!--      Wizard container        -->
					<div class="wizard-container">

						<div class="card wizard-card" data-color="orange"
							id="wizardProfile">
							<form action="" method="">
								<!--        You can switch ' data-color="orange" '  with one of the next bright colors: "blue", "green", "orange", "red"          -->

								<div class="wizard-header">
									<h3>
										<b>My page </b><br> <br>

									</h3>
								</div>

								<div class="wizard-navigation">
									<ul>
										
										<li><a href="myImfo.jsp" >정보확인</a></li>
										<li><a href="my_updateForm.jsp" >정보수정</a></li>
										<li><a href="my_deleteForm.jsp" >회원정보</a></li>
									</ul>
								</div>

								<div class="tab-content">

										<div class="row">

											<div class="col-sm-4 col-sm-offset-1">
												<div class="picture-container">
													<div class="picture">
														<img src="assets/img/default-avatar.png"
															class="picture-src" id="wizardPicturePreview" title="" />
														<input type="file" id="wizard-picture">
													</div>
													<h6>Choose Picture</h6>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<label>아이디 </label> <input type="text" name="id"
														value="<%=id%>" readonly="readonly" class="form-control"><br>
													<label>비밀번호</label> <input type="password" name="pass"
														placeholder="수정전 비밀번호를 입력하시오" class="form-control">
												</div>
												<div class="form-group">
													<label>이름 </label> <input type="text" name="name"
														value="<%=name%>" readonly="readonly" class="form-control">

												</div>
											</div>
											<div class="col-sm-10 col-sm-offset-1">
												<div class="form-group">
													<label>이메일 </label> <input type="text" name="email"
														value="<%=email%>" class="form-control"
														readonly="readonly">
												</div>
												<label>성별</label> <input type="text" name="gender"
													value="<%=gender %>" class="form-control"
													readonly="readonly"> <br>
												 출생년도 <input type="text" name="age"
													value="<%=age%>년<%=yue %>월<%=ri %>일" class="form-control" readonly="readonly">
                                                     <label>우편번호</label>
								<input type="text" name="post"value="<%=post %>" class="form-control" readonly="readonly">
                                        <label>주소</label>
                                       <input type="text" name="address"value="<%=address %>" class="form-control" readonly="readonly">
										
										</div>
									</div>
									<div class="tab-pane" id="account">
										<h4 class="info-text">수정 하실 정보를 입력하세요</h4>
										<div class="row">

											<div class="col-sm-10 col-sm-offset-1">

												<form action="updatePro.jsp" method="post">
													<label>아이디 </label> <input type="text" name="id"
														value="<%=id%>" readonly="readonly" class="form-control"><br>
													<label>비밀번호</label> <input type="password" name="pass"
														placeholder="수정전 비밀번호를 입력하시오" class="form-control">
													<label>이름 </label> <input type="text" name="name"
														value="<%=name%>" class="form-control"> <label>이메일
													</label> <input type="text" name="email" value="<%=email%>"
														class="form-control"> <label>성별</label> <input
														type="radio" name="gender" value="남자"
														<%if(gender.equals("남")){ %> checked="checked" <% }%>>
													남 <input type="radio" name="gender" value="여자"
														<%if(gender.equals("여")){ %> checked="checked" <% }%>>
													여 <br> <input type="submit" value="수정하기">
												</form>
											</div>

										</div>
									</div>
<!-- 									<div class="tab-pane" id="address"> -->
<!-- 										<div class="row"> -->
<!-- 											<div class="col-sm-12"> -->
<!-- 												<h4 class="info-text">탈퇴를 원하시면 비밀번호를 입력하세요></h4> -->
<!-- 											</div> -->
<!-- 											<div class="col-sm-7 col-sm-offset-1"> -->
<!-- 												<div class="form-group"> -->

<!-- 													<form action="deletePro.jsp" method="post"> -->
<!-- 														<input type="hidden" name="id" class="form-control" -->
<%-- 															value="<%=id%>"> <label>비밀번호 </label><input --%>
<!-- 															type="password" class="form-control" name="pass"> -->
<!-- 														<br> <input type="submit" value="탈퇴하기 "> -->



													</form>

												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="wizard-footer height-wizard">
									<div class="pull-right"></div>

									<div class="pull-left"></div>
									<div class="clearfix"></div>
								</div>

							</form>
						</div>
					</div>
					<!-- wizard container -->
				</div>
			</div>
			<!-- end row -->
		</div>
		<!--  big container -->

		<div class="footer">
			<div class="container">
				Made with <i class="fa fa-heart heart"></i> by <a
					href="http://www.creative-tim.com">Creative Tim</a>. Free download
				<a href="http://www.creative-tim.com/product/bootstrap-wizard">here.</a>
			</div>
		</div>

	</div>

</body>

<!--   Core JS Files   -->
<script src="assets/js/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/js/jquery.bootstrap.wizard.js"
	type="text/javascript"></script>

<!--  Plugin for the Wizard -->
<script src="assets/js/gsdk-bootstrap-wizard.js"></script>

<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->
<script src="assets/js/jquery.validate.min.js"></script>

</html>
