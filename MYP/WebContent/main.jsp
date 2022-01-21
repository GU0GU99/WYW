<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<%
String id=(String)session.getAttribute("id");


if(id==null){
	response.sendRedirect("index.jsp");
	

}
%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Grayscale - Start Bootstrap Theme</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
           <!-- 내가 가져온 폰트 -->
           

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lato&family=Open+Sans&family=Poppins:ital,wght@0,900;1,500&display=swap" rel="stylesheet">
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/weather.css" rel="stylesheet" type="text/css" />
        
        <script src="js/jquery-3.6.0.js"></script>
	<script type="text/javascript">

	
   
    var cityName="";
	
     //bb(cityName);
    
     function logout() {
    	 if( confirm("정말 로그아웃 하시겠습니까?") ) {
             location.href="login/dist/logout.jsp";
         }
	}
     function cc (){
    	var location=document.fr.cityName.value;
    	cityName=location;
         
//         alert(cityName+"**");   	
    	bb(cityName);
    	return false;
    }
     
    
	function bb(cityName) {
		
		if(cityName == null){
			cityName="seoul";
		}
// 		alert(cityName+"++");
		
				$.getJSON('http://api.openweathermap.org/data/2.5/weather?q='+cityName+'&lang=kr&appid=7fb86b37ff91d917915c40dd7bb11536&units=metric',
				function(data){

			// 내가 할일
			var minTemp = Math.floor(data.main.temp_min);
			var maxTemp = Math.floor(data.main.temp_max);
		    var cTemp = data.weather[0].icon;
		    var zaiTemp =data.weather[0].main;
		    var currentTemp = Math.floor(data.main.temp);
		    
// 		 	alert("현재 서울의 온도는"+cTemp+"도 입니다.");
// 		 	console.log(data.main.temp);
    

		    var Now = new Date();

		    var NowTime = (Now.getMonth()+1) ;

// 		    NowTime += '.' + (Now.getMonth()+1) ;

		    NowTime += '.' + Now.getDate();

		    NowTime += ' ' + Now.getHours();

		    NowTime += ':' + Now.getMinutes();

		 
		    
		 	$('.xianzai').html(NowTime);	    				   		    
		    $('.clowTemp').html("최저온도 :"+minTemp+"℃");
		    $('.chightTemp').html("최고온도 :"+maxTemp+"℃");
		    $('.ccTemp').html("Current weather :"+currentTemp+"℃");
		    $('.citycc').html(cityName.toUpperCase());
// 		    $('.weIcon').html('<img src="http://openweathermap.org/img/w/' + cTemp + '.png" width=80px;/>');
		    $('.weIcon').html('<img src=" http://openweathermap.org/img/wn/'+cTemp+'@2x.png" width=120px;/>');
		    
		    var Now = new Date(); // Tue Oct 20 2015 10:48:49 GMT+0900 (대한민국 표준시) 라고 표시됩니다.

		  	    
		    
		    var winter = currentTemp <=4;
		    var earlyWinter = currentTemp >=5 && currentTemp < 9;
		    var beginWinter = currentTemp >=9 &&currentTemp < 12;
		    var fall = currentTemp >= 12 && currentTemp < 17;
		    var earlyFall = currentTemp >=17 && currentTemp < 20;
		    var earlySummer = currentTemp >= 20 && currentTemp < 23;
		    var beginSummer = currentTemp >= 23 && currentTemp <28;
		    var Summer = currentTemp >= 28;
		    
		    yifu();
		    weather();
		    
		    function yifu(){
		if(winter){
		    $('.tuijian').html("<h3>Recommendation </h3>"
					+"<table style='text-align:center;'><tr><td width='20%'><img src='assets/icon/coat.png' width='120'></td><td width='20%'><img src='assets/icon/winter-hat.png' width='120'></td></tr><tr><td>코트</td>"
					+"<td>털모자</td></tr>"
					+"<tr><td><img src='assets/icon/scarf.png' width='120'></td><td><img src='assets/icon/winter-gloves.png' width='120'></td></tr>"
					+"<tr><td>목도리</td><td>장갑</td></tr></table>");
			}
		else if(earlyWinter){    
			$('.tuijian').html("<h3>Recommendation </h3>"
					+"<table style='text-align:center;'><tr><td width='20%'><img src='assets/icon/coat.png' width='120'></td><td width='20%'><img src='assets/icon/sweater.png' width='120'></td></tr>"
					+"<tr><td>코트</td><td>니트</td></tr>"
					+"<tr><td><img src='assets/icon/scarf.png' width='120'></td><td><img src='assets/icon/leather-jacket.png' width='120'></td></tr>"
					+"<tr><td>목도리</td><td>가죽자켓</td></tr></table>");

		}
		else if(beginWinter){    
			$('.tuijian').html("<h3>Recommendation </h3>"
					+"<table style='text-align:center;'><tr><td width='20%'><img src='assets/icon/trench-coat.png' width='120'></td><td width='20%'><img src='assets/icon/hoodie.png' width='120'></td></tr>"
					+"<tr><td>트렌치 코트</td><td>후드</td></tr>"
					+"<tr><td><img src='assets/icon/long-sleeve.png' width='120'></td><td><img src='assets/icon/leather-jacket.png' width='120'></td></tr>"
					+"<tr><td>긴팔</td><td>가죽자켓</td></tr></table>");
		}
		else if(fall){    
			$('.tuijian').html("<h3>Recommendation </h3>"
					+"<table style='text-align:center;'><tr><td width='20%'><img src='assets/icon/cardigan.png' width='120'></td><td width='20%'><img src='assets/icon/hoodie.png' width='120'></td></tr>"
					+"<tr><td>가디건</td><td>후드</td></tr>"
					+"<tr><td><img src='assets/icon/long-sleeve.png' width='120'></td><td><img src='assets/icon/jeans.png' width='120'></td></tr>"
					+"<tr><td>긴팔</td><td>청바지</td></tr></table>");
		}
		else if(earlyFall){    
			$('.tuijian').html("<h3>Recommendation </h3>"
					+"<table style='text-align:center;'><tr><td width='20%'><img src='assets/icon/cardigan.png' width='120'></td><td width='20%'><img src='assets/icon/hoodie.png' width='120'></td></tr>"
					+"<tr><td>가디건</td><td>후드</td></tr>"
					+"<tr><td><img src='assets/icon/long-sleeve.png' width='120'></td><td><img src='assets/icon/jeans.png' width='120'></td></tr>"
					+"<tr><td>긴팔</td><td>청바지</td></tr></table>");
		}
		else if(earlySummer){    
			$('.tuijian').html("<h3>Recommendation </h3>"
					+"<table style='text-align:center;'><tr><td width='20%'><img src='assets/icon/tshirt.png' width='120'></td><td width='20%'><img src='assets/icon/hoodie.png' width='120'></td></tr>"
					+"<tr><td>티셔츠</td><td>후드</td></tr>"
					+"<tr><td><img src='assets/icon/long-sleeve.png' width='120'></td><td><img src='assets/icon/jeans.png' width='120'></td></tr>"
					+"<tr><td>긴팔</td><td>청바지</td></tr></table>");
		}
		else if(beginSummer){    
			$('.tuijian').html("<h3>Recommendation </h3>"
					+"<table style='text-align:center;'><tr><td width='20%'><img src='assets/icon/polo-shirt.png' width='120'></td><td width='20%'><img src='assets/icon/short.png' width='120'></td></tr>"
					+"<tr><td>&nbsp;</td><td>&nbsp;</td></tr>"
					+"<tr><td><img src='assets/icon/dress.png' width='120'></td><td><img src='assets/icon/tshirt2.png' width='120'></td></tr>"
					+"<tr><td>&nbsp;</td><td>&nbsp;</td></tr></table>");

		}
		else if(Summer){    
			$('.tuijian').html("<h3>Recommendation </h3>"
					+"<table style='text-align:center;'><tr><td width='20%'><img src='assets/icon/sleeveless.png' width='120'></td><td width='20%'><img src='assets/icon/short.png' width='120'></td></tr>"
					+"<tr><td>&nbsp;</td><td>&nbsp;</td></tr>"
					+"<tr><td><img src='assets/icon/dress.png' width='120'></td><td><img src='assets/icon/tshirt.png' width='120'></td></tr>"
					+"<tr><td>&nbsp;</td><td>&nbsp;</td></tr></table>");
		}
		else{$('.tuijian').html("걍 벗고 다니셈");
		}
		
		    }
		    
		    function weather() {
				if(cTemp =="09d" ||cTemp =="10d"||cTemp =="11d"){
					$('.masthead').css(
							"background-image",' url("assets/img/rain.jpg")');
					alert("!! Umbrella !!");
						}
				else if(cTemp == "09n"||cTemp =="10n"||cTemp=="11n"){
					$('.masthead').css(
							"background-image",' url("assets/img/09n,10n,11n.jpg")');
					alert("!! Umbrella !!");
				}
				else if(cTemp =="04d"){
					$('.masthead').css(
							"background-image",' url("assets/img/04n.jpg")');
				}
				else if(cTemp =="04n"){
					$('.masthead').css(
							"background-image",' url("assets/img/04n.jpg")');
				}
				else if (cTemp =="13d"){
					$('.masthead').css(
							"background-image",' url("assets/img/13d.jpg")');
				}
				else if (cTemp =="13n"){
					$('.masthead').css(
							"background-image",' url("assets/img/13n.jpg")');
				}				
				else if (cTemp =="03n"||cTemp == "02n"){
					$('.masthead').css(
							"background-image",' url("assets/img/03n,02n.jpg")');
				}
				else if (cTemp =="03d"||cTemp == "02d"){
					$('.masthead').css(
							"background-image",' url("assets/img/03d.jpg")');
		        }
				else if (cTemp =="01d"){
					$('.masthead').css(
							"background-image",' url("assets/img/03d.jpg")');
				}
				else if (cTemp =="01n"){
						$('.masthead').css(
								"background-image",' url("assets/img/01n.jpg")');
				}else{	$('.masthead').css(
						"background-image",'url("assets/img/pp_sky.jpg")');	}				
				
				
		    }
		    

		});
				
// 				alert("bb끝");
		} //bb

</script>
    </head>

    <body id="page-top" onload="bb()">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav" name="navi">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#page-top">WYW</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#about"> <%=id %>님  환영합니다.</a></li>
                        <li class="nav-item"><a class="nav-link" href="my_board/mailForm.jsp">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="myPage/myImfo.jsp">MyPage</a></li>
                        <li class="nav-item"><a class="nav-link" href="my_board/my_list.jsp">Board</a></li>
                        <li class="nav-item"><a class="nav-link"  onclick="logout();" style="cursor:pointer;">LogOut</a></li>
                        
                        
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <style class="BG">
        
        header{
        background-imag:'url("../assets/img/purple_sea.jpg");'
        }
        </style>
        
        <header class="masthead" >
        
				<div class="container px-4 px-lg-5 d-flex h-100  justify-content-end ">
					
	      <table   style="table-layout: fixed;">
		   <tr>
			<td rowspan="2"  width="29%">
					<div class="text-top">
						<h1 class=" text-uppercase c18">What's your weather</h1>
					
<!-- 						<input class="location" name="city" value="busan"style="whith:180px;height: 24px;" type=text placeholder="도시를 검색하세요"> -->
<!-- 					<button style="whith:180px;height: 24px;"  value ="busan" onclick="test(this.value);">부산</button> -->
					
					</div>
					</div>
					
				</div>
				</td>

			<td>
				<div class="c1" >
					<form name="fr" onsubmit="return cc();" >
						 <input type="text" id="cityName" placeholder="Enter a city name">
						
						 
						 <input type="submit" value="클릭" >
				    </form>
					<form action="" class="signup">
								<table >
								<tr>
								<td>
					     <h4 class="xianzai">현재시간</h4>
						<h4 class="citycc">도시이름</h4>
						</td>
										<td colspan="4" width="10%">
											<h2>
												<div class="weIcon" width= 100px;></div>
											</h2>
										</td>
						</tr>
			</table>
											<h2>
												<div class="ccTemp">현재 온도:</div>
											</h2>
				
							</form>
				</div>
			</td>
		</tr>
		<tr>
			<td>
				<div class="c22">
					<h2>
						<div class="tuijian" style="text-align:center;">추천하는 옷차림</div>
					</h2>
			</td>

			</div>
			</div>


			

		</tr>
	</table>
			</header>

	<!-- About-->

</body>
</html>