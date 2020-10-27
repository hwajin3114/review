<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(function() {
		// 모든 li 태그 중에서 첫번째
		//$("li:first").css("color", "lightcoral");
		// 첫번째 자식들
		$("li:first-child").css("color", "lightblue");
		// 두번째 li들
		$("li:nth-child(2)").css("color", "lightgreen");
	});
</script>
</head>
<body>
	<h3>필터링</h3>
	<ul>
		<li>자바</li>
		<li>JSP</li>
	</ul>
	<ul>
		<li>스프링</li>
		<li>egov</li>
	</ul>
</body>
</html>