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

	    $(".main_switch_con").hide();
	    $(".main_switch_con:first").show();
	    
		$('.main_switch').click(function() {
	        $(".main_switch_con").hide();
	        var activeTab = $(this).attr("rel");
	        $("#" + activeTab).fadeIn();
		});

	
	//우편번호
	$('input.addr_find').click(function(){ 
	    new daum.Postcode({
	        oncomplete: function(data) {
	            var addr = ''; // 주소 변수
	            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                addr = data.roadAddress;
	            } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                addr = data.jibunAddress;
	            }
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            $('#sample6_postcode').val(data.zonecode);
	            $('#sample6_address').val(addr);
	        }
	    }).open();
	});
	
	//메인페이지
	$('.autoplay').slick({
			  slidesToShow: 1,
			  slidesToScroll: 1,
			  autoplay: true,
			  autoplaySpeed: 2000
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