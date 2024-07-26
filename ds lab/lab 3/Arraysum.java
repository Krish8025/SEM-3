import java.util.Scanner;
public class Arraysum {

    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("enter m:");
        int m=sc.nextInt();
        System.out.println("enter n:");
        int n=sc.nextInt();
       int sum = 0;
       for(int i=m;i<=n;i++){
        sum = sum +i;
       }
       System.out.println("sum is :"+sum);
       sc.close();
    }
}