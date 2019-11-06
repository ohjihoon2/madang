<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<script>
	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1; //January is 0!
	var yyyy = today.getFullYear();
 	if(dd<10){
        dd='0'+dd
    } 
    if(mm<10){
        mm='0'+mm
    } 

	today = yyyy+'-'+mm+'-'+dd;
	//document.getElementById("rcon_sdate").setAttribute("min", "2019-11-05");  today만드는 것 까지는 되지만, jQuery와 같이 써서인지 이런 코드는 작동x 대신 function은 작동

	$(document).ready(function(){
	
		
		
		$("#rcon_sdate").attr("min", today)//위의 자바스크립트가 안되서 변형한 것.
		$("#rcon_edate").attr("min", today)
		$("#rexh_sdate").attr("min", today)
		$("#rexh_edate").attr("min", today)
		
		$("select#rental_rq_dis_select").change(function(){
			var select = $(this).val();
			if(select == "공연"){
				$("section#rental_rq_con").css("display","block");
				$("section#rental_rq_exh").css("display","none");
			}else if(select == "전시"){
				$("section#rental_rq_con").css("display","none");
				$("section#rental_rq_exh").css("display","block");
			}else{
				$("section#rental_rq_con").css("display","none");
				$("section#rental_rq_exh").css("display","none");
			}
		});//카테고리 선택하는 매소드
		
		$("button.rental_rq_btn").click(function(){
			var dis=$(this).attr("id");
		//공연신청
			if(dis=="rental_rq_con_btn"){
				if($("input#rcon_title").val() == ""){
					alert("제목을 입력하세요");
				}else if($("input#rcon_sdate").val()==""){
					alert("시작일을 입력하세요");
				}else if($("input#rcon_edate").val()==""){
					alert("종료일을 입력하세요");
				}else if($("input#rcon_sdate").val()>$("input#rcon_edate").val()){
					alert("시작일이 종료일보다 클 수 없습니다.")
				}else if($("select#rcon_time_h").val()=="0"||$("select#rcon_time_h").val()=="1"){
					alert("공연시간은 2시간 이상이어야 합니다.");
				}else if($("select#rcon_rhtime_h").val()=="0"){
					alert("리허설 시간은 1시간 이상이어야 합니다.");
				}else if($("input#rcon_file").val()==""){
					alert("신청서를 올려주세요");
				}else{
					rental_rq_con_form.submit();
				}
				
		//전시신청
			}else if(dis =="rental_rq_exh_btn"){
				if($("input#rexh_title").val() == ""){
					alert("제목을 입력하세요");
				}else if($("input#rexh_sdate").val()==""){
					alert("시작일을 입력하세요");
				}else if($("input#rexh_edate").val()==""){
					alert("종료일을 입력하세요");
				}else if($("input#rexh_sdate").val()>$("input#rexh_edate").val()){
					alert("시작일이 종료일보다 클 수 없습니다.")
				}else if($("select#rexh_time_h").val()=="0"||$("select#rexh_time_h").val()=="1"){
					alert("전시시간은 2시간 이상이어야 합니다.");
				}else if($("input#rexh_file").val()==""){
					alert("신청서를 올려주세요");
				}else{
					rental_rq_exh_form.submit();
				}
				
				//rental_rq_exh_form.submit();
			}else{		
				alert("선택오류");
			}
		});//폼 전송하는 및 유효성검사
	});

</script>
<style>
	*{
		margin:0px;
		padding:0px;
		font-family:"나눔스퀘어라운드";
	}
	div#rental_rq_form {
		padding:10px 5px 0px 5px;
	}
	div#rental_rq_form >div{
		text-align:center;
		font-size:18pt;
		height:50px;
		padding-top:20px;
		color:rgb(5,135,94);
		width:100%;
	}
	
	div#rental_rq_form section#rental_rq_con,
	div#rental_rq_form section#rental_rq_exh{
		display:none;
		border-radius:20px;
		background-color:rgb(230,230,230);
		padding-top:10px;
		
	}


	div#rental_rq_form section form table,
	div#rental_rq_form section#rental_rq_dis table{
		width:90%;
		margin:auto;
	}
	div#rental_rq_form section form table th {
		width:120px;
		height:40px;
		text-align:left;
		padding-left:20px;
	}
	
	div#rental_rq_form section#rental_rq_dis table th{
		width:120px;
		height:60px;
		text-align:left;
		padding-left:20px;
		
	}
	div#rental_rq_form section#rental_rq_dis table select{
		width:100px;
		height:40px;
	}
	div#rental_rq_form section form table td input[type="text"]{
		width:250px;
		height:28px;
		padding-left:10px;
	}
	div#rental_rq_form section form table td input[type="date"]{
		width:250px;
		height:28px;
		padding-left:10px;
	}
	div#rental_rq_form section form table tr:last-child td{
		text-align:center;
	}
	div#rental_rq_form section form table button{
		width:200px;
		height:50px;
		background-color:rgb(5,135,94);
		margin:50px 0px 20px 0px;
		border:none;
		color:white;
		font-size:15pt;
	}
</style>
</head>
<body>
<div id="rental_rq_form">
	<div>대관 신청</div>
	<!-- 대관타입 선택 -->
	<section id="rental_rq_dis">
		<table>
			<tr>
				<th>대관 유형</th>
				<td>
				<select id="rental_rq_dis_select">
					<option>선택하세요</option>
					<option>공연</option>
					<option>전시</option>
				</select>
				</td>
			</tr>
		</table>
	</section>
	<!-- 공연 대관 폼 -->
	<section id="rental_rq_con">
			<form action="rentalrequest_multi_proce.jsp" method="post" name="rental_rq_con_form"  enctype="multipart/form-data" >
			<input type="hidden" name="r_case" value="concert"><!-- 공연선택했다는걸 알림 -->
			<table>
				<tr>
					<th>공연 제목</th>
					<td><input type="text" name="r_title" id="rcon_title"></td>
				</tr>	
				<tr>
					<th>대관 장소</th>
					<td><input type="text" value="베토벤홀" disabled/></td>
					<input type="hidden" name="r_place" value="베토벤홀">
				</tr>		
				<tr>
					<th>대관 시작일</th>
					<td><input type="date" name="r_sdate" id="rcon_sdate" min="2019-11-02"></td>
				</tr>
				<tr>
					<th>대관 종료일</th>
					<td><input type="date" name="r_edate" id="rcon_edate" min="2019-11-02"></td>
				</tr>
				<tr>
					<th>공연시각</th>
					<td>
						<select name="r_opentime_h" id="rcon_opentime_h">
							<%for(int i=0; i<=24;i++){ %>
								<option><%=i%></option>
							<%} %>
						</select>
						시&nbsp;&nbsp;&nbsp;
						<select name="r_opentime_min" id="rcon_opentime_min">
							<%for(int i=0; i<=60;i++){ %>
								<option><%=i%></option>
							<%} %>
						</select>
						분					
					</td>
				</tr>	
				<tr>
					<th>공연시간</th>
					<td>
						<select name="r_time_h" id="rcon_time_h">
							<%for(int i=0; i<=24;i++){ %>
								<option><%=i%></option>
							<%} %>
						</select>
						시간
						<select name="r_time_min" id="rcon_time_min">
							<%for(int i=0; i<=60;i++){ %>
								<option><%=i%></option>
							<%} %>
						</select>
						분					
					</td>
				</tr>
				<tr>
					<th>리허설 시간</th>
					<td>
						<select name="r_rhtime_h" id="rcon_rhtime_h">
							<%for(int i=0; i<=24;i++){ %>
								<option value="<%=i%>"><%=i%></option>
							<%} %>
						</select>
						시간
						<select name="r_rhtime_min" id="rcon_rhtime_min">
							<%for(int i=0; i<=60;i++){ %>
								<option value="<%=i%>"><%=i%></option>
							<%} %>
						</select>
						분					
					</td>
				</tr>		
				<tr>
					<th>신청서</th>
					<td><input type="file" name="r_file" id="rcon_file"></td>
				</tr>
				<tr>	
					<td colspan="2"><button type="button" id="rental_rq_con_btn" class="rental_rq_btn">전송</button></td>
				</tr>
			</table>
		</form>
	</section>
	<!-- 전시 대관 폼 -->
	<section id="rental_rq_exh">
	
		<form action="rentalrequest_multi_proce.jsp" method="post" name="rental_rq_exh_form" enctype="multipart/form-data">
			<input type="hidden" name="r_case" value="exhibition"><!-- 전시선택했다는걸 알림 -->
				<table>
				<tr>
					<th>전시 제목</th>
					<td><input type="text" name="r_title" id="rexh_title"></td>
				</tr>	
				<tr>
					<th>대관 장소</th>
					<td><input type="text" value="피카소홀" disabled/></td>
					<input type="hidden" name="r_place" value="피카소홀">
				</tr>		
				<tr>
					<th>대관 시작일</th>
					<td><input type="date" name="r_sdate" id="rexh_sdate" min="2019-11-02"></td>
				</tr>
				<tr>
					<th>대관 종료일</th>
					<td><input type="date" name="r_edate" id="rexh_edate" min="2019-11-02"></td>
				</tr>
				<tr>
					<th>전시 시각</th>
					<td>
						<select name="r_opentime_h" id="rexh_opentime_h">
							<%for(int i=0; i<=24;i++){ %>
								<option><%=i%></option>
							<%} %>
						</select>
						시&nbsp;&nbsp;&nbsp;
						<select name="r_opentime_min" id="rexh_opentime_mim">
							<%for(int i=0; i<=60;i++){ %>
								<option><%=i%></option>
							<%} %>
						</select>
						분					
					</td>
				</tr>	
				<tr>
					<th>전시시간</th>
					<td>
						<select name="r_time_h" id="rexh_time_h">
							<%for(int i=0; i<=24;i++){ %>
								<option><%=i%></option>
							<%} %>
						</select>
						시간
						<select name="r_time_min "id="rexh_time_min">
							<%for(int i=0; i<=60;i++){ %>
								<option><%=i%></option>
							<%} %>
						</select>
						분					
					</td>
				</tr>	
				<tr>
					<th>신청서</th>
					<td><input type="file" name="r_file" id="rexh_file"></td>
				</tr>	
				<tr>
					<td colspan="2"><button type="button" id="rental_rq_exh_btn" class="rental_rq_btn">전송</button></td>
				</tr>
			</table>
		</form>
	</section>
</div>
</body>
</html>