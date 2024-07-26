import java.util.Scanner;

public class Replace {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("enter element of array");
        int n = sc.nextInt();
        int[] arr = new int[n];
        for(int i=0;i<n;i++){
            arr[i] = sc.nextInt(); 
        }
        System.out.println("enter first number");
        int first=sc.nextInt();
        System.out.println("enter second number");
        int second=sc.nextInt();
        int index1=0,index2=0;
        sc.close();
        for(int i=0;i<n;i++){
            if(arr[i]==first){
                index1=i;
            }
            else if(arr[i]==second){
                index2=i;
            }
        }
        System.out.println("first index = "+index1);
        System.out.println("second index = "+index2);
        for(int i=0;i<n;i++){
            System.out.println(arr[i]+" ");
        }
    }
}
