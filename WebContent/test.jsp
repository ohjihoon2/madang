<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예술의 마당</title>
<!-- 슬릭 관련(공연,전시) -->
<link rel="stylesheet" type="text/css" href="slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="http://localhost:9090/slick/slick.min.js"></script>
				
<script type="text/javascript">
$(document).ready(function(){
	$('.autoplay').slick({
		  slidesToShow: 3,
		  slidesToScroll: 1,
		  autoplay: true,
		  autoplaySpeed: 200,
		});
	$('.single-item').slick();
	});

</script>
</head>
<body>
<section>

				 	<div class="autoplay">
					<div><img src="http://localhost:9090/images/mainpage/poster_37309.gif"></div>
					<div><img src="http://localhost:9090/images/mainpage/poster_37309.gif"></div>
					<div><img src="http://localhost:9090/images/mainpage/poster_37309.gif"></div>
					<div><img src="http://localhost:9090/images/mainpage/poster_37309.gif"></div>
					<div><img src="http://localhost:9090/images/mainpage/poster_37309.gif"></div>
					<div><img src="http://localhost:9090/images/mainpage/poster_37309.gif"></div>					
					<div><img src="http://localhost:9090/images/mainpage/poster_37309.gif"></div>
					</div>
</section>
<hr>
<section>
					<div class="single-item">
					<div><img src="http://localhost:9090/images/mainpage/poster_38632.gif"></div>
					<div><img src="http://localhost:9090/images/mainpage/poster_38632.gif"></div>
					<div><img src="http://localhost:9090/images/mainpage/poster_38632.gif"></div>
				</div>
</section>
</body>
</html>
