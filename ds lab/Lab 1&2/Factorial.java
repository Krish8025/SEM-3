import java.util.*;
public class Factorial{
    static int fec(int f){
        if(f==0 || f==1){
            return f*1;
        }
        else{
            return f*fec(f-1);
        }
    }
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        
        int f;
        System.out.println("Enter your no. for find factorial");

        f = sc.nextInt();
        int ans = fec(f);
        // int ans = 1;

        // for(int i=1;i<=f;i++){
        //     ans = ans*i;
        // }

         System.out.println("factorial of"+f+"is"+ans);
    }
}