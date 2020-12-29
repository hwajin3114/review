<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="sname" required="true"%>
<%@ attribute name="bg"%>
<!-- jsp에서 넘겨주는 bg 속성이 empty이면 yellow로 초기화 -->
<!-- 418P EL 연산자 참고, 489P JSTL -->
<c:if test="${empty bg}">
	<%-- <% bg != null && !bg.equals("") %>를 empty 하나로 표현 --%>
	<c:set var="bg" value="yellow"></c:set><!-- 변수 값 대입 -->
</c:if>
<select name="${sname}" style="background-color:${bg}">
	<option>제목</option>
	<option>내용</option>
</select>