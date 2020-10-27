<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.back {
	font-size: 1.2em;
	background-color: lightblue;
}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(function() {	// page load function
		$("td").bind("click", function() {
			// parent를 하면 tr 태그 전체 색이 변함
			// $(this).parent().css("backgroundColor", "lightcoral");
			// parents : 부모, 조부모 .. 다 포함

			// siblings : 내 형제들
			// $(this).siblings().css("backgroundColor", "lightcoral");
			
			// td 눌러서 div 찾기
			//$(this).closest("table").prev().css("backgroundColor", "lightcoral");
			
			// 클릭한 td의 행의 첫번쨰 td
			//$(this).parent().children().first().css("backgroundColor", "lightcoral");
			
			// 내가 선택한 td의 이전 형재들 中 맨 앞 td
			//$(this).prevAll().last().css("backgroundColor", "lightcoral");
			
			// 내가 클릭한 td만 back 클래스 스타일 적용
			//$(this).addClass("back");
			
			// toggleClass : 한번 클릭하면 스타일 적용. 한번 더 누르면 스타일 해제
			//$(this).toggleClass("back");
			
			// 클릭한 행의 값을 다 읽어내고 싶다.
			var tds = $(this).parent().children();
			var str = "";
			for(i=0; i<tds.length; i++) {
				// tds[i] : DOM 객체
				// $(tds[i])로 하면 jquery 객체가 된다.
				str += $(tds[i]).text();
			}
			alert(str);
			
			str = "";
			tds.each(function(idx) {
				str += $(this).text();
			});
			alert(str);
		});
	});
</script>
</head>
<body>
	<div>탐색 선택자</div>
	<table border="1" style="border-collapse: collapse;">
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		<tr>
			<td>4</td>
			<td>5</td>
			<td>6</td>
		</tr>
		<tr>
			<td>7</td>
			<td>8</td>
			<td>9</td>
		</tr>
	</table>
</body>
</html>