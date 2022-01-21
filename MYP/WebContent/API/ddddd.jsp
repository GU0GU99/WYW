<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
     <script src="weather.html"></script>

</head>
<script src="../js/jquery-3.6.0.js"></script>
	<script type="text/javascript">
	
$.getJSON('http://api.openweathermap.org/data/2.5/weather?q=seoul&appid=7fb86b37ff91d917915c40dd7bb11536&units=metric',
		function(data){
	// 내가 할일
// 	alert("현재 서울의 온도는"+data.main.temp+"도 입니다.");
// 	console.log(data.main.temp);


	var $minTemp = data.main.temp_min;
	var $maxTemp = data.main.temp_max;
    var $cTemp = data.weather.icon;
    var $zaiTemp =data.weather.main;
    
    
    $('.clowTemp').append($minTemp);
    $('.chightTemp').append($maxTemp);
    



    
});

	  
	  
	  
  
  
  </script>
<body>

<h1>날씨 확인</h1>
<div class="clowTemp">최저온도</div>
<div class="chightTemp">최저온도</div>



</body>
</html>