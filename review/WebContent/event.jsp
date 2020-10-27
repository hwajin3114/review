<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button type="button" id="btn1">이벤트</button><p id="info">상세소개</p>
	<button type="button" id="btn2">이벤트2</button><p id="info2">상세소개2</p>
	<script type="text/javascript">
		// 이벤트 핸들
		//btn1.onclick = function() { info.style.display = "none"; };

		// addEventListener를 더 선호한다.
		// 하나의 이벤트만 지정가능한 위 방법과 달리 addEventListener는 이벤트 여러개를 붙일 수 있다.
		// btnHandler()로 하면 바로 실행되니까 btnHandler로 호출해야한다.
		btn1.addEventListener("click", btnHandler);
		btn2.addEventListener("click", btnHandler);
		//btn1.addEventListener("click", function() { alert("처리됨"); });
		
		// 위에 버튼 각각에 이벤트를 줬는데 이번에는 이벤트 전파를 이용해서 한줄로 처리
		document.body.addEventListener("click", function() {alert("전파");});

		function btnHandler() {
			// event.target : 클릭된 버튼
			/* if(event.target.id == "btn1") {
				info.style.display = "none";
			} else {
				info2.style.display = "none";
			} */

			// body에 태그들 사이에 공백있으면 안되니까 한줄로 만들고 해야함.
			event.target.nextSibling.style.display = "none";

			// 전파 중지도 가능하다. 해당 이벤트만 작동되고 부모쪽으로 전파안됨
			// 중지하면 각 버튼에 준 display 이벤트만 작동하고
			// 이게 없으면 (전파) 각 버튼 클릭 시 부모 이벤트(alert)도 같이 작동된다.
			event.stopPropagation();
		}
	</script>
</body>
</html>