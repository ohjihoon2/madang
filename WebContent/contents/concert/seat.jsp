<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.seatTest{
		display:inline-block;
		padding:10px 30px 0px 30px;
	}
	.h_seat{
		display:inline-block;
		
		border:1px solid red;
		padding:5px;
	}
	body {
	 	 background-image: url("http://localhost:9090/images/concert_main/소극장_seat.gif");
	 	 background-repeat: repeat-x;
	}
</style>
</head>

<%
int num =1;
int z =0;
%>
<body>
	<%-- <div class="seatTest">
		<%for(int i=1;i<7;i++){ %>
		<a href=#><span class="h_seat" id="h<%=i%>"><%=i%></span></a>
			<%for(int j=0;j<5;j++){ %>
				<a href=#><span class="h_seat" id="h<%=j%>"></span></a>
			<%} %>
				<br>
		<%} %>
	</div>
	<div class="seatTest">
		<%for(int i=0; i<6;i++) { %>
		<a href=#><span class="h_seat" id="h<%=i%>"></span></a>
			<%for(int j=0;j<9;j++){ %>
			<a href=#><span class="h_seat" id="h<%=j%>"></span></a>
			<%} %>
				<br>
		<%} %>
	</div>
	<div class="seatTest">
		<%for(int i=0;i<6;i++){ %>
		<a href=#><span class="h_seat" id="h<%=i%>"></span></a>
			<%for(int j=0;j<5;j++){ %>
				<a href=#><span class="h_seat" id="h<%=j%>"></span></a>
			<%} %>
				<br>
		<%} %>
	</div> --%>
	
	<div class="seatTest">
		<%while(z<6) {
				for(int i=1; i<7;i++) { %>
		<a href=#><span class="h_seat" id="h<%=num%>"><%=num %></span></a>
		<%num++;
				} %>
				<br>
	<%	z++;
			} %>
	</div>
	
		<!-- while(z<6) {
			for(int i=1; i<7;i++) {
				System.out.print(num);
				num++;
			}
			System.out.println();
			j++;
		} -->
	
</body>
</html>