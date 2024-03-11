import java.util.Scanner;

public class fibonacci2{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int n = sc.nextInt();
        int[] memo = new int[n + 1];

        Thread t1 = new Thread(() -> {
            fibonacciSequence(n, memo);
        });

        t1.start();
        
        try {
            t1.join();
            System.out.println("Fibonacci sequence of " + n + " terms: ");
            for(int i = 0; i < n; i++) {
                System.out.print(memo[i] + "\t");
            }
            System.out.println("\n");
        } catch (Exception e) {
            e.printStackTrace();
        }
        sc.close();
    }

    public static void fibonacciSequence(int n, int[] memo) {
        int firstTerm = 0, secondTerm = 1;
        
        if(n >= 0) {memo[0] = firstTerm;}
        
        if(n >= 1) {memo[1] = secondTerm;}

         for(int i=2; i<n; i++){
             int nextTerm=firstTerm+secondTerm;
             memo[i]=nextTerm;
             firstTerm=secondTerm;
             secondTerm=nextTerm;
         }
    }
}
