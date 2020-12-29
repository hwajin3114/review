package stream;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileTest {
	public static void main(String[] args) {
//		createDir();
//		createFile();
//		dirList();
//		fileDelete();
//		fileCopy();
		fileCopy(args[0], args[1]);
	}

	// 폴더생성
	public static void createDir() {
		File dir = new File("d:/img");
		dir.mkdir();
	}

	// 파일 생성
	public static void createFile() {
		File file = new File("d:/img", "data.txt"); // 경로, 생성할 파일 명
		try {
			file.createNewFile();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static void dirList() {
		File dir = new File("d:/img");
		File[] list = dir.listFiles();
		for (File file : list) {
			System.out.println(file.getName()); // 파일 이름
//			System.out.println(file.canRead()); // 읽기 권한
//			System.out.println(file.getFreeSpace()); // 남은 공간
//			System.out.println(file.isFile()); // 안에 있는게 파일이냐
			System.out.println(file.length()); // 파일 크기
		}
	}

	// 파일 삭제
	public static void fileDelete() {
		File file = new File("d:/img/data.txt");
		file.delete();
	}

	// 파일 복사
	public static void fileCopy(String src, String tar) {
		// fileInputStream 사용
		try {
//			FileInputStream fis = new FileInputStream("d:/img/으.png"); // 복사할 파일
//			FileOutputStream fos = new FileOutputStream("d:/img/으2.png"); // 복사된 파일

			FileInputStream fis = new FileInputStream(src); // 복사할 파일
			FileOutputStream fos = new FileOutputStream(tar); // 복사된 파일

			byte[] readyBytes = new byte[100];
			int readCnt = 0; // 아래 결과 후 return 값 저장할 변수

			while ((readCnt = fis.read(readyBytes)) != -1) {
				// -1 : 출력할 결과가 더 없을 때 정지
				fos.write(readyBytes, 0, readCnt); // 0부터 readCnt까지 출력하겠다
			}
			fis.close();
			fos.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
