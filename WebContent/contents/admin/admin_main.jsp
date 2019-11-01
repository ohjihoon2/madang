<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<script>
$(document).ready(function(){
	//�뿤�뜑
	$('aside.amdmin_left ul li.dept01').hover(
		function() {
		$('div.dept02').slideDown();
		}
	);
});
</script>
<style>
/*怨듯넻�궗�빆*/
*{
	/*border:1px solid red;*/
	font-family:"�굹�닎�뒪�섏뼱�씪�슫�뱶";
	margin:0px;
	padding:0px;
}

div.admin_page{
	border:1px solid blue;
	width:1300px;
	height:1500px;
	margin:auto;
}

div.admin_content{
	width:70%;
	height:1400px;
	margin:auto;
	float:left;
	padding:130px 0px 0px 100px;
}


/*�궡�슜*/
	div#admin_main section{
		border:1px solid gray;
		height:300px;
		padding:50px 0px 0px 30px;
	}
	/*怨듭뿰, �쟾�떆 �븞�궡*/
	div#admin_main section:first-child article{
		display : inline-block;
		width:400px;
		height:250px;
		margin-right:40px;
		
	}
	div#admin_main section:first-child article ul {
		border:1px solid green;
		list-style-position: inside;
		padding:5px 0px 0px 10px;
		width:400px;
		height:200px;
		margin-top:20px;
		overflow:auto;
	}
	
	
	div#admin_main section table{
		width:650px;
		height:200px;
		margin:auto;
		margin-top:30px;
		border-collapse: collapse;
	}
	div#admin_main section table th{
		background-color:lightgray;
		border-bottom:1px solid gray;
	}
	
	div#admin_main section table td:first-child{
		border-bottom:1px solid gray;
		width:500px;
		padding-left:10px;
	}
	div#admin_main section table td:last-child{
		border-bottom:1px solid gray;
		text-align:center;
	}
	
</style>

</head>
<body>
<!-- 
	admin�럹�씠吏��뿉�꽌 �븯�뒗 寃�: 怨듭��궗�빆, 1:1�긽�떞, �뼵濡좊낫�룄, �씠踰ㅽ듃 洹몃━怨� 怨듭떆,�쟾�떆�뿉 ���븳 crud.
 -->
<jsp:include page="admin_left_nav.jsp"/>
	<div id="admin_main" class="admin_content">
		<section>
		 	<article>
		 		<!--�쁽�옱 吏꾪뻾以묒씤 怨듭뿰(�꽆移섎㈃ over-scroll / for臾몄궗�슜) -->	
		 		<h2>吏꾪뻾以묒씤 怨듭뿰 </h2>
		 		<h5>�뜑蹂닿린</h5>
		 		<ul>
		 			<li>
		 				李⑥씠肄뷀봽�뒪�궎 �샇�몢源띻린李⑥씠肄뷀봽�뒪�궎 �샇�몢源띻린李⑥씠肄뷀봽�뒪�궎 �샇�몢源띻린李⑥씠肄뷀봽�뒪�궎 �샇�몢源띻린李⑥씠肄뷀봽�뒪�궎 �샇�몢源띻린 (20190901~20190810)
		 			</li>
		 			<li>
		 				李⑥씠肄뷀봽�뒪�궎 �샇�몢源띻린 (20190901~20190810)
		 			</li>
		 		</ul> 
		 	</article>
		 	<article>
		 		<!--�쁽�옱 吏꾪뻾以묒씤 怨듭뿰(�꽆移섎㈃ over-scroll / for臾몄궗�슜) -->	
		 		<h2>吏꾪뻾以묒씤 �쟾�떆 </h2>
		 		<h5>�뜑蹂닿린</h5>
		 		<ul>
		 			<li>
		 				李⑥씠肄뷀봽�뒪�궎 �샇�몢源띻린 (20190901~20190810)
		 			</li>
		 			<li>
		 				李⑥씠肄뷀봽�뒪�궎 �샇�몢源띻린 (20190901~20190810)
		 			</li>
		 		</ul> 
		 	</article>
		</section>
		<section>
	 		<!-- 怨듭��궗�빆 -->
	 		<h2>怨듭��궗�빆</h2>
	 		<table>
	 			<tr>
	 				<th>�젣紐�</th>
	 				<th>�옉�꽦�씪�옄</th>
	 			</tr>
	 			<tr>
	 				<td>�삤�뒛留뚰겮�� 臾대즺�씪援�!</td>
	 				<td>2019-10-20</td>
	 			</tr>
	 			<tr>
	 				<td>�삤�뒛留뚰겮�� 臾대즺�씪援�!</td>
	 				<td>2019-10-20</td>
	 			</tr>
	 			<tr>
	 				<td>�삤�뒛留뚰겮�� 臾대즺�씪援�!</td>
	 				<td>2019-10-20</td>
	 			</tr>
	 			<tr>
	 				<td>�삤�뒛留뚰겮�� 臾대즺�씪援�!</td>
	 				<td>2019-10-20</td>
	 			</tr>
	 		</table>
	 	</section>
	 	<section>
	 	<!-- 1:1 �긽�떞 -->
	 		<h2>1:1�긽�떞</h2>
	 		<table>
	 			<tr>
	 				<th>�젣紐�</th>
	 				<th>�옉�꽦�씪�옄</th>
	 			</tr>
	 			<tr>
	 				<td>�삤�뒛留뚰겮�� 臾대즺�씪援�!</td>
	 				<td>2019-10-20</td>
	 			</tr>
	 			<tr>
	 				<td>�삤�뒛留뚰겮�� 臾대즺�씪援�!</td>
	 				<td>2019-10-20</td>
	 			</tr>
	 			<tr>
	 				<td>�삤�뒛留뚰겮�� 臾대즺�씪援�!</td>
	 				<td>2019-10-20</td>
	 			</tr>
	 			<tr>
	 				<td>�삤�뒛留뚰겮�� 臾대즺�씪援�!</td>
	 				<td>2019-10-20</td>
	 			</tr>
	 		</table>
	 	</section>
	</div>
</div>
</body>
</html>