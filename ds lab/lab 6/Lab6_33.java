import java.util.Scanner;
public class Lab6_33{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter the first number: ");
        int a = sc.nextInt();
        System.out.print("Enter the second number: ");
        int b = sc.nextInt();
        swap(a,b);
        sc.close();
    }
        public static void swap(int a, int b){
            System.out.println("Before swapping: "+a+","+b);
            int temp = a;
            a = b;
            b = temp;                               
            System.out.println("After swapping: "+a+","+b);
        }
}