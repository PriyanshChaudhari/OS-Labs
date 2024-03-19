public class PidManager {
    public static final int MIN_PID = 300;
    public static final int MAX_PID = 310;
    public int[][] pid_map;

    public void allocate_map() {
        pid_map = new int[MAX_PID - MIN_PID + 1][2];
        for (int i = 0; i < pid_map.length; i++) {
            pid_map[i][0] = i + MIN_PID;
        }
        System.out.println("Map allocated");
    }

    public int allocate_pid() {
        for (int i = 0; i < pid_map.length; i++) {
            if (pid_map[i][1] == 0) {
                pid_map[i][1] = 1;
                return i + MIN_PID;
            }
        }
        return -1;
    }

    public void release_pid(int pid) {
        if (pid < MIN_PID || pid > MAX_PID) {
            System.out.println("Invalid PID");
            return;
        }
        pid_map[pid - MIN_PID][1] = 0;
        System.out.println("PID " + pid + " released");
    }

    public void print_map() {
        for (int i = 0; i < pid_map.length; i++) {
            System.out.println("PID " + ": " + pid_map[i][0] + ":" + pid_map[i][1]);
        }
    }

    public static void main(String[] args) {
        PidManager pid = new PidManager();
        pid.allocate_map();
        pid.print_map();
        pid.allocate_pid();
        pid.release_pid(301);
        pid.print_map();
    }
}