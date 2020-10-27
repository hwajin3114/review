<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	function findUsername() {
		//$("#result").load("server/ajax_info.txt");
		var param = {
			userid : userid.value
		}; // JSON 형태로도 가능. 	"userid="+userid.value; 구조를 사용해도된다.
		
/*
		//$.get(url, param, callback function, dataType)
		// callback 함수의 첫번째 변수가 결과값이다.
		$.get("server/findName.jsp", param, function(data) {
			//var obj = JSON.parse(data);
			// 끝에 dataType으로 json 해주면 파싱 안해줘도 알아서 변환해준다.
			result.innerHTML += data.name; // $("#result").html(obj.name);
		}, "json");
		// 아까 자바스크립트에서는 post 방식이 번거로웠는데 제이쿼리에서는 그냥 get->post로 변경해주면 된다.

		// 위에 dataType 지정해주는것도 귀찮다. 그럼 아래 방식을 사용하라.
		$.getJSON("server/findName.jsp", param, function(data) {
			result.innerHTML += data.name;
		});
*/

/*
		// Low-Level Interface > $.ajax
		// 옵션은 {}에 넣어준다.
		$.ajax("server/findName.jsp", {
			data: param,	// 넘겨주는 값
			dataType: "json",
			method: "get",	// 넘겨주는 타입(type/method)
			async: false,	// false:동기. true:비동기(생략가능)
			success: function(data) {	// 콜백함수. data:반환되는 결과값
				result.innerHTML += data.name;
			},
			error: function(xhr, status) {
				result.innerHTML += status;
			}
		});
*/
		// 위에 방법 말고 아래방법도 있다.
		$.ajax({
			url: "server/findName.jsp",
			data: param,	// 넘겨주는 값
			dataType: "json",
			method: "get"
		}).done(function(data) {	// success
			result.innerHTML += data.name;
		})
		  .fail(function(xhr, status) {	// error
			  result.innerHTML += status;
		  })
		  .always(function() {	// 성공, 실패 관계없이 항상
			  result.innerHTML += "무조건 실행";
		  });
		console.log("요청 시작");
	}
</script>
</head>
<body>
	<input id="userid">
	<button type="button" id="btnFind" onclick="findUsername()">검색</button>
	<div id="result">결과</div>
</body>
</html>