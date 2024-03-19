import java.util.ArrayList;
import java.util.Scanner;

public class StatsCalculator {
    private static ArrayList<Integer> numbers = new ArrayList<>();
    private static double average;
    private static int min;
    private static int max;

    public static void main(String[] args) throws InterruptedException {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter the numbers (enter -1 to stop):");

        int num;
        while ((num = scanner.nextInt()) != -1) {
            numbers.add(num);
        }

        Thread averageThread = new Thread(new AverageCalculator());
        Thread minThread = new Thread(new MinCalculator());
        Thread maxThread = new Thread(new MaxCalculator());

        averageThread.start();
        minThread.start();
        maxThread.start();

        averageThread.join();
        minThread.join();
        maxThread.join();

        System.out.println("The average value is: " + average);
        System.out.println("The minimum value is: " + min);
        System.out.println("The maximum value is: " + max);

        scanner.close();
    }

    static class AverageCalculator implements Runnable {
        @Override
        public void run() {
            double sum = 0;
            for (int num : numbers) {
                sum += num;
            }
            average = sum / numbers.size();
        }
    }

    static class MinCalculator implements Runnable {
        @Override
        public void run() {
            min = Integer.MAX_VALUE;
            for (int num : numbers) {
                min = Math.min(min, num);
            }
        }
    }

    static class MaxCalculator implements Runnable {
        @Override
        public void run() {
            max = Integer.MIN_VALUE;
            for (int num : numbers) {
                max = Math.max(max, num);
            }
        }
    }
}
