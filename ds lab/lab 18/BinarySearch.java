import java.util.Scanner;

public class BinarySearch {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter size of Array :");
        int n = sc.nextInt();
        int[] arr = new int [n];
        for (int i = 0; i < arr.length; i++) {
            System.out.print("Enter Value Of A[" + i + "] :");
            arr[i] = sc.nextInt();
        }
        System.out.println("Enter Key to Find :");
        int key = sc.nextInt();
        sc.close();
        int low = 0, high = arr.length - 1;
        while (low <= high) {
            int mid = (high + low) / 2;
            if (arr[mid] == key)
                System.out.println("Found at " + mid);
            if (arr[mid] < key)
                low = mid + 1;
            else
                high = mid - 1;
        }
    }
}