<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input id="txtFruit">
	<button id="btn">추가</button>
	<div id="result">
		<p class="pf">사과</p>
		<p class="pf">딸기</p>
	</div>
	<script type="text/javascript">
		result.addEventListener("click", mouseHandler);

		function mouseHandler() {
			// 부모 태그에 위임해서 이벤트를 걸면 this, event.target 값이 달라지고
			// 그냥 자기 자신이 이벤트하면 두개의 값이 같다.
			console.log("this : "+this);
			console.log("event.target : "+event.target);
			event.target.style.color = "red";
		}

		btn.addEventListener("click", function() {
			result.innerHTML += "<p class='pf'>" + txtFruit.value + "</p>";
			txtFruit.value = "";
		});
	</script>
</body>
</html>