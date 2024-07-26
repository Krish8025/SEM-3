import java.util.Scanner;
class Student_Detail{
    int Enrollment_no;
    String name;
    int semester;
    double cpi;

    void getDetail(){
        Scanner sc =new Scanner(System.in);
        System.out.println("enter Enrollment");
        Enrollment_no=sc.nextInt();
        System.out.println("enter Name");
        name=sc.next();
        System.out.println("enter semester");
        semester=sc.nextInt();
        System.out.println("enter cpi");
        cpi=sc.nextDouble();
        sc.close();
    }
    void displayDetail(){
        System.out.println("Enrollment_no : "+Enrollment_no);
        System.out.println("name : "+name);
        System.out.println("semester : "+semester);
        System.out.println("cpi : "+cpi);
    }

}
public class Studentdetail {
    public static void main(String[] args) {
        Lab6_34 e1=new Lab6_34();
        e1.getDetail();
        e1.displayDetail();
    }
    
}
