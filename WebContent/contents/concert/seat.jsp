<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.seat_all{
		border:1px solid blue;
		display:inline-block;
	}
	.seat_section{
		display:inline-block;
		padding:10px 30px 0px 30px;
	}
	.seat_section>span{
		display:block;
		text-align:center;
	}
	.seat_num{
		display:inline-block;
		text-align:center;
		border-radius:5px;
		border:1px solid rgb(34,34,34);
		border-bottom:10px solid rgb(34,34,34);
		width:20px;
		height:23px;
		margin:10px 0px 10px 0px;
		font-size:5pt;
	}
	body {
	 	 /* background-image: url("http://localhost:9090/images/concert_main/소극장_seat.gif");
	 	 background-repeat: repeat-x; */
	}
</style>
</head>

<body>
	<div class="seat_all">	
		<
		<div class="seat_section">
			<span>A</span>
			<%
				int num =1;
				int z =0;
				while(z<6) {
					for(int i=1; i<7;i++) { %>
			<a href=#><span class="seat_num" id="h<%=num%>"><%=num %></span></a>
			<%num++;
					} %>
					<br>
		<%	z++;
				} %>
		</div>
		<div class="seat_section">
			<span>B</span>
			<%
				num =1;
				z =0;
				while(z<6) {
					for(int i=1; i<10;i++) { %>
			<a href=#><span class="seat_num" id="h<%=num%>"><%=num %></span></a>
			<%num++;
					} %>
					<br>
		<%	z++;
				} %>
		</div>
		
		<div class="seat_section">
			<span>C</span>
			<%
				num =1;
				z =0;
				while(z<6) {
					for(int i=1; i<7;i++) { %>
			<a href=#><span class="seat_num" id="h<%=num%>"><%=num %></span></a>
			<%num++;
					} %>
					<br>
		<%	z++;
				} %>
		</div>
	</div>
</body>
</html>