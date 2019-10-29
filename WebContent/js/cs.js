$(document).ready(function(){
	
	//FAQ 내용 확인
	$("span:last-child").click(function(){
		var fid=$(this).attr("id");
		
		$("div#"+fid).slideToggle();
	});
	
	
	//1:1 글 작성 유효성체크
	$("button#qaa_write").click(function(){
		
		if($("input#qaa_title").val()==""){
			alert("제목을 입력하세요");
			$("input#qaa_title").focus();
			
		} else if($("textarea#qaa_contents").val()=="") {
			alert("내용을 입력하세요");
			$("textarea#qaa_contents").focus();
			
		} else {
			//alert("ㅇ");
			qaa_write_form.submit();
		}
	});
	
	
});


