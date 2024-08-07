import java.util.Scanner;
public class BubbleSort {
    public static void main(String[] args) {
        Scanner sc =new Scanner(System.in);
        System.out.print("Enter size of Array :");
        int n = sc.nextInt();
        int[] arr = new int [n];
        for (int i = 0; i < arr.length; i++) {
            System.out.print("Enter Value Of A[" + i + "] :");
            arr[i] = sc.nextInt();
        }
        for(int i=0;i<n-1;i++){
            for(int j=0;j<n-i-1;j++){
                if(arr[j]>arr[j+1]){
                    
                    int c=arr[j];
                    arr[j]=arr[j+1];
                    arr[j+1]=c;
                }
            }
        }
        for (int i = 0; i < arr.length; i++) {
            System.out.print(arr[i]+" ");
        }
    }
}
