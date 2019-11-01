<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://211.63.89.214:9090/js/jquery-3.4.1.min.js"></script>
<script>
	$(document).ready(function(){
		$("select#rental_rq_dis_select").change(function(){
			var select = $(this).val();
			if(select == "공연"){
				$("section#rental_rq_con_form").css("display","block");
				$("section#rental_rq_exh_form").css("display","none");
			}else if(select == "전시"){
				$("section#rental_rq_con_form").css("display","none");
				$("section#rental_rq_exh_form").css("display","block");
			}else{
				$("section#rental_rq_con_form").css("display","none");
				$("section#rental_rq_exh_form").css("display","none");
			}
		});
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
	
	div#rental_rq_form section#rental_rq_con_form,
	div#rental_rq_form section#rental_rq_exh_form{
		display:none;
		border-radius:20px;
		background-color:rgb(230,230,230);
		padding-top:10px;
		
	}


	div#rental_rq_form section form table,
	div#rental_rq_form section#rental_rq_dis_form table{
		width:90%;
		margin:auto;
	}
	div#rental_rq_form section form table th {
		width:120px;
		height:40px;
		text-align:left;
		padding-left:20px;
	}
	
	div#rental_rq_form section#rental_rq_dis_form table th{
		width:120px;
		height:60px;
		text-align:left;
		padding-left:20px;
		
	}
	div#rental_rq_form section#rental_rq_dis_form table select{
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
	<section id="rental_rq_dis_form">
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
	<section id="rental_rq_con_form">
		<form action="#" method="post" name="rental_rq_con_form" enctype="multipart/form-data">
			<input type="hidden" name="r_case" value="concert"><!-- 공연선택했다는걸 알림 -->
			<table>
				<tr>
					<th>공연 제목</th>
					<td><input type="text" name="r_title"></td>
				</tr>	
				<tr>
					<th>대관 장소</th>
					<td><input type="text" name="r=place" value="베토벤홀"></td>
				</tr>		
				<tr>
					<th>대관 시작일</th>
					<td><input type="date" name="r_sdate"></td>
				</tr>
				<tr>
					<th>대관 종료일</th>
					<td><input type="date" name="r_edate"></td>
				</tr>
				<tr>
					<th>공연시각</th>
					<td>
						<select name="r_opentime_h">
							<%for(int i=0; i<=24;i++){ %>
								<option><%=i%></option>
							<%} %>
						</select>
						시&nbsp;&nbsp;&nbsp;
						<select name="r_opentime_min">
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
						<select name="r_time_h">
							<%for(int i=0; i<=24;i++){ %>
								<option><%=i%></option>
							<%} %>
						</select>
						시간
						<select name="r_time_min">
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
						<select name="r_rhtime_h">
							<%for(int i=0; i<=24;i++){ %>
								<option><%=i%></option>
							<%} %>
						</select>
						시간
						<select name="r_rhtime_min">
							<%for(int i=0; i<=60;i++){ %>
								<option><%=i%></option>
							<%} %>
						</select>
						분					
					</td>
				</tr>		
				<tr>
					<th>신청서</th>
					<td><input type="file" name="r_file"></td>
				</tr>
				<tr>	
					<td colspan="2"><button type="button" id="rental_rq_con_btn">전송</button></td>
				</tr>
			</table>
		</form>
	</section>
	<!-- 전시 대관 폼 -->
	<section id="rental_rq_exh_form">
		<form>
			<input type="hidden" name="r_case" value="exhibition"><!-- 전시선택했다는걸 알림 -->
						<table>
				<tr>
					<th>전시 제목</th>
					<td><input type="text" name="r_title"></td>
				</tr>	
				<tr>
					<th>대관 장소</th>
					<td><input type="text" name="r=place" value="피카소홀"></td>
				</tr>		
				<tr>
					<th>대관 시작일</th>
					<td><input type="date" name="r_sdate"></td>
				</tr>
				<tr>
					<th>대관 종료일</th>
					<td><input type="date" name="r_edate"></td>
				</tr>
				<tr>
					<th>전시 시각</th>
					<td>
						<select name="r_opentime_h">
							<%for(int i=0; i<=24;i++){ %>
								<option><%=i%></option>
							<%} %>
						</select>
						시&nbsp;&nbsp;&nbsp;
						<select name="r_opentime_min">
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
						<select name="r_time_h">
							<%for(int i=0; i<=24;i++){ %>
								<option><%=i%></option>
							<%} %>
						</select>
						시간
						<select name="r_time_min">
							<%for(int i=0; i<=60;i++){ %>
								<option><%=i%></option>
							<%} %>
						</select>
						분					
					</td>
				</tr>	
				<tr>
					<th>신청서</th>
					<td><input type="file" name="r_file"></td>
				</tr>	
				<tr>
					<td colspan="2"><button type="button" id="rental_rq_exh_btn">전송</button></td>
				</tr>
			</table>
		</form>
	</section>
</div>
</body>
</html>