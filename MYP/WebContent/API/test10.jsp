<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.6.0.js"></script>
<script type="text/javascript">
$(documant).ready(function(){
	$('#getWeatherForcast').click(function(){
	 var city =$('#city').val();
	 var key =7fb86b37ff91d917915c40dd7bb11536;
	 
	 $.ajax({
		 url:'http://api.openweathermap.org/data/2.5/weather',
		 dataType:'json',
		 type:'GET',
		 data:{q:city,appid:key,unit:'metric'},
		 
		  success:function(data){
			  var wf='';
			  $.each(data.weather,function(index,val){
				  wf='<p><b>'+data.name+'</b></p>'+
				  data.main.temp+'&deg;C'+'|'+val.main+','+val.description
				  
			  }
			  );
			  $("#showWeatherForcast").html(wf);
			  });
	 
		  }
		 
	});
	 
	 });
	
	
});

</script>
</head>
<body>

</body>
</html>