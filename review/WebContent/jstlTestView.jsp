<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- EL 안에도 EL 객체가 있다. 중요! -->

	<h3>map</h3>
	이름 : ${requestScope.map.name}
	<br> 취미 : ${requestScope.map.hobby[0]}
	<br> 전체취미 :
	<c:forEach items="${map.hobby}" var="hobby">
		${hobby},
	</c:forEach>
	<br>
	<hr>

	<!-- vo일 경우 vo의 필드명 -->
	<!-- vo에서 id 필드 자체는 private로 외부에서 접근 불가니까 getId 없으면 못 불러와 -->
	<!-- ${member.getId() }로 불러와도 된다. -->
	<h3>vo</h3>
	회원아이디: ${member.id}
	<!-- member.name의 값을 바꿔보자 -->
	<!-- request에 있는 member 객체의 값을 수정 -->
	<c:set target="${member}" property="name" value="rename" />
	<br> 회원이름: ${member.name}
	<br>
	<hr>

	<h3>list</h3>
	첫번째회원아이디: ${memberlist[0].id }
	<br> 첫번째회원이름: ${memberlist[0].name }
	<br> 전체회원 :
	<c:forEach items="${memberlist}" var="mbr">
		${mbr.name} ↔ ${mbr.id},
	</c:forEach>
	<br>
	<hr>

	<h3>session</h3>
	<!-- request랑 session에 담긴 이름이 같다. 어럴땐 어떻게 불러오나 -->
	세션의 회원이름 : ${sessionScope.member.id}
	<br>
	<hr>

	<h3>파라미터</h3>
	파라미터 role : ${param.role}
	<br>
	<hr>

	<h3>모든 헤더 정보</h3>
	요청 이전 페이지 :
	<%=request.getHeader("Referer")%>
	= ${header["Referer"] }
	<br> 브라우저 정보 : ${header["user-agent"] }
	<br>
	<hr>

	<h3>쿠키 정보</h3>
	<!-- cookie.popupYn : 쿠키 객체.  value : 쿠키 값. -->
	쿠키 : ${cookie.popupYn.value}
	<br>
	<script type="text/javascript">
		function getCookie(cname) {
			var name = cname + "=";
			var decodedCookie = decodeURIComponent(document.cookie);
			var ca = decodedCookie.split(';');
			for (var i = 0; i < ca.length; i++) {
				var c = ca[i];
				while (c.charAt(0) == ' ') {
					c = c.substring(1);
				}
				if (c.indexOf(name) == 0) {
					return c.substring(name.length, c.length);
				}
			}
			return "";
		}
		if (getCookie('popupYn') != 'n') {
			alert("광고입니다.");
		}
	</script>
	<hr>
	<h3>상품 리스트</h3>
	<c:set var="sum" value="0" />
	<!-- sum=0이랑 같은 의미 -->
	<c:forEach items="${goods}" var="price">
		<c:choose>
			<c:when test="${price>=300}">A </c:when>
			<c:when test="${price>=200}">B </c:when>
			<c:otherwise>C </c:otherwise>
		</c:choose>
		${price}<br>
		<c:set var="sum" value="${price + sum}" />
		<!-- sum += price -->
	</c:forEach>
	합계 : ${sum}<br><hr>
	<h3>직업 리스트</h3>
	<c:forTokens items="${map.job}" delims="," var="job">
		${job}<br>
	</c:forTokens>
</body>
</html>