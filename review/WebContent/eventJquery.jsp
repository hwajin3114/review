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
		<span>test</span>
		<p class="pf">사과</p>
		<p class="pf">딸기</p>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript">
		// 아래처럼 하면 해당 클래스 찾아서 알아서 for문 돌려진다. addEventListener 대신 bind 사용
		//$(".pf").bind("click", mouseHandler);
		
		// 그룹이벤트로 변경
		// bind 대신 on을 사용하는 이유? bind를 하면 나는 p태그만 이벤트 하고싶은데 부모에도 전파가 되어서 부모도 클릭이벤트먹힘..\
		// on을 하면 내가 지정한 타겟이 있을 경우 그 타겟이만 이벤트가 지정된다. 타겟이 없을경우 bind와 동일
		$("#result").on("click",".pf", mouseHandler);
		
		$("#btn").bind("click", function() {
			$("#result").append("<p class='pf'>" + txtFruit.value + "</p>");
			txtFruit.value = "";
		});

		function mouseHandler() {
			// 부모 태그에 위임해서 이벤트를 걸면 this, event.target 값이 달라지고
			// 그냥 자기 자신이 이벤트하면 두개의 값이 같다.
			$(event.target).css("color", "lightcoral");
		}
	</script>
</body>
</html>