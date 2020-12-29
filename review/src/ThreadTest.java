//
//public class ThreadTest {
//	public static void main(String[] args) {
//		// 이렇게 하면 for문이 순차적으로 실행되는데
//		// 나는 두개의 for문이 동시에 실행됐으면 한다.
//		// main 스레드(무조건 존재)가 하나 돌아가고 있다. 그리고 여기에 새로운 스레드를 생성해서 추가로 일을 맡길수있다.
////		for (int i = 0; i < 1000; i++) {
////			System.out.println(i);
////		}
//		
//		Object obj;
//		obj.
//		
////		new Task1().start();
////		new Thread(new Task2()).start();
//		new Thread(() -> {
//			for (int i = 2000; i < 2500; i++) {
//				System.out.println(i);
//				try {
//					Thread.sleep(500);
//				} catch (InterruptedException e) {
//					e.printStackTrace();
//				}
//			}
//		}).start(); // Runnable를 상속받아 만들어진 interface. 람다식
//	}
//}
