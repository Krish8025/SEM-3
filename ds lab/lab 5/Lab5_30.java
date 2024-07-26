import java.util.Scanner;

public class Lab5_30 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int[][] arr1 = new int[2][2];
        int[][] arr2 = new int[2][2];

        System.out.println("Enter elements for the first matrix (2x2):");
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                System.out.print("arr1[" + i + "][" + j + "]: ");
                arr1[i][j] = sc.nextInt();
            }
        }

        System.out.println("Enter elements for the second matrix (2x2):");
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                System.out.print("arr2[" + i + "][" + j + "]: ");
                arr2[i][j] = sc.nextInt();
            }
        }
        sc.close();

        int[][] result = new int[2][2];
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                result[i][j] = arr1[i][j] + arr2[i][j];
            }
        }

        System.out.println("Resultant matrix after addition:");
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                System.out.print(result[i][j] + " ");
            }
            System.out.println(); 
        }
    }
}