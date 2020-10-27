<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Thread.sleep(2000); // 2초 대기

	HashMap<String, String> map = new HashMap<>();
	map.put("choi", "최땡땡");
	map.put("park", "박땡땡");
	map.put("lee", "이땡땡");
	// 1. 넘겨받는 parameter
	String userid = request.getParameter("userid");
	//out.print(map.get(userid));	// 해당하는 userid 키의 값을 내보내준다.
	String name = map.get(userid);
%>
<%-- ""제대로 넣어줘야 파싱된다. 숫자나 불린타입은 "" 필요없다. --%>
{"result":true,"name":"<%=name %>"}