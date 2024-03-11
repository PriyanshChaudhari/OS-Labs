import java.util.*;

public class prime {

    static void primeNumbers(int input) {
        int b, flag;
        b = input;
        System.out.println("Prime numbers less than or equals " + b + " are: ");

        for (int i = 0; i <= b; i++) {
            if (i == 1 || i == 0)
                continue;

            flag = 1;

            for (int j = 2; j <= i / 2; ++j) {
                if (i % j == 0) {
                    flag = 0;
                    break;
                }
            }

            if (flag == 1)
                System.out.print(i + "\t");
        }
        System.out.println("\n");
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int input = sc.nextInt();

        new Thread(() -> primeNumbers(input)).start();
        sc.close();
    }
}
