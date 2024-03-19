public class TestPIDManager {
    public static void main(String[] args) {
        PidManager pid = new PidManager();
        pid.allocate_map();
        Thread[] threads = new Thread[5];
        for (int i = 0; i < threads.length; i++) {
            threads[i] = new Thread(new Runnable() {
                public void run() {
                    int temp_pid = pid.allocate_pid();
                    System.out.println("PID " + temp_pid + " allocated");
                    try {
                        Thread.sleep((long) (Math.random() * 1000));
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    pid.release_pid(temp_pid);
                }
            });
            threads[i].start();
        }
    }
}
