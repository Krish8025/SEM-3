import java.util.Scanner;
public class LinearSearch {
        public static void main(String[] args) {
            Scanner sc=new Scanner(System.in);
            System.out.println("enter array size ");
            int size=sc.nextInt();
            int[] array=new int[size];
            for(int i=0;i<size;i++){
                System.out.println("enter array element");
                array[i]=sc.nextInt();
            }
            System.out.println("enter your number  ");
            int n1=sc.nextInt();
            for(int i=0;i<size;i++){
                if(array[i]==n1){
                   System.out.println("your element index is"+" "+i);
                }
            }
        }
}
