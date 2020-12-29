<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jquery.jsp</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	$(function() {
		// dom 객체
		var btn = document.getElementById("btn1");
		// jquery 객체
		var $btn = $("#btn1");
		// jquery 방식
		$("#btn1").on("click", function() {
			$("#result").html("jquery 변경");
		});

		/* 
			btn.innserHTML = "변경됨!!";	// dom 객체
			// jquery 객체 들
			$("#btn1").html("jquery 변경");
			$(btn).html("jquery 변경");	// dom 객체를 $()안에 넣으면 jquery 객체가 된다.
			$btn.html("jquery 변경");
		 */

		/* 
		// 자바스크립트 방식
		var btn = document.getElementById("btn1");
		btn.addEventListener("click", function() {
			var result = document.getElementById("result");
			result.innerHTML = "dom 변경됨";
		});
		 */
	});
</script>
</head>
<body>
	<button type="button" id="btn1">내용변경</button>
	<div id="result"></div>
</body>
</html>