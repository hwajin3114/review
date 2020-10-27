<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
<body>
	<div>a</div>
	<div>b</div>
	<div>c</div>
	<script type="text/javascript">
		// var div : jquery DOM 객체
		var div = document.getElementsByTagName("div"); // 배열
		//div[0].style.color = "lightcoral";
		//console.log(div[0]);
		//$(div[1]).css("color", "lightblue"); // dom 객체

		// 이름에 특수문자로 시작하는건 $, _만 가능
		var $div = $("div");
		// jquery -> DOM 객체 : get(), item(), []을 이용
		// DOM -> jquery 객체 : $(DOM 객체)로 감싸면 가능
		$div.get(0).style.color = "yellowgreen"; // 이건 jquery가 아니라 DOM 객체. 자바스크립트로 스타일 변경해야함
		$div[1].style.color = "greenyellow";
	</script>
</body>
</html>