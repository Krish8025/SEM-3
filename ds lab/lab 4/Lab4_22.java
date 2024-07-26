import java.util.Scanner;
public class Lab4_22 {

    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("enter array size ");
        int size=sc.nextInt();
        int[] array=new int[size];
        for(int i=0;i<size;i++){
            System.out.println("enter array element");
            array[i]=sc.nextInt();
        }
        System.out.println("enter index of number ");
        int index=sc.nextInt();
        int[] newArray =new int[size+1];
        for(int i=0;i<index;i++){
            newArray[i]=array[i];
        }
        for(int i=index+1;i<array.length;i++){
            newArray[i-1]=array[i];
        }
        System.out.println("new array");
        for(int i=0;i<size-1;i++){
           System.out.println(newArray[i]+" ");
        }
    }
}