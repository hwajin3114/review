
public class Task1 extends Thread {

	@Override
	public void run() {
		for (int i = 0; i < 100; i++) {
			System.out.println(i);
			try {
				//0.5초간 대기. 얘는 Thread를 직접 상속받아서 바로 sleep 메소드 사용 가능
				sleep(500);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}

}
