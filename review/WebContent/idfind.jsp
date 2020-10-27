<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function findUsername() {
		// 1. xhr 객체 생성
		var xhttp = new XMLHttpRequest();
		// 2. 콜백함수
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4) {	// 서버 응답 완료
				// this : xhr 객체를 의미
				if (this.status == 200) { // 정상 실행
					var obj = JSON.parse(this.responseText);
					//document.getElementById("result").innerHTML += this.responseText;
					document.getElementById("result").innerHTML += obj.name;
				} else {	// 오류
					document.getElementById("result").innerHTML = "error";
				}
			} else { // 진행중
				document.getElementById("result").innerHTML = "로딩중";
			}
		};
		// 3. 서버 연결. true : 비동기 여부. default가 true임(false:동기)
		var param = "userid=" + userid.value;
		// GET 방식일 경우 URL 뒤에 파라미터를 보내준다.
		//xhttp.open("GET", "server/findName.jsp?" + param, false);
		
		// POST 방식 S
		xhttp.open("POST", "server/findName.jsp", true);
		xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		// POST 방식 E
		
		// 4. 요청 시작
		//xhttp.send();
		// POST 방식일 경우 send할 떄 파라미터를 보내준다.
		xhttp.send(param);
		console.log("요청 시작");	// 비동기라서 바로 실행된다.
		// 동기방식은 open, send 보내고 요청에 대한 응답이 와야 실행된다.
	}
</script>
</head>
<body>
	<input id="userid">
	<button type="button" id="btnFind" onclick="findUsername()">검색</button>
	<div id="result">결과</div>
</body>
</html>