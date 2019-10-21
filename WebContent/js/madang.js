$(document).ready(function(){
	//헤더
	$('header nav li').hover(
		function() {
		$('ul', this).stop().slideDown(200);
		},
		function() {
		$('ul', this).stop().slideUp(200);
		}
	);
	
	//메인페이지


	$('.autoplay').slick({
			  slidesToShow: 1,
			  slidesToScroll: 1,
			  autoplay: true,
			  autoplaySpeed: 1000
			});
		
	$('.center').slick({
			  centerMode: true,
			  centerPadding: '60px',
			  slidesToShow: 3,
			  responsive: [
			    {
			      breakpoint: 768,
			      settings: {
			        arrows: false,
			        centerMode: true,
			        centerPadding: '40px',
			        slidesToShow: 3
			      }
			    },
			    {
			      breakpoint: 20,
			      settings: {
			        arrows: false,
			        centerMode: true,
			        centerPadding: '40px',
			        slidesToShow: 1
			      }
			    }
			  ]
			});
		
});	
	
