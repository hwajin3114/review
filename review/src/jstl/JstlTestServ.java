package jstl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JstlTestServ")
public class JstlTestServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Map
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("name", "홍길동");
		map.put("hobby", new String[] { "요리", "독서", "영화" });
		map.put("job", "개발, 편집자, 디자이너");
		request.setAttribute("map", map);

		// vo
		request.setAttribute("member", new MemberVO("lee", "리쟈몽"));
		request.getSession().setAttribute("member", new MemberVO("jamong", "쟈몽"));

		// List
		ArrayList<MemberVO> list = new ArrayList<>();
		list.add(new MemberVO("lee", "파이리"));
		list.add(new MemberVO("kim", "김말이"));
		request.setAttribute("memberlist", list);

		// 쿠키 저장
		Cookie cookie = new Cookie("popupYn", "n");
		// 쿠키 유지 시간 지정(초단위로지정). 안해주면 브라우저 창 닫기면서 없어진다.
		cookie.setMaxAge(60 * 60 * 24);
		// 쿠키 가져갈 수 있는 경로 지정. / : localhost이 포함된 모든 경로들이 접근 가능
		cookie.setPath("/");
		response.addCookie(cookie); // 쿠키가 저장되는 위치는 서버가 아니라 클라이언트(브라우저)라서 응답에 실어 보낸다.

		request.setAttribute("goods", new Integer[] { 100, 200, 300 });

		request.getRequestDispatcher("/jstlTestView.jsp").forward(request, response);
	}
}
