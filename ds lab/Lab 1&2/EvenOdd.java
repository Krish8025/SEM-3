import java.util.*;
public class EvenOdd{
    public static void main(String[] args){
     Scanner sc = new Scanner(System.in);
        int r;
        System.out.println("Enter no.");
        r = sc.nextInt();

        if(r%2==0){
             System.out.println("Enter no.is even");
        }
        else{
             System.out.println("Enter no. is odd");
        }
    }
}