import java.util.*;

public class fibonacci {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int n = sc.nextInt();
        int[] memo = new int[n];
        Thread t = new Thread(() -> {
            fibonacciSequence(n, memo);
            System.out.println("Fibonacci sequence of " + n + " terms: ");
            for (int i : memo) {
                System.out.print(i + "\t");
            }
            System.out.println("\n");
        });
        t.start();
        
        sc.close();
    }

    public static void fibonacciSequence(int n, int[] memo) {
        int firstTerm = 0, secondTerm = 1;
        for (int i = 0; i < n; i++) {
            if (i == 0) {
                memo[i] = firstTerm;
            } else if (i == 1) {
                memo[i] = secondTerm;
            } else {
                int nextTerm = firstTerm + secondTerm;
                memo[i] = nextTerm;
                firstTerm = secondTerm;
                secondTerm = nextTerm;
            }
        }
    }
}
