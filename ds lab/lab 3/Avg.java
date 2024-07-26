import java.util.Scanner;
public class Avg {

    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("enter n:");
        int n=sc.nextInt();
        double sum = 0;
        for(int i=n;i<=n;i++){
        sum = sum +i;
        }
        double avg=sum/n;
        System.out.print("Avg :"+avg);
       
    }
}