<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlTest.jsp</title>
</head>
<body>
	<%
		ArrayList<String> list = new ArrayList<>();
	list.add("딸기");
	list.add("포도");
	list.add("바나나");
	request.setAttribute("fruit", list);
	/* request에 담아둬야 불러와서 사용 가능 */
	%>
	<!-- EL -->
	${fruit[0]}
	<hr>
	<!-- 총 갯수를 구하고싶다 : fn 태그 사용 -->
	총 과일 수 : ${fn:length(fruit)}
	<br>
	<!-- items:원소 갯수만큼 돌릴때 / begin, end : 지정한 횟수만큼 돌릴때 -->
	<!-- varStatus : 상태 변수. index : 0부터. count: 반복 횟수. 1부터 -->
	<c:forEach items="${fruit}" var="f" varStatus="s">
		<!-- request.setAttribute랑 c:set 태그랑 같다. | scope : 범위. session에 받을거면 session. application에 할거면 application. 생략하면 default page. request는 request -->
		<c:set var="color" value="yellow" />
		<c:if test="${s.index%2==0 }">
			<c:set var="color" value="lightpink" />
		</c:if>
		<div style="background-color:${color}; width: 100px;">${s.index}:
			${f}</div>
	</c:forEach>
</body>
</html>