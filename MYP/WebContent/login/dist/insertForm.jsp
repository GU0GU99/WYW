<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>CodePen - DailyUI#001</title>
<!-- Jquery 사용  -->
<script src="../../js/jquery-3.6.0.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	  function setEmailDomain(domain){
	        $("#email_domain").val(domain);
	    }

	  function findAddr(){
			new daum.Postcode({
		        oncomplete: function(data) {
		        	
		        	console.log(data);
		        	
		            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
		            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
		            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		            var roadAddr = data.roadAddress; // 도로명 주소 변수
		            var jibunAddr = data.jibunAddress; // 지번 주소 변수
		            // 우편번호와 주소 정보를 해당 필드에 넣는다.
		            document.getElementById('member_post').value = data.zonecode;
		            if(roadAddr !== ''){
		                document.getElementById("addr").value = roadAddr;
		            } 
		            else if(jibunAddr !== ''){
		                document.getElementById("addr").value = jibunAddr;
		            }
		        }
		    }).open();
		}
	  
	  
	</script>
  <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css'>
  <link rel="stylesheet" href="logincss.css">
      <link href="default.css" rel="stylesheet" type="text/css">
<script type="text/javascript">

	
	//////////////////////////////////////정규식////////////////////////////////////////////////////////
	function idCheck() {
		
		if (document.is.id.value==""){
			alert("아이디를 적어주세요");
			is.id.focus();
			return false;
		}
		var user_id = is.id.value;
		var url = "idCheckPro.jsp?id=" + user_id;
		window.open(url,"IdCheck","toolbar=no,location=no,status=no,menubar=no,scrollbar=no,resizable=no,width=300,height=180");
		return;
	}

	
	function login() {
	  var email =$("#email").val();
	  var email_domain =$("#email_domain").val();
	  var addr =$("#addr").val();
	  var plusaddr=$("#plusaddr").val();
	 
		
		if(document.is.id.value ==""){
			alert("아이디를 입력하세요");
			document.is.id.focus();
			return false;
		}
		if(document.is.id.value.length < 4 ||document.is.id.value.length > 10){
			alert("아이디 자리수를 확인해주세요");
			document.is.id.focus();
			return false;
		}
		if(document.is.pass.value ==""){
			alert("비밀번호를 입력해주세요");
			document.is.pass.focus();
			return false;
		}
		if(document.is.pass.value !== document.is.pass_ch.value){
			alert("비밀번호를 다시 입력하세요");
			document.is.pass.focus();
			return false;
		}
		if(document.is.name.value ==""){
			alert("이름을 입력하세요");
			document.is.name.focus();
			return false;
		}
		if(document.is.email.value ==""){
			alert("이메일을 입력하세요");
			document.is.email.focus();
			return false;
		}
		if(email_domain ==""){
			alert("이메일을 정확히 입력하세요");
			document.is.email_domain.focus();
			return false;
		}
	 	 if(window.document.is.gender[0].checked == false && window.document.is.gender[1].checked ==false){
	 		 alert("성별 여부를 체크하세요");
	 		return false; 
     } 
	 	 if(document.is.age.value =="0s"){
	 		 alert("출생연도를 선택하세요");
	 		 document.is.age.focus();
	 		 return false;
	 	 }
	 	 if(document.is.yue.value =="0"){
	 		 alert("출생월을 선택하세요");
	 		 document.is.yue.focus();
	 		 return false;
	 	 }
	 	 if(document.is.ri.value =="" ){
	 		 alert("출생일을 입력하세요");
	 		 document.is.ri.focus();
	 		 return false;
	 	 }
	 	 if(document.is.ri.value > 32){
	 		 alert("출생일을  정확하게 입력하세요");
	 		 document.is.ri.focus();
	 		 return false;
	 	 }
	 	 	 email = email+"@"+email_domain;
	 	  	 	  $("#email").val(email);  
	 	  	 	  
	 	  	 	  addr=addr+" "+plusaddr;
	 	  	 	  $("#addr").val(addr);
	 	  	 	  
	 	  function setEmailDomain(domain){
	 	        $("#email_domain").val(domain);
	 	    }
		
	}
</script>
  <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css'>
  <link rel="stylesheet" href="login.css">
  <link href="demo.css" rel="stylesheet" />
  <link href="navi.css" rel="stylesheet" />


</head>
<body id="page-top" >
    <div class="image-container set-full-height" style="background-image: url('assets/img/purpleSky.jpg')">
        <!-- Navigation-->
        <div class="navice">
        <nav class="nbr nbr-expand-lg nbr-light fixed-top" id="mainNav" name="navi">
            <div class="ctn px-4 px-lg-5">
                <a class="nbr-brand" href="../../main.jsp">WYW</a>
                <button class="nbr-toggler nbr-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse nbr-collapse" id="nbrResponsive">
                    <ul class="nbr-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="#about"style="font-size:1rem;">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="loginForm.jsp"style="font-size:rem;">login</a></li>
                        
                        
                    </ul>
                </div>
                
                </div>
                </nav>
            </div>
            </div>
            
            
        
<!-- partial:index.partial.html -->
<div class="container">
<!--    <div class="c1"> -->
<!--             <div class="c11"> -->
<!--          <h1 class="mainhead">what's your weather</h1> -->
<!--          <p class="mainp">Just click the buttons below to toggle between SignIn & SignUp</p> -->
<!--       </div> -->
<!--       <div ><h1 class="s1class" onclick="location.href='loginForm.jsp';">로그인<span></span><span class="su"></span> -->
<!--       </h1></div> -->
<!--       <div ><h1 class="s2class" ><span>회원가입</span><span class="su"></span></h1></div> -->
<!--    </div> -->
   <div class="c3">
      <form action="insertPro.jsp" method="post" class="signup" name="is" onsubmit="return login();" >
         <h1 class="signup1">SIGN UP</h1>
         <br>
         <h5>id</h5>
            <input  type="text" placeholder="*id" class="username"name="id" id="id_id"/>
            <input type="button" class="idbtn" value="check" onclick="idCheck()"><br>

          <h5>password</h5>        
			<input  type="password" placeholder="*password" class="username"name="pass" id="id_pass"><input  type="password" placeholder="password check" class="username"name="pass_ch"id="id_pass_ch"/><br>
			<h5>name</h5>
			<input  type="text"  class="username"name="name" id="id_name"/><br>
			<h5>email</h5>
       		<input  type="text"id="email" placeholder="*email" class="username" name="email" maxlength="18"/>
<b>@</b><input type="text" id="email_domain" name="email_domain" class="domainame" value="" title="이메일 도메인" placeholder="email domain" maxlength="18"> 
       		
<select  title="select email" class="dmain" onclick="setEmailDomain(this.value)">
    <option value="">-선택-</option>
    <option value="naver.com">naver.com</option>
    <option value="gmail.com">gmail.com</option>
    <option value="hanmail.net">hanmail.net</option>
    <option value="hotmail.com">hotmail.com</option>
    <option value="korea.com">korea.com</option>
    <option value="nate.com">nate.com</option>
    <option value="yahoo.com">yahoo.com</option>
    </select><br>
    <h5>address</h5>
      <input id="member_post"  name="member_post"class="address" type="text" placeholder="Zip Code" readonly onclick="findAddr()">
  <input id="addr" name="addr" class="address" type="text" placeholder="Address" readonly> <br>
  <input type="text" id="plusaddr"class="address" placeholder="Detailed Address"><br>
    <h5>birth</h5>
						<select name="age" class="dge" >
				  <option value="0s" >출생년도</option>
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
<select name="yue" class="mname"  >
<opction value="0">월</opction>
<option value="1">1월</option>
<option value="2">2월</option>
<option value="3">3월</option>
<option value="4">4월</option>
<option value="5">5월</option>
<option value="6">6월</option>
<option value="7">7월</option>
<option value="8">8월</option>
<option value="9">9월</option>
<option value="10">10월</option>
<option value="11">11월</option>
<option value="12">12월</option>
</select>
<input  type="text" placeholder="일" class="myname"name="ri" id="id_day" maxlength="2"/><br>

				<label class="box-radio-input"><input type="radio" name="gender" id="select" value="남" ><span>남자</span></label> 
				<label class="box-radio-input"><input type="radio" name="gender" id="select" value="여" ><span>여자</span></label> 

<input type="submit" value="Sign Up" class="btn">
</form>
</div>
</div>


<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script><script  src="./script.js"></script>


</body>

<!-- <br> -->
<!-- <br> -->
<!-- <br> -->





<!--     <footer> -->
<!-- <div id="copy"> -->
<!-- <hr align="center" style="border: solid 1px white; width: 50%;"> -->
<!-- All contents Copyright 2011 FunWeb 2011 FunWeb  -->
<!-- Inc. all rights reserved<br> -->
<!-- Contact mail:nani_na@naver.com Tel +82 010 8415 0096 -->
<!-- <div id="social"><img src="img/icons8-night-80.png" width="33"  -->
<!-- height="33" alt="Facebook"> -->
<!-- </div></div> -->

<!-- </footer> -->
</html>