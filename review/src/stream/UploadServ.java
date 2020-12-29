package stream;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/UploadServ")
@MultipartConfig(maxFileSize = 1024 * 1024 * 2 // size of any uploaded file. 2K
		, maxRequestSize = 1024 * 1024 * 10 // overall size of all uploaded files. 10K
		, location = "d:/img", fileSizeThreshold = 1024)
public class UploadServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// 1. 게시판 이었으면 파라미터를 vo에 담고 vo.setTitle(request.getParameter("title"));
		

		// 업로드 위치를 현재 컨텍스트에 <img src="/review/image/a.jpg">
		String appPath = request.getServletContext().getRealPath("/image");
		System.out.println("appPath : " + appPath);

		for (Part part : request.getParts()) {
			// @MultipartConfig가 getParts해서 파트별로 나눠준다.
			// 단일로 올리는 거면 for문 안돌리고 바로 Part part = request.getPart("file"); 형태로 한다.
			// -> fileUpload에 multiple 없이 단일로 올리는 경우를 의미한다. 만약 multiple은 아닌데 input하는 첨부파일이 두개면 그건 multipart로 처리해줘야한다.
			String fileName = extractFileName(part);
			if (!fileName.equals("")) {
				// 파일명 중복 검사
				String uploadFile = appPath + File.separator + fileName; // 해당 파일 있는지 검사
				File renameFile = FileRenamePolicy.rename(new File(uploadFile)); // rename된 파일을 return 받는다.
				part.write(renameFile.getAbsolutePath());
				// 2. 업로드된 첨부파일 renameFile를 vo에 저장하면된다. vo.setImg(renameFile.getName());
			}
			// 3. int n = dao.insert(vo);
			// 그 BBS 프로젝트에 dao.insert 검색해서 나오는 그 사이에 넣으면 설명한것처럼 기능이될거다.
		}
	}

	private String extractFileName(Part part) {
		// part : 바운드리로 감싸지는 각 타입별 파트
		// content-disposition : 파라미터 이름(파일명)
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		// ;를 기준으로 값을 잘라서 배열에 저장
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				// = 위치를 찾아서 +2 하면 파일 이름 위치 시작점.
				return s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}
		return "";
	}

}
